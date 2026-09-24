# Inlining and rstl assertion experiments

This branch contains measured experiments based on `a17ab1d5`. These configurations
have known matching regressions; they are starting points for investigation.

Three successive source checkpoints correspond to the shared research cases:

1. **Experiment with common auto,deferred inlining**: `auto_flat__none`.
2. **Experiment with basic rstl assertions**: `auto_flat__simple_zero`.
3. **Experiment with expanded rstl assertions**: `auto_flat__rich_zero`.

The final checkpoint includes the preceding changes. Check out an earlier commit
to reproduce its case. The assertions use `#define RS_ASSERT(cond, msg) ((void)(0))`.
Replacing the final `0` with `cond` reproduces the corresponding `*_cond` case.

The configuration override applies `-inline auto,deferred` and the common regional
size limit (250 before PAL, 125 from PAL) to game/core libraries. It strips their
configure-level per-object inline settings at generation time; the original
declarations remain for comparison. SDK/runtime/musyx/NESemu flags, source pragmas,
and existing header inline/no-inline macros are retained.

| Case | USA newly exact / lost exact | PAL newly exact / lost exact |
|---|---:|---:|
| Flags only | 1 / 1830 | 15 / 1147 |
| Basic void-zero assertions | 2 / 1838 | 22 / 1167 |
| Expanded void-zero assertions | 9 / 1924 | 28 / 1221 |

These figures compare against the original baseline, using strict relocation
comparison. An exact function does not establish a linkable translation unit.

## Reproduce

Use the normal project tool setup and original game files, then:

```sh
python configure.py --version GM8E01_00
python -c "from pathlib import Path; Path('include/types.h').touch()"
ninja all_source
build/tools/objdiff-cli report generate --config functionRelocDiffs=data_value -o report-inline.json
```

Repeat with `GM8P01_00` for PAL. Substitute your configured objdiff executable path
if necessary. The timestamp update forces compilation after changing assertions:
MWCC's `-MMD` dependencies omit external rstl headers, so header-only edits can
otherwise silently reuse old objects. Compile all source objects and compare them;
the existing source-link declarations are not updated by these experiments.

The [shared research](https://collab.decomp.dev/projects/prime/docs/research/retro-inline-assertions-20260924.md)
contains the complete 28-case matrix, assertion isolation, six-version follow-ups,
regressions and artifact locations. Promising PAL size-125 changes and the isolated
camera/construct assertion cases are documented there, but are not separate
changes in this branch.
