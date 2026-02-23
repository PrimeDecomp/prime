from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Dict, Iterable, List

# Attributes that should be written in decimal form.
DEC_ATTRS = ["align"]
# Attributes that should be written in hexadecimal form.
HEX_ATTRS = ["size"]
NUM_ATTRS = DEC_ATTRS + HEX_ATTRS
# Boolean attributes are represented by their presence only.
BOOL_ATTRS = ["hidden", "force_active", "noreloc", "noexport", "stripped"]


def _parse_int(value: str) -> int:
    value = value.strip().lower()
    base = 16 if value.startswith("0x") else 10
    return int(value, base)


def _format_int(key: str, value: int) -> str:
    if key in HEX_ATTRS:
        return f"0x{value:X}"
    return str(value)


@dataclass
class Symbol:
    name: str
    section: str
    address: int
    attrs: Dict[str, Any] = field(default_factory=dict)

    def replace_attr(self, key: str, value: Any) -> None:
        """Replace or add an attribute."""
        self.attrs[key] = value

    @classmethod
    def from_line(cls, line: str) -> "Symbol":
        match = re.match(
            r"^(?P<name>\S+)\s*=\s*(?P<section>[^:]+):(?P<address>[^;]+);\s*(?://\s*(?P<attrs>.*))?$",
            line,
        )
        if not match:
            raise ValueError("line does not match symbol format")

        name = match.group("name").strip()
        section = match.group("section").strip()
        address_str = match.group("address").strip()

        try:
            address = _parse_int(address_str)
        except ValueError as exc:
            raise ValueError(f"invalid address '{address_str}'") from exc

        raw_attrs = match.group("attrs") or ""
        attrs: Dict[str, Any] = {}

        for token in raw_attrs.split():
            if ":" in token:
                key, raw_val = token.split(":", 1)
                key = key.strip()
                raw_val = raw_val.strip()
                if key in NUM_ATTRS:
                    try:
                        attrs[key] = _parse_int(raw_val)
                    except ValueError as exc:
                        raise ValueError(f"invalid numeric value for '{key}': '{raw_val}'") from exc
                else:
                    attrs[key] = raw_val
            else:
                # Boolean flags are represented by presence only.
                attrs[token.strip()] = True

        return cls(name=name, section=section, address=address, attrs=attrs)

    def to_line(self) -> str:
        addr = f"0x{self.address:X}"
        parts: List[str] = []

        ordered_keys: Iterable[str] = [
            "type",
            "size",
            "scope",
            "align",
            "data",
            *BOOL_ATTRS,
        ]

        # Add known keys in preferred order, then any remaining in sorted order.
        seen = set()
        for key in ordered_keys:
            if key in self.attrs:
                rendered = self._format_attr(key, self.attrs[key])
                if rendered:
                    parts.append(rendered)
                seen.add(key)

        for key in sorted(k for k in self.attrs.keys() if k not in seen):
            rendered = self._format_attr(key, self.attrs[key])
            if rendered:
                parts.append(rendered)

        attrs_str = ""
        if parts:
            attrs_str = " // " + " ".join(parts)

        return f"{self.name} = {self.section}:{addr};{attrs_str}"

    def _format_attr(self, key: str, value: Any) -> str:
        if isinstance(value, bool):
            return key if value else ""
        if key in NUM_ATTRS:
            try:
                number = _parse_int(value) if isinstance(value, str) else int(value)
            except (TypeError, ValueError) as exc:
                raise ValueError(f"invalid numeric value for '{key}': {value}") from exc
            return f"{key}:{_format_int(key, number)}"
        return f"{key}:{value}"


def parse_symbols_file(file_path: str | Path) -> List[Symbol]:
    """Parse a symbols.txt file into a list of Symbol objects."""
    path = Path(file_path)
    symbols: List[Symbol] = []
    for idx, line in enumerate(path.read_text().splitlines(), start=1):
        stripped = line.strip()
        if not stripped or stripped.startswith("//") or stripped.startswith("#"):
            continue
        try:
            symbols.append(Symbol.from_line(stripped))
        except ValueError as exc:
            raise ValueError(f"{path}:{idx}: {exc}") from exc
    return symbols


def write_symbols_file(file_path: str | Path, symbols: List[Symbol]) -> None:
    """Write a list of Symbol objects back to a symbols.txt file."""
    path = Path(file_path)
    lines = [symbol.to_line() for symbol in symbols]
    path.write_text("\n".join(lines) + "\n")
