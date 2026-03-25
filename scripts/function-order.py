#!/usr/bin/env python3

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SPLITS = ROOT / "config/GM8E01_00/splits.txt"
SYMBOLS = ROOT / "config/GM8E01_00/symbols.txt"
DTK = ROOT / "build/tools/dtk"


def find_text_range(tu_path):
    tu_header = f"{tu_path}:"
    in_tu = False
    start = None
    end = None

    with SPLITS.open() as f:
        for raw_line in f:
            line = raw_line.rstrip("\n")
            if not line:
                continue

            if not raw_line.startswith((" ", "\t")):
                in_tu = line == tu_header
                continue

            if not in_tu:
                continue

            match = re.match(r"\s*\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
            if match:
                start = int(match.group(1), 16)
                end = int(match.group(2), 16)
                break

    if start is None or end is None:
        raise SystemExit(f"Failed to find .text range for TU: {tu_path}")

    return start, end


def find_symbols_in_range(start, end):
    out = []
    pattern = re.compile(
        r"^(?P<name>[^=\s]+)\s*=\s*\.text:0x(?P<addr>[0-9A-Fa-f]+);\s*//\s*(?P<meta>.*)$"
    )

    with SYMBOLS.open() as f:
        for raw_line in f:
            line = raw_line.rstrip("\n")
            match = pattern.match(line)
            if not match:
                continue

            meta = match.group("meta")
            if "type:function" not in meta:
                continue

            addr = int(match.group("addr"), 16)
            if start <= addr < end:
                out.append((addr, match.group("name")))

    out.sort()
    out.reverse()
    return out


def demangle(symbol):
    try:
        result = subprocess.run(
            [str(DTK), "demangle", symbol],
            check=True,
            capture_output=True,
            text=True,
            cwd=ROOT,
        )
    except FileNotFoundError:
        raise SystemExit(f"Missing demangler: {DTK}")
    except subprocess.CalledProcessError:
        return symbol

    return result.stdout.strip() or symbol


def main():
    if len(sys.argv) != 2:
        raise SystemExit(f"Usage: {Path(sys.argv[0]).name} <TU path>")

    tu_path = sys.argv[1]
    start, end = find_text_range(tu_path)
    symbols = find_symbols_in_range(start, end)

    for _, symbol in symbols:
        print(demangle(symbol))


if __name__ == "__main__":
    main()
