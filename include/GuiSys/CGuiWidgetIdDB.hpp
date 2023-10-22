#ifndef _CGUIWIDGETIDDB
#define _CGUIWIDGETIDDB

#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CGuiWidgetIdDB {
public:
  CGuiWidgetIdDB();
  void Reserve(int);
  int AddWidget(const rstl::string& name);
  short FindWidgetID(const rstl::string& name) const;
private:
  rstl::vector< rstl::string > x0_db;
};

#endif // _CGUIWIDGETIDDB
