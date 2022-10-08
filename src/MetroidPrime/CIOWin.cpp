#include "MetroidPrime/CIOWin.hpp"

CIOWin::CIOWin(const rstl::string& name) : x4_name(name) {}

CIOWin::~CIOWin() {}

const rstl::string& CIOWin::GetName() const { return x4_name; }

bool CIOWin::GetIsContinueDraw() const { return true; }

void CIOWin::Draw() const {}

void CIOWin::PreDraw() const {}
