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

BOOL DVDSetAutoFatalMessaging(BOOL enable) {
  BOOL enabled;
  BOOL prev;

  enabled = OSDisableInterrupts();
  prev = FatalFunc ? TRUE : FALSE;
  FatalFunc = enable ? ShowMessage : NULL;
  OSRestoreInterrupts(enabled);
  return prev;
}

void __DVDPrintFatalMessage(void) {
  if (!FatalFunc) {
    return;
  }
  FatalFunc();
}
