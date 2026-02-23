from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path
from typing import Iterable

from symbols import Symbol, parse_symbols_file, write_symbols_file

ROOT = Path(__file__).resolve().parent.parent


def detect_version() -> str:
    ninja_path = ROOT / "build.ninja"
    if ninja_path.is_file():
        text = ninja_path.read_text()
        match = re.search(r"build/([A-Za-z0-9_]+)/obj/", text)
        if match:
            return match.group(1)
        match = re.search(r"build/([A-Za-z0-9_]+)/", text)
        if match:
            return match.group(1)

    config_dir = ROOT / "config"
    configs: Iterable[Path] = sorted(p for p in config_dir.iterdir() if p.is_dir())
    configs_list = [p.name for p in configs]
    if len(configs_list) == 1:
        return configs_list[0]

    raise SystemExit("Unable to determine version from build.ninja. Please run configure or add a build directory.")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Rename a symbol in config/{version}/symbols.txt")
    parser.add_argument("old_name", help="Current name of the symbol to rename")
    parser.add_argument("new_name", help="New name to assign to the symbol")
    parser.add_argument(
        "--scope",
        choices=["local", "global", "weak"],
        help="Update the scope attribute for the symbol",
    )
    return parser.parse_args()


def find_symbol(symbols: list[Symbol], name: str) -> Symbol | None:
    for symbol in symbols:
        if symbol.name == name:
            return symbol
    return None


def get_scope(symbol: Symbol) -> str:
    scope = symbol.attrs.get("scope")
    return scope if scope is not None else "global"


def main() -> None:
    args = parse_args()
    version = detect_version()
    symbols_path = ROOT / "config" / version / "symbols.txt"

    if not symbols_path.is_file():
        raise SystemExit(f"symbols.txt not found for version '{version}' at {symbols_path}")

    symbols = parse_symbols_file(symbols_path)

    symbol = find_symbol(symbols, args.old_name)
    if symbol is None:
        raise SystemExit(f"symbol '{args.old_name}' not found in {symbols_path}")

    new_scope = args.scope or get_scope(symbol)

    if new_scope == "global":
        for other in symbols:
            if other is symbol:
                continue
            if other.name == args.new_name and get_scope(other) == "global":
                raise SystemExit(f"a global symbol named '{args.new_name}' already exists in {symbols_path}")

    symbol.name = args.new_name
    if args.scope:
        symbol.replace_attr("scope", args.scope)

    write_symbols_file(symbols_path, symbols)
    print(f"Renamed '{args.old_name}' -> '{args.new_name}' in {symbols_path}")
    if args.scope:
        print(f"Updated scope to '{args.scope}'")


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit(130)
