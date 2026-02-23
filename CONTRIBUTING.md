# Contributing

If you're interested in contributing, come talk to us on the [GC/Wii Decompilation Discord](https://discord.gg/hKx3FJJgrV) in the #prime channel. We're happy to help with any questions that come up.

## Resources

There are several useful resources you can use for this decomp:

- [Metaforce](https://github.com/AxioDL/metaforce) is a nearly complete **non-matching** decompilation. For 90% of classes, you can find Metaforce's version and use it as reference. This will be the best resource for game structs and code, but there are caveats described below.
- We have a shared Ghidra server, chat with encounter in Discord for access. This will sometimes have more accurate struct definitions than Metaforce. It's highly recommended cross-referencing the Ghidra project along with Metaforce.
- Metroid Prime had an early demo version ship with a symbol map. While this symbol map is missing many classes that exist in the retail version of the game, it's still recommended to reference it for information on inlined functions, class/function/variable names, and function parameters. You can find this demo map inside of "Interactive Multi Game Demo Disc Version 7" as `MetaforceCWD.map`.

## Workflow

Visual Studio Code is recommended.

### Diffing

[objdiff](https://github.com/encounter/objdiff) will be your primary diffing tool. You can fetch a binary from the latest GitHub Actions build, or build from source with `cargo run --release`.

Set the project directory to the repository root, and all settings will be loaded automatically. (Assuming you ran `python configure.py` and `objdiff.json` was generated.)

objdiff will automatically rebuild and reload the object on source changes, so you can quickly iterate on functions.

With CodeWarrior, the `-inline deferred` flag reverses the function order in a translation unit. You'll work bottom-up in most asm files. Dolphin SDK files do **not** use `-inline deferred`, so their function order is top-down.

### Sharing
When you have a function mismatch that you want help on, you can upload a scratch to [decomp.me](https://decomp.me):
- Use `tools/decompctx.py src/path/to/file.cpp` to generate `ctx.c` which you can put in the "Context" field.
- Set preset to `Metroid Prime (USA)`.
