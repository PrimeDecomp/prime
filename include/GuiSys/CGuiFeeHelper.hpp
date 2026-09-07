#ifndef _CGUIFEEHELPER
#define _CGUIFEEHELPER

#include "Kyoto/TFunctor.hpp"
#include "rstl/string.hpp"

class CGuiFrame;
class CGuiFuncParm;

// The editor's database identifiers have not yet been recovered.
enum EEnumDatabaseTypes {};

class CGuiFeeHelper {
public:
  static void SetCurrentLoadingFrame(CGuiFrame* frame) { gkCurrentLoadingFrame = frame; }

private:
  static TFunctor3R< const rstl::string&, const EEnumDatabaseTypes, int&, bool > gGetEnumFromName;
  static TFunctor3< const rstl::string&, const int, const EEnumDatabaseTypes > gPostProcessRead;
  static TFunctor2R< const int, const EEnumDatabaseTypes, rstl::string > gGetNameFromEnum;
  static TFunctor2R< const rstl::string&, int&, bool > gGetFontEnumFromName;
  static TFunctor1R< const int, rstl::string > gGetFontNameFromEnum;
  static TFunctor3R< const rstl::string&, const rstl::string&, CGuiFuncParm&, bool > gGetFuncParmFromString;
  static TFunctor3< const CGuiFuncParm&, rstl::string&, rstl::string& > gGetParmTypeStringFromEnum;
  static CGuiFrame* gkCurrentLoadingFrame;
};

#endif // _CGUIFEEHELPER
