#include "dolphin/DVDPriv.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/os.h"
#include "dolphin/vi.h"

void __DVDPrintFatalMessage(void);

static void (*FatalFunc)(void) = NULL;

const char* Japanese = "\n\n\nエラーが発生しました。"
                       "\n\n本体のパワーボタンを押して電源をOFFにし、"
                       "\n本体の取扱説明書の指示に従ってください。";

const char* English = "\n\n\nAn error has occurred."
                      "\nTurn the power off and refer to the"
                      "\nNintendo GameCube Instruction Booklet"
                      "\nfor further instructions.";

const char* const Europe[] = {
    // English
    "\n\n\nAn error has occurred."
    "\nTurn the power off and refer to the"
    "\nNintendo GameCube""\x99"" Instruction Booklet"
    "\nfor further instructions.",

    // German
    "\n\n\nEin Fehler ist aufgetreten."
    "\nBitte schalten Sie den NINTENDO GAMECUBE"
    "\naus und lesen Sie die Bedienungsanleitung,"
    "\num weitere Informationen zu erhalten.",

    // French
    "\n\n\nUne erreur est survenue."
    "\nEteignez la console et r" "\xe9" "f" "\xe9" "rez-vous au"
    "\nmanuel d'instructions NINTENDO GAMECUBE"
    "\npour de plus amples informations.",

    // Spanish
    "\n\n\nSe ha producido un error."
    "\nApaga la consola y consulta el manual"
    "\nde instrucciones de NINTENDO GAMECUBE"
    "\npara obtener m""\xe1""s informaci""\xf3""n.",

    // Italian
    "\n\n\nSi \xe8 verificato un errore."
    "\nSpegni (OFF) e controlla il manuale"
    "\nd'istruzioni del NINTENDO GAMECUBE"
    "\nper ulteriori indicazioni.",

    // Dutch
    "\n\n\nEr is een fout opgetreden."
    "\nZet de NINTENDO GAMECUBE uit en"
    "\nraadpleeg de handleiding van de"
    "\nNintendo GameCube voor nadere"
    "\ninstructies.",
};

static void ShowMessage(void) {
  const char* message;
  GXColor bg = {0, 0, 0, 0};
  GXColor fg = {255, 255, 255, 0};

  if (VIGetTvFormat() == VI_NTSC) {
    if (OSGetFontEncode() == OS_FONT_ENCODE_SJIS) {
      message = Japanese;
    } else {
      message = English;
    }
  } else {
    message = Europe[OSGetLanguage()];
  }

  OSFatal(fg, bg, message);
}

#ifdef FULL_FRANK
BOOL DVDSetAutoFatalMessaging(BOOL enable) {
  BOOL enabled;
  BOOL prev;

  enabled = OSDisableInterrupts();
  prev = FatalFunc ? TRUE : FALSE;
  FatalFunc = enable ? ShowMessage : NULL;
  OSRestoreInterrupts(enabled);
  return prev;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL DVDSetAutoFatalMessaging(BOOL enable) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x18(r1)
  stw r31, 0x14(r1)
  stw r30, 0x10(r1)
  mr r30, r3
  bl OSDisableInterrupts
  lwz r0, FatalFunc
  cmplwi r0, 0
  beq lbl_80374DFC
  li r31, 1
  b lbl_80374E00
lbl_80374DFC:
  li r31, 0
lbl_80374E00:
  cmpwi r30, 0
  beq lbl_80374E14
  lis r4, ShowMessage@ha
  addi r0, r4, ShowMessage@l
  b lbl_80374E18
lbl_80374E14:
  li r0, 0
lbl_80374E18:
  stw r0, FatalFunc
  bl OSRestoreInterrupts
  mr r3, r31
  lwz r0, 0x1c(r1)
  lwz r31, 0x14(r1)
  lwz r30, 0x10(r1)
  addi r1, r1, 0x18
  mtlr r0
  blr
}
#pragma pop
/* clang-format off */
#endif 

void __DVDPrintFatalMessage(void) {
  if (!FatalFunc) {
    return;
  }
  FatalFunc();
}
