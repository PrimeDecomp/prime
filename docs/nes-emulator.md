# NES emulator modules

The NTSC GameCube builds load `NESemuP.rel`. PAL has two alternatives:

| PAL timing | Module | Original SHA-1 |
| --- | --- | --- |
| 50 Hz | `NESPALemuP.rel` | `a2ecd07b77655ee7f9a91c60d8b172727cba3fc5` |
| 60 Hz | `NESPAL60emuP.rel` | `c290bb574ed267dafe9bf10423a60124927e1515` |

The PAL constructor at `0x8028138C` selects the 50 Hz module when
`gUse50HzTiming` is set and the 60 Hz module otherwise. Both are REL version 3
with module ID **1**. They are alternatives, not dependencies of one another.
Each therefore has `links: []` in the DTK configuration: DTK still includes
the main DOL and the module itself, but does not link the other emulator variant.

## Layout and source builds

All three modules contain the same four source translation units, in different
orders:

| Module | Translation-unit order |
| --- | --- |
| NTSC | `modwrapper`, `emu`, `ksNesAudio`, `emusound` |
| PAL50 | `modwrapper`, `emusound`, `emu`, `ksNesAudio` |
| PAL60 | `modwrapper`, `emusound`, `ksNesAudio`, `emu` |

The PAL splits use module-specific object names while `configure.py` maps them
to the shared files in `src/NESemu`. The startup wrapper and `ksNesAudio` are
matched and source-linked in both PAL modules. `emu` and `emusound` remain
non-matching and are linked from extracted original objects.

Each PAL module extracts `kRomData` into its own generated include directory.
The module's include directory precedes the common include paths so a build
cannot accidentally use the other variant's ROM header. PAL60's 120,896-byte
compressed ROM payload is identical to NTSC's. PAL50 uses a different,
121,240-byte compressed payload. ROM binaries and generated headers are not
checked into the repository.

PAL's `.text` section requires 32-byte alignment. Without it, the generated
REL starts `.text` at file offset `0xC4` instead of the original `0xE0`, even
when all instructions are preserved. The 50 Hz and 60 Hz modules have different
section sizes and padding, so their splits must remain independent.

## Recovery evidence

The PAL boundaries and names were recovered by comparing the original RELs
with the named NTSC module, normalizing relocation operands and resolved
intra-module calls. Unique function bodies, relocation targets, and contiguous
function sequences establish the four owners. The emulator core retains the
NTSC instruction layout: PAL60 differs in three non-relocation instruction
words; PAL50 differs in thirteen. These include diagnostic line numbers and,
for PAL50, ROM decoding constants and offsets. This also establishes the
interior assembly labels in `ksNesEmuFrameAsm`, which automatic analysis had
partly mistaken for separate functions.

The audio callback's references establish its stream variable, static counters,
and aligned sample buffer. `EmuSound_Start` identifies the PAL `Sound_Reset`
entry at `.text:0x3BA0`. Compiling and linking the startup wrapper and audio
interface preserves both complete REL files, including data and relocations.

## PAL sound changes

Both PAL modules contain identical `emusound` instructions and initialized data.
Their shared `Sound_Reset` calls `VIGetTvFormat`: NTSC, MPAL, and EURGB60 select
a 1,789,882.75 Hz clock and 60 Hz frame timing; PAL and unknown formats select
1,662,500 Hz and 50 Hz. The PAL path also resets the disk/frame sample counts
to 640 and the phase sample count to 160.

Pitch conversion uses the runtime clock, and sample generation uses a runtime
base rate of 2 rather than NTSC's fixed `2.038168f`. The four-step APU frame
sequence derives its sample count from `32028 / NES_FRAME_RATE`. PAL also changes
the status-read expression and logs unsupported sound reads. Its diagnostic
strings belong in `.rodata`, requiring `-rostr` for this translation unit.

The sound symbols cover all 51 functions, the channel state, tables, timing
globals, and individual constants. Shared data layouts were checked against
the original bytes and relocations; the three added timing globals occupy
`.data:0x3E4` through `.data:0x3EC` in both PAL modules. Their names describe
their recovered uses rather than names from an original PAL symbol map.

Both PAL sound units now have 99.96% similarity, 49/51 exact functions,
94.45% exactly matched code, and 100% matched data. `Sound_Read` retains register
allocation differences; `Sound_Make_HVC` retains the mixer mismatch also present
in NTSC. These prevent source linkage of the complete sound unit.

## Verification

With both original PAL RELs under `orig/GM8P01_00/files`:

```sh
python configure.py --version GM8P01_00
ninja all_source
ninja
```

`config/GM8P01_00/build.sha1` checks **all three outputs**: the main DOL and both
NES RELs. A successful DOL checksum alone does not validate a REL. Before the
two-module configuration was recovered, the PAL checksum list omitted the REL
and allowed the incorrect section alignment to go unnoticed.
