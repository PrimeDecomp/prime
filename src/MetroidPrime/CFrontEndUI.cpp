#include "MetroidPrime/CFrontEndUI.hpp"
#include "Kyoto/Basics/RAssertDolphin.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/SFX/FrontEnd.h"

struct FEMovie {
  const char* path;
  bool loop;
};

static const SObjectTag skDefaultWorld('MLVL', 0x158EFE17);
static const FEMovie FEMovies[] = {
    {"Video/00_first_start.thp", false},
    {"Video/01_startloop.thp", true},
    {"Video/02_start_fileselect_A.thp", false},
    {"Video/03_fileselectloop.thp", true},
    {"Video/04_fileselect_playgame_A.thp", false},
    {"Video/06_fileselect_GBA.thp", false},
    {"Video/07_GBAloop.thp", true},
    {"Video/08_GBA_fileselect.thp", false},
    {nullptr, false},
};

const char MetroidBuildInfo[] = BUILD_INFO;
const char* BuildTime = MetroidBuildInfo + BUILD_INFO_TAG_SIZE;

static const u16 FETransitionBackSFX[3][2] = {
    {SFXfnt_transfore_00L, SFXfnt_transfore_00R},
    {SFXfnt_transfore_01L, SFXfnt_transfore_01R},
    {SFXfnt_transfore_02L, SFXfnt_transfore_02R},
};

static const u16 FETransitionForwardSFX[3][2] = {
    {SFXfnt_transback_00L, SFXfnt_transback_00R},
    {SFXfnt_transback_01L, SFXfnt_transback_01R},
    {SFXfnt_transback_02L, SFXfnt_transback_02R},
};

static const float AudioFadeTimeB[3] = {
    4.1999998f,
    6.0999999f,
    6.0999999f,
};

static const float AudioFadeTimeA[3] = {
    0.43999997f,
    5.4100003f,
    3.4100003f,
};

static const CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::EUIType NextLinkUI[10] = {
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_ConnectSocket,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_PressStartAndSelect,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_BeginLink,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Linking,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_TurnOffGBA,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Complete,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_InsertPak,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
};

static const CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::EUIType PrevLinkUI[10] = {
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Cancelled,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
    CFrontEndUI::SFusionBonusFrame::SGBALinkFrame::kUIT_Empty,
};
