#include "GuiSys/CGuiFeeHelper.hpp"

TFunctor3R< const rstl::string&, const EEnumDatabaseTypes, int&, bool >
    CGuiFeeHelper::gGetEnumFromName;
TFunctor3< const rstl::string&, const int, const EEnumDatabaseTypes > CGuiFeeHelper::gPostProcessRead;
TFunctor2R< const int, const EEnumDatabaseTypes, rstl::string > CGuiFeeHelper::gGetNameFromEnum;
TFunctor2R< const rstl::string&, int&, bool > CGuiFeeHelper::gGetFontEnumFromName;
TFunctor1R< const int, rstl::string > CGuiFeeHelper::gGetFontNameFromEnum;
TFunctor3R< const rstl::string&, const rstl::string&, CGuiFuncParm&, bool >
    CGuiFeeHelper::gGetFuncParmFromString;
TFunctor3< const CGuiFuncParm&, rstl::string&, rstl::string& > CGuiFeeHelper::gGetParmTypeStringFromEnum;
CGuiFrame* CGuiFeeHelper::gkCurrentLoadingFrame = nullptr;
