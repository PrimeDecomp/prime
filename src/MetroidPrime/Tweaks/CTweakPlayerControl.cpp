#include "MetroidPrime/Tweaks/CTweakPlayerControl.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CTweakPlayerControl::~CTweakPlayerControl() {}

rstl::reserved_vector< ControlMapper::EFunctionList, 67 > LoadMappings(CInputStream& in) {
  rstl::reserved_vector< ControlMapper::EFunctionList, 67 > result;
  for (int i = 0; i < result.capacity(); ++i) {
    result.push_back(static_cast< ControlMapper::EFunctionList >(in.ReadLong()));
  }
  return result;
}

CTweakPlayerControl::CTweakPlayerControl(CInputStream& in) : m_mappings(LoadMappings(in)) {}

ControlMapper::EFunctionList
CTweakPlayerControl::GetMapping(ControlMapper::ECommands command) const {
  if (command < ControlMapper::kC_Forward || command > ControlMapper::kC_UNKNOWN - 1)
    return m_mappings[0];

  return m_mappings[command];
}
