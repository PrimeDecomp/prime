#!/usr/bin/env python3

"""
Project-wide decomp status overview.

Reads objdiff.json and runs objdiff-cli on non-complete units to gather
per-unit and per-category matching statistics.

Usage:
  python scripts/decomp-status.py
  python scripts/decomp-status.py --category game
  python scripts/decomp-status.py --unit main/MetroidPrime/CIOWinManager
  python scripts/decomp-status.py --json
"""

import argparse
import json
import os
import subprocess
import sys
from typing import Any, Dict, List, Optional

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = os.path.abspath(os.path.join(script_dir, ".."))

OBJDIFF_CLI = os.environ.get("OBJDIFF_CLI", "objdiff-cli")
OBJDIFF_JSON = os.path.join(root_dir, "objdiff.json")


def load_project_config() -> Dict[str, Any]:
    """Load objdiff.json project configuration."""
    with open(OBJDIFF_JSON) as f:
        return json.load(f)


def run_objdiff(unit_name: str) -> Optional[Dict[str, Any]]:
    """Run objdiff-cli diff for a unit and return parsed JSON."""
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


def analyze_unit(diff_data: Dict[str, Any]) -> Dict[str, Any]:
    """Analyze a unit's diff data and return summary statistics."""
    left = diff_data.get("left", {})
    right = diff_data.get("right", {})
    left_syms = left.get("symbols", [])
    left_sections = left.get("sections", [])

    # Section-level stats
    section_stats = {}
    for sec in left_sections:
        kind = sec.get("kind", "")
        if kind not in ("SECTION_CODE", "SECTION_DATA", "SECTION_BSS"):
            continue
        name = sec["name"]
        mp = sec.get("match_percent")
        size = int(sec.get("size", "0"))
        section_stats[name] = {
            "match_percent": mp,
            "size": size,
            "kind": kind,
        }

    # Function-level stats (code symbols only)
    total_funcs = 0
    matching_funcs = 0
    total_code_size = 0
    matching_code_size = 0

    for sym in left_syms:
        if "instructions" not in sym:
            continue
        size = int(sym.get("size", "0"))
        total_funcs += 1
        total_code_size += size
        mp = sym.get("match_percent")
        if mp is not None and mp >= 100.0:
            matching_funcs += 1
            matching_code_size += size

    text_section = section_stats.get(".text", {})
    text_match = text_section.get("match_percent")
    text_size = text_section.get("size", 0)

    return {
        "total_functions": total_funcs,
        "matching_functions": matching_funcs,
        "total_code_size": total_code_size,
        "matching_code_size": matching_code_size,
        "text_match_percent": text_match,
        "text_size": text_size,
        "sections": section_stats,
    }


def main():
    parser = argparse.ArgumentParser(
        description="Project-wide decomp status overview"
    )
    parser.add_argument(
        "--unit", help="Show detailed status for a specific unit"
    )
    parser.add_argument(
        "--category",
        help="Filter by progress category (game, core, sdk, third_party)",
    )
    parser.add_argument(
        "--json", action="store_true", dest="json_output",
        help="Output as JSON",
    )
    args = parser.parse_args()

    config = load_project_config()
    units = config.get("units", [])

    # Group units by category
    categorized = {}
    for unit in units:
        meta = unit.get("metadata", {})
        categories = meta.get("progress_categories", ["uncategorized"])
        # Use the second category if available (first is usually 'dol')
        cat = categories[1] if len(categories) > 1 else categories[0] if categories else "uncategorized"

        if args.category and cat != args.category:
            continue

        if args.unit and unit["name"] != args.unit:
            continue

        categorized.setdefault(cat, []).append(unit)

    if not categorized:
        print("No units match the given filters.", file=sys.stderr)
        sys.exit(1)

    # Process each unit
    results = {}
    for cat, cat_units in sorted(categorized.items()):
        results[cat] = []
        for unit in cat_units:
            name = unit["name"]
            meta = unit.get("metadata", {})
            complete = meta.get("complete", False)
            has_target = bool(unit.get("target_path"))
            has_base = bool(unit.get("base_path"))
            source_path = meta.get("source_path", "")

            entry = {
                "name": name,
                "complete": complete,
                "has_source": bool(source_path),
                "source_path": source_path,
            }

            if complete:
                entry["status"] = "complete"
                entry["text_match"] = 100.0
            elif has_target and has_base:
                diff_data = run_objdiff(name)
                if diff_data:
                    stats = analyze_unit(diff_data)
                    entry.update(stats)
                    entry["status"] = "incomplete"
                else:
                    entry["status"] = "error"
            elif has_target and not has_base:
                entry["status"] = "no_source"
            else:
                entry["status"] = "no_target"

            results[cat].append(entry)

    if args.json_output:
        print(json.dumps(results, indent=2))
        return

    # Pretty print
    grand_total_funcs = 0
    grand_matching_funcs = 0
    grand_total_size = 0
    grand_matching_size = 0
    cat_summaries = {}

    for cat, entries in sorted(results.items()):
        print(f"\n=== {cat} ===")

        cat_funcs = 0
        cat_matching = 0
        cat_size = 0
        cat_matching_size = 0

        for entry in entries:
            name = entry["name"]
            # Strip common prefix for display
            display_name = name.replace("main/", "")

            status = entry.get("status", "?")
            if status == "complete":
                # Don't print individual complete units unless --unit specified
                if not args.unit:
                    continue
                print(f"  {display_name:<50s} complete")
            elif status == "incomplete":
                tf = entry.get("total_functions", 0)
                mf = entry.get("matching_functions", 0)
                tm = entry.get("text_match_percent")
                tm_str = f"{tm:.1f}%" if tm is not None else "?"
                print(
                    f"  {display_name:<50s} .text {tm_str:>6s}  ({mf}/{tf} functions)"
                )
                cat_funcs += tf
                cat_matching += mf
                cat_size += entry.get("total_code_size", 0)
                cat_matching_size += entry.get("matching_code_size", 0)
            elif status == "no_source":
                if args.unit:
                    print(f"  {display_name:<50s} no source file")
            elif status == "error":
                print(f"  {display_name:<50s} error running objdiff")

        # Add complete units to totals
        complete_count = sum(1 for e in entries if e.get("status") == "complete")
        if not args.unit and complete_count > 0:
            print(f"  ... {complete_count} complete units")

        # Category summary
        cat_summaries[cat] = {
            "functions": cat_funcs,
            "matching": cat_matching,
            "complete_units": complete_count,
            "total_units": len(entries),
        }
        grand_total_funcs += cat_funcs
        grand_matching_funcs += cat_matching
        grand_total_size += cat_size
        grand_matching_size += cat_matching_size

    if not args.unit:
        print(f"\n=== Summary ===")
        for cat, s in sorted(cat_summaries.items()):
            total = s["functions"]
            matching = s["matching"]
            complete = s["complete_units"]
            total_units = s["total_units"]
            pct = f"{matching/total*100:.1f}%" if total > 0 else "N/A"
            print(
                f"  {cat:<15s} {pct:>6s} ({matching}/{total} functions)  "
                f"[{complete}/{total_units} units complete]"
            )
        if grand_total_funcs > 0:
            grand_pct = grand_matching_funcs / grand_total_funcs * 100
            print(
                f"\n  Total: {grand_pct:.1f}% ({grand_matching_funcs}/{grand_total_funcs} functions)"
            )


if __name__ == "__main__":
    main()
