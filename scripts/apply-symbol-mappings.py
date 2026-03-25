#!/usr/bin/env python3
"""Apply symbol_mappings from objdiff.json to symbols.txt, then remove them."""

import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OBJDIFF_PATH = ROOT / "objdiff.json"
SYMBOLS_PATH = ROOT / "config" / "GM8E01_00" / "symbols.txt"


def main():
    with open(OBJDIFF_PATH, "r") as f:
        objdiff = json.load(f)

    # Collect all mappings: old_name -> new_name
    mappings = {}
    units_with_mappings = []
    for unit in objdiff.get("units", []):
        sm = unit.get("symbol_mappings")
        if sm:
            units_with_mappings.append(unit["name"])
            for old, new in sm.items():
                if old in mappings and mappings[old] != new:
                    print(
                        f"WARNING: conflicting mapping for '{old}':\n"
                        f"  '{mappings[old]}' vs '{new}'",
                        file=sys.stderr,
                    )
                mappings[old] = new

    if not mappings:
        print("No symbol_mappings found in objdiff.json.")
        return

    print(f"Found {len(mappings)} mapping(s) in {len(units_with_mappings)} unit(s):")
    for name in units_with_mappings:
        print(f"  {name}")

    # Apply to symbols.txt
    with open(SYMBOLS_PATH, "r") as f:
        lines = f.readlines()

    applied = set()
    new_lines = []
    for line in lines:
        replaced = False
        for old, new in mappings.items():
            prefix = old + " = "
            if line.startswith(prefix):
                new_lines.append(new + " = " + line[len(prefix):])
                applied.add(old)
                replaced = True
                break
        if not replaced:
            new_lines.append(line)

    not_found = set(mappings.keys()) - applied
    if not_found:
        print(f"\nWARNING: {len(not_found)} mapping(s) not found in symbols.txt:",
              file=sys.stderr)
        for name in sorted(not_found):
            print(f"  {name}", file=sys.stderr)

    with open(SYMBOLS_PATH, "w") as f:
        f.writelines(new_lines)

    print(f"\nApplied {len(applied)} rename(s) to {SYMBOLS_PATH.relative_to(ROOT)}")

    # Remove symbol_mappings from objdiff.json
    for unit in objdiff.get("units", []):
        if unit.get("symbol_mappings"):
            unit["symbol_mappings"] = None

    with open(OBJDIFF_PATH, "w") as f:
        json.dump(objdiff, f, indent=2)
        f.write("\n")

    print(f"Cleared symbol_mappings from {OBJDIFF_PATH.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
