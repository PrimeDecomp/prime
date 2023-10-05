#ifndef _CFRONTENDUI
#define _CFRONTENDUI

#include "MetroidPrime/CIOWin.hpp"

class CFrontEndUI : public CIOWin { 
public:
  struct SFusionBonusFrame {
    struct SGBALinkFrame {
      enum EUIType {
        kUIT_Empty = -1,
        kUIT_InsertPak = 0,
        kUIT_ConnectSocket = 1,
        kUIT_PressStartAndSelect = 2,
        kUIT_BeginLink = 3,
        kUIT_Linking = 4,
        kUIT_LinkFailed = 5,
        kUIT_LinkCompleteOrLinking = 6,
        kUIT_TurnOffGBA = 7,
        kUIT_Complete = 8,
        kUIT_Cancelled = 9
      };
    };
  };
  CFrontEndUI();


  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue);

private:
  uchar pad[0xe4];
};

#endif // _CFRONTENDUI
