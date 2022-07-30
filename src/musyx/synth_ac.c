#include "musyx/musyx_priv.h"

s32 sndPitchUpOne(u16 note) {
    return note * 1.059463f;
}

/* non-matching https://decomp.me/scratch/6pRdi */
u32 sndGetPitch(u8 a, u32 b) {
    f32 var_f0;
    u32 temp_r6;

    if (arg1 == 0xFFFFFFFF) {
        arg1 = 0x40005622;
    }
    temp_r6 = arg1 >> 0x18U;
    if (arg0 == temp_r6) {
        var_f0 = (f32) ((arg1 & 0xFFFFFF) * (temp_r6 < arg0  ? toneup_map[(arg0 - temp_r6)] : tonedown_tab[temp_r6 - arg0]));
    } else {
        var_f0 = (f32) (arg1 & 0xFFFFFF);
    }
    return (u32) ((4096.f * var_f0) / synthInfo.freq);
}
