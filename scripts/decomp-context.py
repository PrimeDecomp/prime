#!/usr/bin/env python3

"""
Function context gatherer for decomp work.

Collects everything an agent needs to work on matching a function:
source code, objdiff status/diff, Ghidra decompile, and debug map info.

Usage:
  python scripts/decomp-context.py -u main/MetroidPrime/CEntity -f AcceptScriptMsg
  python scripts/decomp-context.py -u main/MetroidPrime/CIOWinManager -f DistributeOneMessage --no-ghidra
"""

import argparse
import json
import os
import re
import subprocess
import sys
from typing import Any, Dict, List, Optional, Tuple

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = os.path.abspath(os.path.join(script_dir, ".."))

OBJDIFF_CLI = os.environ.get("OBJDIFF_CLI", "objdiff-cli")
OBJDIFF_JSON = os.path.join(root_dir, "objdiff.json")
DTK = os.path.join(root_dir, "build", "tools", "dtk")
MAP_FILE = os.path.join(root_dir, "orig", "MetaforceCWD.MAP")
SYMBOLS_FILE = os.path.join(root_dir, "config", "GM8E01_00", "symbols.txt")
GHIDRA_PROJECT = "prime"


def load_project_config() -> Dict[str, Any]:
    """Load objdiff.json."""
    with open(OBJDIFF_JSON) as f:
        return json.load(f)


def find_unit(config: Dict[str, Any], unit_name: str) -> Optional[Dict[str, Any]]:
    """Find a unit in the project config."""
    for unit in config.get("units", []):
        if unit["name"] == unit_name:
            return unit
    return None


def run_objdiff(unit_name: str) -> Optional[Dict[str, Any]]:
    """Run objdiff-cli diff and return parsed JSON."""
    result = subprocess.run(
        [OBJDIFF_CLI, "diff", "-u", unit_name, "-o", "-", "--format", "json"],
        capture_output=True,
        cwd=root_dir,
    )
    if result.returncode != 0:
        return None
    try:
        return json.loads(result.stdout)
    except json.JSONDecodeError:
        return None


def find_symbol_in_diff(
    diff_data: Dict[str, Any], func_name: str
) -> Tuple[Optional[Dict], Optional[Dict]]:
    """Find a symbol by name in the diff data. Returns (left_sym, right_sym).

    Uses target_symbol as a direct index into the other side's symbol array.
    """
    left_syms = diff_data.get("left", {}).get("symbols", [])
    right_syms = diff_data.get("right", {}).get("symbols", [])

    pattern = func_name.lower()

    for sym in left_syms:
        name = sym.get("demangled_name", sym.get("name", ""))
        mangled = sym.get("name", "")
        if pattern in name.lower() or pattern in mangled.lower():
            right_sym = None
            ts = sym.get("target_symbol")
            if ts is not None and ts < len(right_syms):
                right_sym = right_syms[ts]
            return sym, right_sym

    for sym in right_syms:
        name = sym.get("demangled_name", sym.get("name", ""))
        mangled = sym.get("name", "")
        if pattern in name.lower() or pattern in mangled.lower():
            left_sym = None
            ts = sym.get("target_symbol")
            if ts is not None and ts < len(left_syms):
                left_sym = left_syms[ts]
            return left_sym, sym

    return None, None


def lookup_symbol_address(mangled_name: str) -> Optional[str]:
    """Look up a symbol's address from symbols.txt."""
    if not os.path.exists(SYMBOLS_FILE):
        return None
    pattern = re.compile(
        r"^" + re.escape(mangled_name) + r"\s*=\s*\.(\w+):0x([0-9A-Fa-f]+)"
    )
    with open(SYMBOLS_FILE) as f:
        for line in f:
            m = pattern.match(line.strip())
            if m:
                return m.group(2)
    return None


def search_symbols_file(name: str) -> List[Tuple[str, str, str]]:
    """Search symbols.txt for entries matching a name. Returns [(mangled, section, address)]."""
    if not os.path.exists(SYMBOLS_FILE):
        return []
    results = []
    pattern = name.lower()
    with open(SYMBOLS_FILE) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("//"):
                continue
            if pattern in line.lower():
                m = re.match(r"^(\S+)\s*=\s*\.(\w+):0x([0-9A-Fa-f]+)", line)
                if m:
                    results.append((m.group(1), m.group(2), m.group(3)))
    return results


def ghidra_decompile(address: str) -> Optional[str]:
    """Decompile a function at the given address using Ghidra CLI."""
    try:
        result = subprocess.run(
            ["ghidra", "decompile", "--project", GHIDRA_PROJECT, f"0x{address}", "--json"],
            capture_output=True,
            timeout=30,
        )
        if result.returncode != 0:
            return None
        data = json.loads(result.stdout)
        if data and isinstance(data, list) and len(data) > 0:
            return data[0].get("code", "")
        return None
    except (subprocess.TimeoutExpired, FileNotFoundError, json.JSONDecodeError):
        return None


def strip_ansi(text: str) -> str:
    """Remove ANSI escape codes from text."""
    return re.sub(r"\x1b\[[0-9;]*m", "", text)


def dtk_map_symbol(mangled_name: str) -> Optional[str]:
    """Look up a symbol in the debug map using dtk."""
    if not os.path.exists(DTK) or not os.path.exists(MAP_FILE):
        return None
    try:
        result = subprocess.run(
            [DTK, "map", "symbol", MAP_FILE, mangled_name],
            capture_output=True,
            cwd=root_dir,
            timeout=15,
        )
        if result.returncode != 0:
            return None
        # dtk writes info/warnings to stderr, results to stdout
        output = result.stdout.decode("utf-8", errors="replace")
        return strip_ansi(output).strip()
    except (subprocess.TimeoutExpired, FileNotFoundError):
        return None


def dtk_map_entries(tu_name: str) -> Optional[str]:
    """List all entries for a TU in the debug map."""
    if not os.path.exists(DTK) or not os.path.exists(MAP_FILE):
        return None
    try:
        result = subprocess.run(
            [DTK, "map", "entries", MAP_FILE, tu_name],
            capture_output=True,
            cwd=root_dir,
            timeout=15,
        )
        if result.returncode != 0:
            return None
        output = result.stdout.decode("utf-8", errors="replace")
        return strip_ansi(output).strip()
    except (subprocess.TimeoutExpired, FileNotFoundError):
        return None


def tu_name_from_unit(unit: Dict[str, Any]) -> str:
    """Derive the TU .o name from a unit's metadata."""
    source = unit.get("metadata", {}).get("source_path", "")
    if source:
        # src/MetroidPrime/CEntity.cpp -> CEntity.o
        base = os.path.splitext(os.path.basename(source))[0]
        return f"{base}.o"
    # Fallback: derive from unit name
    name = unit["name"]
    base = name.rsplit("/", 1)[-1]
    return f"{base}.o"


def print_section(title: str, content: str) -> None:
    """Print a labeled section."""
    print(f"\n{'='*60}")
    print(f"  {title}")
    print(f"{'='*60}")
    print(content)


def main():
    parser = argparse.ArgumentParser(
        description="Gather context for decomp function matching"
    )
    parser.add_argument(
        "-u", "--unit", required=True, help="Unit name (e.g. main/MetroidPrime/CEntity)"
    )
    parser.add_argument(
        "-f", "--function", required=True, help="Function name to look up"
    )
    parser.add_argument(
        "--no-source", action="store_true", help="Skip source file output"
    )
    parser.add_argument(
        "--no-ghidra", action="store_true", help="Skip Ghidra decompile"
    )
    parser.add_argument(
        "--no-map", action="store_true", help="Skip debug map lookups"
    )
    args = parser.parse_args()

    config = load_project_config()
    unit = find_unit(config, args.unit)
    if not unit:
        print(f"Unit not found: {args.unit}", file=sys.stderr)
        sys.exit(1)

    meta = unit.get("metadata", {})
    source_path = meta.get("source_path", "")

    # === Source File ===
    if not args.no_source and source_path:
        full_path = os.path.join(root_dir, source_path)
        if os.path.exists(full_path):
            with open(full_path) as f:
                source = f.read()
            print_section(f"Source: {source_path}", source)
        else:
            print(f"\nSource file not found: {full_path}", file=sys.stderr)

    # === objdiff Status ===
    diff_data = run_objdiff(args.unit)
    if diff_data:
        left_sym, right_sym = find_symbol_in_diff(diff_data, args.function)

        if left_sym or right_sym:
            sym = left_sym or right_sym
            name = sym.get("demangled_name", sym.get("name", "?"))
            mangled = sym.get("name", "?")
            mp = sym.get("match_percent")
            size = int(sym.get("size", "0"))

            status_lines = []
            status_lines.append(f"Function: {name}")
            status_lines.append(f"Mangled:  {mangled}")
            status_lines.append(f"Size:     {size} bytes")
            if mp is not None:
                status_lines.append(f"Match:    {mp:.1f}%")
            else:
                status_lines.append("Match:    N/A (not in both sides)")

            # Quick diff summary
            if left_sym and right_sym:
                left_insts = left_sym.get("instructions", [])
                right_insts = right_sym.get("instructions", [])
                n_mismatch = sum(
                    1
                    for inst in left_insts
                    if inst.get("diff_kind", "") != ""
                )
                status_lines.append(
                    f"Instructions: {max(len(left_insts), len(right_insts))} "
                    f"({n_mismatch} mismatched)"
                )

            print_section("objdiff Status", "\n".join(status_lines))

            # Run decomp-diff.py for the actual diff if not 100%
            if mp is not None and mp < 100.0:
                result = subprocess.run(
                    [
                        sys.executable,
                        os.path.join(script_dir, "decomp-diff.py"),
                        "-u", args.unit,
                        "-d", args.function,
                    ],
                    capture_output=True,
                    cwd=root_dir,
                )
                if result.returncode == 0:
                    print_section("Instruction Diff", result.stdout.decode())
        else:
            print(f"\nFunction '{args.function}' not found in objdiff data for {args.unit}")
            # List available symbols
            left_syms = diff_data.get("left", {}).get("symbols", [])
            right_syms = diff_data.get("right", {}).get("symbols", [])
            print("Available functions:")
            seen = set()
            for sym in left_syms + right_syms:
                if "instructions" in sym:
                    name = sym.get("demangled_name", sym.get("name", "?"))
                    if name not in seen:
                        seen.add(name)
                        print(f"  {name}")
    else:
        print(f"\nFailed to run objdiff for {args.unit}", file=sys.stderr)

    # === Ghidra Decompile ===
    if not args.no_ghidra and (left_sym or right_sym):
        sym = left_sym or right_sym
        mangled = sym.get("name", "")

        # Try to find address from symbols.txt
        addr = lookup_symbol_address(mangled)

        if not addr:
            # Try searching symbols.txt
            matches = search_symbols_file(args.function)
            if matches:
                # Pick the first function match
                addr = matches[0][2]
                mangled = matches[0][0]

        if addr:
            decomp = ghidra_decompile(addr)
            if decomp:
                print_section(f"Ghidra Decompile (0x{addr})", decomp)
            else:
                print(f"\nGhidra decompile failed for 0x{addr}")
        else:
            print(f"\nCould not find address for {mangled} in symbols.txt")

    # === Debug Map Info ===
    if not args.no_map and (left_sym or right_sym):
        sym = left_sym or right_sym
        mangled = sym.get("name", "")

        # Symbol lookup
        map_info = dtk_map_symbol(mangled)
        if map_info:
            print_section(f"Debug Map: {mangled}", map_info)
        else:
            # Try searching for the function name in the symbols file
            # to find the right mangled name for the map
            matches = search_symbols_file(args.function)
            for m_name, m_sec, m_addr in matches:
                if m_sec == "text":
                    map_info = dtk_map_symbol(m_name)
                    if map_info:
                        print_section(f"Debug Map: {m_name}", map_info)
                        break

        # TU entries
        tu_name = tu_name_from_unit(unit)
        tu_entries = dtk_map_entries(tu_name)
        if tu_entries:
            print_section(f"TU Map Entries: {tu_name}", tu_entries)


if __name__ == "__main__":
    main()
