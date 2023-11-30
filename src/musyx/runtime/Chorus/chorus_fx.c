#include "musyx/musyx.h"

#include "musyx/sal.h"
#include "musyx/assert.h"

static float rsmpTab12khz[512] = {
    0.097503662109f,  0.802215576172f,  0.101593017578f,  -0.000976562500f, 0.093505859375f,
    0.802032470703f,  0.105804443359f,  -0.001037597656f, 0.089599609375f,  0.801696777344f,
    0.110107421875f,  -0.001159667969f, 0.085784912109f,  0.801177978516f,  0.114471435547f,
    -0.001281738281f, 0.082031250000f,  0.800476074219f,  0.118927001953f,  -0.001403808594f,
    0.078369140625f,  0.799621582031f,  0.123474121094f,  -0.001525878906f, 0.074798583984f,
    0.798614501953f,  0.128143310547f,  -0.001647949219f, 0.071350097656f,  0.797424316406f,
    0.132873535156f,  -0.001770019531f, 0.067962646484f,  0.796051025391f,  0.137695312500f,
    -0.001922607422f, 0.064697265625f,  0.794525146484f,  0.142608642578f,  -0.002044677734f,
    0.061492919922f,  0.792846679688f,  0.147613525391f,  -0.002197265625f, 0.058349609375f,
    0.790985107422f,  0.152709960938f,  -0.002319335938f, 0.055328369141f,  0.788940429688f,
    0.157897949219f,  -0.002471923828f, 0.052368164062f,  0.786743164062f,  0.163177490234f,
    -0.002655029297f, 0.049499511719f,  0.784423828125f,  0.168518066406f,  -0.002807617188f,
    0.046722412109f,  0.781890869141f,  0.173980712891f,  -0.002990722656f, 0.044006347656f,
    0.779205322266f,  0.179504394531f,  -0.003143310547f, 0.041412353516f,  0.776367187500f,
    0.185119628906f,  -0.003326416016f, 0.038879394531f,  0.773376464844f,  0.190826416016f,
    -0.003509521484f, 0.036407470703f,  0.770233154297f,  0.196594238281f,  -0.003692626953f,
    0.034027099609f,  0.766937255859f,  0.202484130859f,  -0.003875732422f, 0.031738281250f,
    0.763488769531f,  0.208435058594f,  -0.004058837891f, 0.029510498047f,  0.759857177734f,
    0.214447021484f,  -0.004272460938f, 0.027374267578f,  0.756103515625f,  0.220550537109f,
    -0.004455566406f, 0.025299072266f,  0.752197265625f,  0.226745605469f,  -0.004669189453f,
    0.023315429688f,  0.748168945312f,  0.233001708984f,  -0.004852294922f, 0.021392822266f,
    0.743988037109f,  0.239318847656f,  -0.005065917969f, 0.019561767578f,  0.739654541016f,
    0.245727539062f,  -0.005310058594f, 0.017791748047f,  0.735198974609f,  0.252197265625f,
    -0.005523681641f, 0.016052246094f,  0.730590820312f,  0.258728027344f,  -0.005706787109f,
    0.014404296875f,  0.725860595703f,  0.265350341797f,  -0.005920410156f, 0.012817382812f,
    0.721008300781f,  0.272033691406f,  -0.006164550781f, 0.011322021484f,  0.716003417969f,
    0.278778076172f,  -0.006378173828f, 0.009887695312f,  0.710906982422f,  0.285583496094f,
    -0.006561279297f, 0.008514404297f,  0.705657958984f,  0.292449951172f,  -0.006774902344f,
    0.007202148438f,  0.700317382812f,  0.299346923828f,  -0.007019042969f, 0.005920410156f,
    0.694854736328f,  0.306335449219f,  -0.007232666016f, 0.004699707031f,  0.689270019531f,
    0.313385009766f,  -0.007415771484f, 0.003570556641f,  0.683563232422f,  0.320465087891f,
    -0.007629394531f, 0.002471923828f,  0.677734375000f,  0.327606201172f,  -0.007873535156f,
    0.001434326172f,  0.671844482422f,  0.334777832031f,  -0.008087158203f, 0.000457763672f,
    0.665832519531f,  0.341979980469f,  -0.008270263672f, -0.000488281250f, 0.659729003906f,
    0.349243164062f,  -0.008453369141f, -0.001342773438f, 0.653533935547f,  0.356567382812f,
    -0.008636474609f, -0.002166748047f, 0.647216796875f,  0.363891601562f,  -0.008850097656f,
    -0.002960205078f, 0.640838623047f,  0.371276855469f,  -0.009033203125f, -0.003692626953f,
    0.634338378906f,  0.378692626953f,  -0.009216308594f, -0.004364013672f, 0.627777099609f,
    0.386138916016f,  -0.009338378906f, -0.004974365234f, 0.621154785156f,  0.393615722656f,
    -0.009490966797f, -0.005584716797f, 0.614440917969f,  0.401092529297f,  -0.009643554688f,
    -0.006134033203f, 0.607635498047f,  0.408599853516f,  -0.009796142578f, -0.006652832031f,
    0.600769042969f,  0.416107177734f,  -0.009918212891f, -0.007141113281f, 0.593841552734f,
    0.423645019531f,  -0.010009765625f, -0.007568359375f, 0.586853027344f,  0.431213378906f,
    -0.010131835938f, -0.007965087891f, 0.579772949219f,  0.438751220703f,  -0.010223388672f,
    -0.008331298828f, 0.572662353516f,  0.446319580078f,  -0.010284423828f, -0.008666992188f,
    0.565521240234f,  0.453887939453f,  -0.010345458984f, -0.008972167969f, 0.558319091797f,
    0.461456298828f,  -0.010406494141f, -0.009216308594f, 0.551055908203f,  0.469024658203f,
    -0.010406494141f, -0.009460449219f, 0.543731689453f,  0.476593017578f,  -0.010406494141f,
    -0.009674072266f, 0.536407470703f,  0.484130859375f,  -0.010375976562f, -0.009857177734f,
    0.529022216797f,  0.491668701172f,  -0.010375976562f, -0.010009765625f, 0.521606445312f,
    0.499176025391f,  -0.010314941406f, -0.010131835938f, 0.514160156250f,  0.506683349609f,
    -0.010253906250f, -0.010253906250f, 0.506683349609f,  0.514160156250f,  -0.010131835938f,
    -0.010314941406f, 0.499176025391f,  0.521606445312f,  -0.010009765625f, -0.010375976562f,
    0.491668701172f,  0.529022216797f,  -0.009857177734f, -0.010375976562f, 0.484130859375f,
    0.536407470703f,  -0.009674072266f, -0.010406494141f, 0.476593017578f,  0.543731689453f,
    -0.009460449219f, -0.010406494141f, 0.469024658203f,  0.551055908203f,  -0.009216308594f,
    -0.010406494141f, 0.461456298828f,  0.558319091797f,  -0.008972167969f, -0.010345458984f,
    0.453887939453f,  0.565521240234f,  -0.008666992188f, -0.010284423828f, 0.446319580078f,
    0.572662353516f,  -0.008331298828f, -0.010223388672f, 0.438751220703f,  0.579772949219f,
    -0.007965087891f, -0.010131835938f, 0.431213378906f,  0.586853027344f,  -0.007568359375f,
    -0.010009765625f, 0.423645019531f,  0.593841552734f,  -0.007141113281f, -0.009918212891f,
    0.416107177734f,  0.600769042969f,  -0.006652832031f, -0.009796142578f, 0.408599853516f,
    0.607635498047f,  -0.006134033203f, -0.009643554688f, 0.401092529297f,  0.614440917969f,
    -0.005584716797f, -0.009490966797f, 0.393615722656f,  0.621154785156f,  -0.004974365234f,
    -0.009338378906f, 0.386138916016f,  0.627777099609f,  -0.004364013672f, -0.009216308594f,
    0.378692626953f,  0.634338378906f,  -0.003692626953f, -0.009033203125f, 0.371276855469f,
    0.640838623047f,  -0.002960205078f, -0.008850097656f, 0.363891601562f,  0.647216796875f,
    -0.002166748047f, -0.008636474609f, 0.356567382812f,  0.653533935547f,  -0.001342773438f,
    -0.008453369141f, 0.349243164062f,  0.659729003906f,  -0.000488281250f, -0.008270263672f,
    0.341979980469f,  0.665832519531f,  0.000457763672f,  -0.008087158203f, 0.334777832031f,
    0.671844482422f,  0.001434326172f,  -0.007873535156f, 0.327606201172f,  0.677734375000f,
    0.002471923828f,  -0.007629394531f, 0.320465087891f,  0.683563232422f,  0.003570556641f,
    -0.007415771484f, 0.313385009766f,  0.689270019531f,  0.004699707031f,  -0.007232666016f,
    0.306335449219f,  0.694854736328f,  0.005920410156f,  -0.007019042969f, 0.299346923828f,
    0.700317382812f,  0.007202148438f,  -0.006774902344f, 0.292449951172f,  0.705657958984f,
    0.008514404297f,  -0.006561279297f, 0.285583496094f,  0.710906982422f,  0.009887695312f,
    -0.006378173828f, 0.278778076172f,  0.716003417969f,  0.011322021484f,  -0.006164550781f,
    0.272033691406f,  0.721008300781f,  0.012817382812f,  -0.005920410156f, 0.265350341797f,
    0.725860595703f,  0.014404296875f,  -0.005706787109f, 0.258728027344f,  0.730590820312f,
    0.016052246094f,  -0.005523681641f, 0.252197265625f,  0.735198974609f,  0.017791748047f,
    -0.005310058594f, 0.245727539062f,  0.739654541016f,  0.019561767578f,  -0.005065917969f,
    0.239318847656f,  0.743988037109f,  0.021392822266f,  -0.004852294922f, 0.233001708984f,
    0.748168945312f,  0.023315429688f,  -0.004669189453f, 0.226745605469f,  0.752197265625f,
    0.025299072266f,  -0.004455566406f, 0.220550537109f,  0.756103515625f,  0.027374267578f,
    -0.004272460938f, 0.214447021484f,  0.759857177734f,  0.029510498047f,  -0.004058837891f,
    0.208435058594f,  0.763488769531f,  0.031738281250f,  -0.003875732422f, 0.202484130859f,
    0.766937255859f,  0.034027099609f,  -0.003692626953f, 0.196594238281f,  0.770233154297f,
    0.036407470703f,  -0.003509521484f, 0.190826416016f,  0.773376464844f,  0.038879394531f,
    -0.003326416016f, 0.185119628906f,  0.776367187500f,  0.041412353516f,  -0.003143310547f,
    0.179504394531f,  0.779205322266f,  0.044006347656f,  -0.002990722656f, 0.173980712891f,
    0.781890869141f,  0.046722412109f,  -0.002807617188f, 0.168518066406f,  0.784423828125f,
    0.049499511719f,  -0.002655029297f, 0.163177490234f,  0.786743164062f,  0.052368164062f,
    -0.002471923828f, 0.157897949219f,  0.788940429688f,  0.055328369141f,  -0.002319335938f,
    0.152709960938f,  0.790985107422f,  0.058349609375f,  -0.002197265625f, 0.147613525391f,
    0.792846679688f,  0.061492919922f,  -0.002044677734f, 0.142608642578f,  0.794525146484f,
    0.064697265625f,  -0.001922607422f, 0.137695312500f,  0.796051025391f,  0.067962646484f,
    -0.001770019531f, 0.132873535156f,  0.797424316406f,  0.071350097656f,  -0.001647949219f,
    0.128143310547f,  0.798614501953f,  0.074798583984f,  -0.001525878906f, 0.123474121094f,
    0.799621582031f,  0.078369140625f,  -0.001403808594f, 0.118927001953f,  0.800476074219f,
    0.082031250000f,  -0.001281738281f, 0.114471435547f,  0.801177978516f,  0.085784912109f,
    -0.001159667969f, 0.110107421875f,  0.801696777344f,  0.089599609375f,  -0.001037597656f,
    0.105804443359f,  0.802032470703f,  0.093505859375f,  -0.000976562500f, 0.101593017578f,
    0.802215576172f,  0.097503662109f,
};

const double i2fMagic = 4.503601774854144E15;

#ifdef __MWERKS__
// clang-format off
static asm void do_src1(_SND_CHORUS_SRCINFO* src) {
  nofralloc  

  stwu r1, -0x40(sp)
  stmw r26, 0x28(sp)

  
  lwz r4, 0xc(r3)
  lwz r5, 0x10(r3)

  lwz r6, 0x14(r3)

  lwz r8, 0x1c(r3)
  lwz r7, 0x20(r3)

  lwz r31, 4(r3)
  
  lwz r30, 0(r3)
  
  lwz r9, 8(r3)
  
  lis r10, 0x4330
  stw r10, 8(sp)
  stw r10, 0x10(sp)
  stw r10, 0x18(sp)
  stw r10, 0x20(sp)
  
  lis r10, i2fMagic@ha
  lfd f9, i2fMagic@l(r10)
  
  slwi r10, r5, 2
  lwz r11, 0(r9)
  
  lwz r29, 4(r9)
  lwz r28, 8(r9)  
  lwzx r27, r31, r10

  xoris r11, r11, 0x8000
  xoris r29, r29, 0x8000  
  stw r11, 0xc(sp)
  xoris r28, r28, 0x8000
  stw r29, 0x14(sp)
  xoris r27, r27, 0x8000
  stw r28, 0x1c(sp)
  lfd f1, 8(sp)
  stw r27, 0x24(sp)
  lfd f2, 0x10(sp)  
  fsubs f1, f1, f9
  lfd f3, 0x18(sp)
  fsubs f2, f2, f9
  lfd f4, 0x20(sp)
  fsubs f3, f3, f9
  fsubs f4, f4, f9
  
  li r26, -4
  
  lis r12, rsmpTab12khz@ha
  addi r12, r12, rsmpTab12khz@l
  
  li r9, 0xa0
  mtctr r9
lbl_803B6D5C:
  rlwinm r10, r4, 7, 0x15, 0x1b

  addc r4, r4, r6

  add r10, r10, r12
  
  mcrxr cr0

  lfs f5, 0(r10)

  beq lbl_803B6DA4

  lfs f6, 4(r10)

  fmuls f10, f1, f5

  lfs f7, 8(r10)
  
  fmadds f10, f2, f6, f10
  
  lfs f8, 0xc(r10)

  fmadds f10, f3, f7, f10

  addi r30, r30, 4

  fmadds f10, f4, f8, f10

  fctiwz f10, f10

  stfiwx f10, r26, r30

  bdnz lbl_803B6D5C
  
  b lbl_803B6E10


lbl_803B6DA4:
  addi r5, r5, 1

  lfs f6, 4(r10)
  
  fmuls f10, f1, f5
  
  cmpw r5, r8
  
  fmr f1, f2
  
  lfs f7, 8(r10)
  
  fmadds f10, f2, f6, f10
  
  fmr f2, f3
  
  lfs f8, 0xc(r10)
  
  fmadds f10, f3, f7, f10
  
  addi r30, r30, 4
  
  fmr f3, f4
  
  bne+ lbl_803B6DDC
  mr r5, r7
  
lbl_803B6DDC:
  fmadds f10, f4, f8, f10

  slwi r9, r5, 2

  bdz lbl_803B6E08

  lwzx r10, r9, r31
  
  fctiwz f10, f10
  
  xoris r10, r10, 0x8000
  
  stw r10, 0xc(sp)
  
  stfiwx f10, r26, r30
  
  lfd f4, 8(sp)
  
  fsubs f4, f4, f9
  
  b lbl_803B6D5C


lbl_803B6E08:
  fctiwz f10, f10
  stfiwx f10, r26, r30


lbl_803B6E10:
  lwz r9, 8(r3)
  
  fctiwz f1, f1
  fctiwz f2, f2
  fctiwz f3, f3
  
  stfiwx f1, r0, r9
  addi r10, r9, 4
  stfiwx f2, r0, r10
  addi r10, r9, 8
  stfiwx f3, r0, r10
  
  stw r4, 0xc(r3)
  stw r5, 0x10(r3)
  
  lmw r26, 0x28(sp)
  addi r1, r1, 0x40
  blr
}
/* clang-format on */
#else
static void do_src1(_SND_CHORUS_SRCINFO* src) {
  // TODO: Reimplement in C
}
#endif

#ifdef __MWERKS__
/* clang-format off */
static asm void do_src2(register _SND_CHORUS_SRCINFO* src) {
#define posLoV r4
#define posHiV r5
#define pitchLoV r6
#define triggerV r8
#define targetV r7
#define oldPtr r9
#define destPtr r30
#define smpBasePtr r31

  nofralloc;
  /* Save stack state to stack */
  stwu r1, -0x40(sp);
  stmw r26, 0x28(sp);

  lwz posLoV, src->posLo;
  lwz posHiV, src->posHi;

  lwz pitchLoV, src->pitchLo;

  lwz triggerV, src->trigger;
  lwz targetV, src->target;

  lwz smpBasePtr, src->smpBase;

  lwz destPtr, src->dest;

  lwz oldPtr, src->old;
  /* Store upper portion of int->float conversion constant */
  lis r10, 0x4330;
  stw r10, 0x08(sp);
  stw r10, 0x10(sp);
  stw r10, 0x18(sp);
  stw r10, 0x20(sp);

  lis r10, i2fMagic @ha;
  lfd f9, i2fMagic @l(r10);

  // posHi * 4
  slwi r10, posHiV, 2;
  lwz r11, 0(oldPtr);
  lwz r29, 4(oldPtr);
  lwz r28, 8(oldPtr);
  lwzx r27, smpBasePtr, r10;

  xoris r11, r11, 0x8000;
  xoris r29, r29, 0x8000;
  stw r11, 0xc(sp);
  xoris r28, r28, 0x8000;
  stw r29, 0x14(sp);
  xoris r27, r27, 0x8000;
  stw r28, 0x1c(sp);
  lfd f1, 0x08(sp);
  stw r27, 0x24(sp);
  lfd f2, 0x10(sp);
  fsubs f1, f1, f9;
  lfd f3, 0x18(sp);
  fsubs f2, f2, f9;
  lfd f4, 0x20(sp);
  fsubs f3, f3, f9;
  fsubs f4, f4, f9;
  /* Some offset? */
  li r26, -4;

  lis r12, rsmpTab12khz @ha;
  addi r12, r12, rsmpTab12khz @l;

  li r9, 0xa0;
  mtctr r9;
lbl_803B6EF4:
  rlwinm r10, posLoV, 7, 0x15, 0x1b;

  addc posLoV, posLoV, pitchLoV;

  add r10, r10, r12;

  mcrxr cr0;

  addi posHiV, posHiV, 1;

  lfs f5, 0(r10);

  beq lbl_803B6F70;

  lfs f6, 4(r10);

  fmuls f10, f1, f5;

  cmpw posHiV, triggerV;

  fmr f1, f2;

  lfs f7, 8(r10);

  fmadds f10, f2, f6, f10;

  fmr f2, f3;

  lfs f8, 0xc(r10);

  fmadds f10, f3, f7, f10;

  addi destPtr, destPtr, 4;

  fmr f3, f4;

  bne + lbl_803B6F44;
  mr posHiV, targetV;

lbl_803B6F44:
  fmadds f10, f4, f8, f10;

  slwi r9, posHiV, 2;

  bdz lbl_803B6FF4;

  lwzx r10, r9, smpBasePtr;

  fctiwz f10, f10;

  xoris r10, r10, 0x8000;

  stw r10, 0xc(sp);

  stfiwx f10, r26, destPtr;

  lfd f4, 8(sp);

  fsubs f4, f4, f9;

  b lbl_803B6EF4;

lbl_803B6F70:

  cmpw posHiV, triggerV;

  lfs f6, 4(r10);

  bne + lbl_803B6F80;
  mr posHiV, targetV;

lbl_803B6F80:

  slwi r11, posHiV, 2;
  addi posHiV, posHiV, 1;

  lwzx r29, r11, smpBasePtr;

  fmuls f10, f1, f5;

  cmpw posHiV, triggerV;
  xoris r29, r29, 0x8000;

  fmr f1, f3;

  lfs f7, 8(r10);

  stw r29, 0xc(sp);

  fmadds f10, f2, f6, f10;

  lfs f8, 0xc(r10);

  fmadds f10, f3, f7, f10;

  lfd f3, 8(sp);

  fmr f2, f4;

  addi destPtr, destPtr, 4;

  fsubs f3, f3, f9;

  bne + lbl_803B6FC8;
  mr posHiV, targetV;

lbl_803B6FC8:

  fmadds f10, f4, f8, f10;

  slwi r9, posHiV, 2;

  bdz lbl_803B6FF4;

  lwzx r10, r9, smpBasePtr;

  fctiwz f10, f10;

  xoris r10, r10, 0x8000;

  stw r10, 0xc(sp);

  stfiwx f10, r26, destPtr;
  lfd f4, 8(sp);
  fsubs f4, f4, f9;

  b lbl_803B6EF4;

lbl_803B6FF4:

  fctiwz f10, f10;
  stfiwx f10, r26, destPtr;

  lwz r9, 8(r3);

  fctiwz f1, f1;
  fctiwz f2, f2;
  fctiwz f3, f3;
  stfiwx f1, r0, r9;
  addi r10, r9, 4;
  stfiwx f2, r0, r10;
  addi r10, r9, 8;
  stfiwx f3, r0, r10;

  stw posLoV, src->posLo;
  stw posHiV, src->posHi;

  /* Pop and restore LR to original values */
  lmw r26, 0x28(sp);
  addi r1, r1, 0x40;
  blr;

#undef posLoV
#undef posHiV
#undef pitchLoV
#undef triggerV
#undef targetV
#undef oldPtr
#undef destPtr
#undef smpBasePtr
}
#else
static void do_src2(register _SND_CHORUS_SRCINFO* src) {
  // TODO: Reimplement in C
}
#endif

void sndAuxCallbackChorus(u8 reason, SND_AUX_INFO* info, void* user) {
  SND_AUX_CHORUS* c;
  s32 *leftD, *rightD, *surD, *leftS, *rightS, *surS;
  u32 i;
  u8 nextCurrentLast;
  switch (reason) {
  case SND_AUX_REASON_BUFFERUPDATE:
    c = (SND_AUX_CHORUS*)user;
    nextCurrentLast = (c->work.currentLast + 1) % 3;
    leftD = c->work.lastLeft[nextCurrentLast];
    rightD = c->work.lastRight[nextCurrentLast];
    surD = c->work.lastSur[nextCurrentLast];
    leftS = info->data.bufferUpdate.left;
    rightS = info->data.bufferUpdate.right;
    surS = info->data.bufferUpdate.surround;

    for (i = 0; i < 160; ++i) {
      *leftD = *leftS++;
      leftD++;
      *rightD = *rightS++;
      rightD++;
      *surD = *surS++;
      surD++;
    }

    c->work.src.pitchHi = (c->work.pitchOffset >> 0x10) + 1;
    c->work.src.pitchLo = ((c->work.pitchOffset & 0xFFFF) << 16);
    if (--c->work.pitchOffsetPeriodCount == 0) {
      c->work.pitchOffsetPeriodCount = c->work.pitchOffsetPeriod;
      c->work.pitchOffset = -c->work.pitchOffset;
    }

    for (i = 0; i < 3; ++i) {
      c->work.src.posHi = c->work.currentPosHi;
      c->work.src.posLo = c->work.currentPosLo;
      switch (i) {
      case 0:
        c->work.src.smpBase = c->work.lastLeft[0];
        c->work.src.dest = info->data.bufferUpdate.left;
        c->work.src.old = c->work.oldLeft;
        break;
      case 1:
        c->work.src.smpBase = c->work.lastRight[0];
        c->work.src.dest = info->data.bufferUpdate.right;
        c->work.src.old = c->work.oldRight;
        break;
      case 2:
        c->work.src.smpBase = c->work.lastSur[0];
        c->work.src.dest = info->data.bufferUpdate.surround;
        c->work.src.old = c->work.oldSur;
        break;
      }

      switch (c->work.src.pitchHi) {
      case 0:
        do_src1(&c->work.src);
        break;
      case 1:
        do_src2(&c->work.src);
        break;
      }
    }

    c->work.currentPosHi = c->work.src.posHi % 480;
    c->work.currentPosLo = c->work.src.posLo;
    c->work.currentLast = nextCurrentLast;
    break;
  case SND_AUX_REASON_PARAMETERUPDATE:
    break;
  default:
  #line 957
    MUSY_ASSERT(FALSE);
    break;
  }
}

bool sndAuxCallbackUpdateSettingsChorus(SND_AUX_CHORUS* ch) {
  ch->work.currentPosHi = 0x140 - ((ch->baseDelay - 5) << 5);
  ch->work.currentPosLo = 0;
  ch->work.currentPosHi = (ch->work.currentPosHi + (ch->work.currentLast - 1) * 0xa0) % 0x1e0;
  ch->work.pitchOffsetPeriod = (ch->period / 5) + 1 & ~1;
  ch->work.pitchOffsetPeriodCount = (u32)ch->work.pitchOffsetPeriod >> 1;
  ch->work.pitchOffset = (ch->variation << 16) / (ch->work.pitchOffsetPeriod * 5);
  return TRUE;
}

bool sndAuxCallbackPrepareChorus(SND_AUX_CHORUS* chorus) {
  u32 i;
  s32* lastLeft;
  s32* lastRight;
  s32* lastSur;

  chorus->work.lastLeft[0] = (s32*)salMalloc(0x1680);

  if (chorus->work.lastLeft[0] != NULL) {
    chorus->work.lastRight[0] = chorus->work.lastLeft[0] + 0x1e0;
    chorus->work.lastSur[0] = chorus->work.lastRight[0] + 0x1e0;

    for (i = 1; i < 3; ++i) {
      chorus->work.lastLeft[i] = chorus->work.lastLeft[0] + i * 0xa0;
      chorus->work.lastRight[i] = chorus->work.lastRight[0] + i * 0xa0;
      chorus->work.lastSur[i] = chorus->work.lastSur[0] + i * 0xa0;
    }

    lastLeft = chorus->work.lastLeft[0];
    lastRight = chorus->work.lastRight[0];
    lastSur = chorus->work.lastSur[0];
    for (i = 0; i < 0x140; i += 1) {
      *lastLeft++ = 0;
      *lastRight++ = 0;
      *lastSur++ = 0;
    }

    chorus->work.currentLast = 1;
    chorus->work.oldLeft[0] = chorus->work.oldLeft[1] = chorus->work.oldLeft[2] = chorus->work.oldLeft[3] = 0;
    chorus->work.oldRight[0] = chorus->work.oldRight[1] = chorus->work.oldRight[2] = chorus->work.oldRight[3] = 0;
    chorus->work.oldSur[0] = chorus->work.oldSur[1] = chorus->work.oldSur[2] = chorus->work.oldSur[3] = 0;
    chorus->work.src.trigger = 480;
    chorus->work.src.target = 0;
    return sndAuxCallbackUpdateSettingsChorus(chorus);
  }
  return FALSE;
}

bool sndAuxCallbackShutdownChorus(SND_AUX_CHORUS* ch) {
  salFree(ch->work.lastLeft[0]);
  return TRUE;
}
