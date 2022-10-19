#ifndef _CTWEAKPLAYERCONTROL
#define _CTWEAKPLAYERCONTROL

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "MetroidPrime/CControlMapper.hpp"

#include "Kyoto/TOneStatic.hpp"

#include "rstl/reserved_vector.hpp"

class CInputStream;
class CTweakPlayerControl;

class CTweakPlayerControl : public ITweakObject {
public:
  CTweakPlayerControl(CInputStream&);
  ~CTweakPlayerControl() override;

  ControlMapper::EFunctionList GetMapping(ControlMapper::ECommands command) const;

private:
  rstl::reserved_vector< ControlMapper::EFunctionList, 67 > m_mappings;
};

#endif // _CTWEAKPLAYERCONTROL
