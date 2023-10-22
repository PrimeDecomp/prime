#include <GuiSys/CGuiWidgetIdDB.hpp>
#include <GuiSys/CGuiWidget.hpp>

CGuiWidgetIdDB::CGuiWidgetIdDB() {
  x0_db.reserve(4);
  AddWidget(rstl::string_l("kGSYS_DummyWidgetID"));
  AddWidget(rstl::string_l("kGSYS_HeadWidgetID"));
  AddWidget(rstl::string_l("kGSYS_DefaultCameraID"));
  AddWidget(rstl::string_l("kGSYS_DefaultLightID"));
}

void CGuiWidgetIdDB::Reserve(int size) {
  x0_db.reserve(size + x0_db.size());
}

int CGuiWidgetIdDB::AddWidget(const rstl::string& name) {
  short id = FindWidgetID(name);
  if (id == CGuiWidget::InvalidWidgetId()) {
    x0_db.push_back(name);
    id = x0_db.size() - 1;
  }

  return id;
}

short CGuiWidgetIdDB::FindWidgetID(const rstl::string& name) const {
  for (int i = 0; i < x0_db.size(); ++i) {
    if (x0_db[i] == name) {
      return i;
    }
  }

  return CGuiWidget::InvalidWidgetId();
}

static void keep_string() {
    static const char* derp ="not found";
}
