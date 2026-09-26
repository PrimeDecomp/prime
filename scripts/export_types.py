"""Exports every struct, union and enum layout as gzipped JSON, one file per version.

For each version, builds main.elf with `configure.py --dwarf --link-all` into a
separate build directory, then runs `dtk dwarf types` on it. Every object with
source is linked, so the export covers NonMatching units too. Member offsets come
from the headers, so they're right even where the code isn't matching yet.
Addresses in this ELF are NOT; take those from config/<version>/symbols.txt
(see export_data_symbols.py).

Versions without files in orig/<version>/ are skipped. build.ninja, objdiff.json
and compile_commands.json are restored afterwards.

Usage: python scripts/export_types.py -o OUT_DIR [-v VERSION ...] [-- CONFIGURE_ARGS...]
  e.g. python scripts/export_types.py -o types -- --dtk ../decomp-toolkit
"""

from __future__ import annotations

import argparse
import gzip
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import List

ROOT = Path(__file__).resolve().parent.parent
GENERATED = ["build.ninja", "objdiff.json", "compile_commands.json"]
GAMECUBE_VERSIONS = ["GM8E01_00", "GM8E01_01", "GM8E01_48", "GM8P01_00", "GM8J01_00", "GM8E01_02"]


def has_orig(version: str) -> bool:
    orig = ROOT / "orig" / version
    return orig.is_dir() and any(p.name != ".gitkeep" for p in orig.iterdir())


def dtk_binary(build_dir: Path, configure_args: List[str]) -> Path:
    # Mirrors how tools/project.py resolves --dtk.
    exe = ".exe" if sys.platform == "win32" else ""
    if "--dtk" in configure_args:
        dtk = ROOT / configure_args[configure_args.index("--dtk") + 1]
        if dtk.is_file():
            return dtk
        return ROOT / build_dir / "tools" / "release" / f"dtk{exe}"
    return ROOT / build_dir / "tools" / f"dtk{exe}"


def export(version: str, build_dir: Path, out_dir: Path, configure_args: List[str]) -> None:
    subprocess.run(
        [
            sys.executable, "configure.py",
            "--version", version,
            "--build-dir", str(build_dir),
            "--dwarf", "--link-all", "--no-progress",
            *configure_args,
        ],
        cwd=ROOT,
        check=True,
    )
    elf = build_dir / version / "main.elf"
    subprocess.run(["ninja", str(elf)], cwd=ROOT, check=True)

    dtk = dtk_binary(build_dir, configure_args)
    with tempfile.TemporaryDirectory() as tmp:
        # dtk logs to stdout, so write through a file rather than a pipe.
        json_path = Path(tmp) / "types.json"
        subprocess.run([str(dtk), "dwarf", "types", str(elf), "-o", str(json_path)], cwd=ROOT, check=True)
        out = out_dir / f"{version}.json.gz"
        tmp_out = out.with_suffix(".gz.tmp")
        # mtime=0 so regenerating from the same ELF is byte-identical.
        with open(tmp_out, "wb") as raw, gzip.GzipFile(fileobj=raw, mode="wb", compresslevel=9, mtime=0) as gz:
            gz.write(json_path.read_bytes())
        tmp_out.replace(out)
    print(f"wrote {out}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    parser.add_argument("-o", "--out-dir", type=Path, required=True, help="writes <OUT_DIR>/<VERSION>.json.gz")
    parser.add_argument("-v", "--version", dest="versions", action="append", type=str.upper,
                        help="version to export (repeatable; default: every GameCube version)")
    parser.add_argument("--build-dir", type=Path, default=Path("build_dwarf"),
                        help="build directory, relative to the repo root (default: build_dwarf)")
    parser.add_argument("configure_args", nargs="*", help="extra configure.py arguments, after --")
    args = parser.parse_args()

    versions = args.versions or GAMECUBE_VERSIONS
    out_dir = args.out_dir.resolve()
    out_dir.mkdir(parents=True, exist_ok=True)

    saved = tempfile.mkdtemp()
    for name in GENERATED:
        if (ROOT / name).exists():
            shutil.copy2(ROOT / name, saved)
    done, skipped, failed = [], [], []
    try:
        for version in versions:
            if not has_orig(version):
                skipped.append(version)
                continue
            print(f"== {version}")
            try:
                export(version, args.build_dir, out_dir, args.configure_args)
                done.append(version)
            except subprocess.CalledProcessError:
                failed.append(version)
    finally:
        for name in GENERATED:
            if (Path(saved) / name).exists():
                shutil.copy2(Path(saved) / name, ROOT / name)
        shutil.rmtree(saved)

    print()
    print(f"exported: {' '.join(done) or 'none'}")
    if skipped:
        print(f"skipped (nothing in orig/<VERSION>/): {' '.join(skipped)}")
    if failed:
        sys.exit(f"FAILED: {' '.join(failed)}")


if __name__ == "__main__":
    main()
