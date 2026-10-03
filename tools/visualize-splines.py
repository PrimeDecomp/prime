#!/usr/bin/env python3
"""Generate a standalone viewer from Trilogy's recovered control response knots.

Run `python tools/visualize-splines.py`, then open build/splines.html in a browser.
The generated file needs no server, network access or third-party dependencies.
"""

import argparse
import hashlib
import json
from pathlib import Path
import re


ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / "src/MetroidPrime/Tweaks/CTweakPlayerControl.cpp"
TEMPLATE = ROOT / "tools/spline-viewer.html"
NUMBER = r"[-+]?\d+(?:\.\d*)?(?:[eE][-+]?\d+)?"
KNOT = re.compile(
    rf"CMayaSplineKnot\(\s*({NUMBER})f,\s*({NUMBER})f,\s*"
    r"CMayaSplineKnot::kTT_(\w+),\s*CMayaSplineKnot::kTT_(\w+)"
    rf"(?:,\s*CAbsAngle::FromRadians\(({NUMBER})f\),\s*"
    rf"CAbsAngle::FromRadians\(({NUMBER})f\))?\s*\)"
)


def read_presets(source):
    presets = []
    for preset in range(3):
        marker = f"skControlResponseKnotsPreset{preset}[128] = {{"
        if marker not in source:
            raise ValueError(f"Missing preset table: {marker}")
        body = source.split(marker, 1)[1].split("\n};", 1)[0]
        knots = []
        for match in KNOT.finditer(body):
            time, amplitude, incoming, outgoing, in_angle, out_angle = match.groups()
            knots.append(
                dict(
                    t=float(time),
                    y=float(amplitude),
                    incoming=incoming,
                    outgoing=outgoing,
                    inAngle=float(in_angle or 0),
                    outAngle=float(out_angle or 0),
                )
            )
        if len(knots) != 128:
            raise ValueError(f"Preset {preset}: expected 128 knots, found {len(knots)}")
        curves = []
        for index in range(16):
            curve = []
            for knot in knots[index * 8 : (index + 1) * 8]:
                if knot["incoming"] == "Invalid":
                    break
                curve.append(knot)
            if len(curve) < 2 or any(a["t"] >= b["t"] for a, b in zip(curve, curve[1:])):
                raise ValueError(f"Preset {preset}, curve {index}: invalid knot sequence")
            curves.append(curve)
        presets.append(curves)
    return presets


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("-o", "--output", type=Path, default=ROOT / "build/splines.html")
    args = parser.parse_args()
    try:
        source = SOURCE.read_text()
        payload = dict(
            presets=read_presets(source),
            sourceSha256=hashlib.sha256(source.encode()).hexdigest(),
        )
        template = TEMPLATE.read_text()
        marker = "/* PRESET_DATA */ null"
        if template.count(marker) != 1:
            raise ValueError("Viewer template must contain exactly one preset placeholder")
        html = template.replace(marker, json.dumps(payload, separators=(",", ":")))
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(html)
    except (OSError, ValueError) as error:
        parser.error(str(error))
    print(f"Wrote {args.output}: 3 presets, 48 curves. Open this file in a browser.")


if __name__ == "__main__":
    main()
