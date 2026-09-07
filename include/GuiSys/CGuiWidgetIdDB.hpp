#ifndef _CGUIWIDGETIDDB
#define _CGUIWIDGETIDDB

#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CGuiWidgetIdDB {
public:
  CGuiWidgetIdDB();
  void Reserve(int);
  const short AddWidget(const rstl::string& name);
  const short FindWidgetID(const rstl::string& name) const;

private:
  rstl::vector< rstl::string > x0_db;
  short x10_lastPoolId;
};

CHECK_SIZEOF(CGuiWidgetIdDB, 0x14);

#endif // _CGUIWIDGETIDDB
