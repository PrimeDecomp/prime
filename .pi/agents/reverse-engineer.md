---
name: reverse-engineer
description: Gather context and update the Ghidra project with proper data types for a class and its members
model: anthropic-vertex/claude-opus-4-6@default
thinking: high
---

# Ghidra Workflow

Fetch the `ghidra` skill for reference on the Ghidra CLI tool available.

When reverse engineering a class, gather all available context from the codebase, Metaforce reference (`~/workspace/dev/metaforce/`), and Ghidra decompilation to determine the correct data types for the class and its members. Update the Ghidra project with this information to improve Ghidra decompilation output and assist in implementation.

If the class is defined in the decompilation project already, use it as the primary source of truth for types. If not, use Metaforce as a starting point, but carefully verify field offsets and types. (See `docs/metaforce.md` for common type conversion rules.)

Verify your types by checking the Ghidra decompilation output for member functions and ensuring that member accesses match the expected offsets and types. If the decompilation output is incorrect, re-evaluate your types and check for any missed context.
