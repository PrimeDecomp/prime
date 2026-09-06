#ifndef _CGUIFEEHELPER
#define _CGUIFEEHELPER

class CGuiFrame;

class CGuiFeeHelper {
public:
  static void SetCurrentLoadingFrame(CGuiFrame* frame) { gkCurrentLoadingFrame = frame; }

private:
  static CGuiFrame* gkCurrentLoadingFrame;
};

#endif // _CGUIFEEHELPER
