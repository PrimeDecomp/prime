#ifndef _CTWEAKPLAYERCONTROL
#define _CTWEAKPLAYERCONTROL

#include "types.h"

#if VERSION >= VERSION_R3IJ_00

#include "Kyoto/Math/CMayaSpline.hpp"
#include "MetroidPrime/CControlMapper.hpp"
#include "MetroidPrime/Tweaks/ITweakObject.hpp"
#include "rstl/reserved_vector.hpp"

class CTweakPlayerControl : public ITweakObject {
public:
  // Descriptor type and field names are inferred from constructors and consumers.
  enum EControlType {
    kCT_None,
    kCT_Physical,
    kCT_PhysicalCombination,
    kCT_Virtual,
    kCT_VirtualCombination,
    kCT_VirtualMenu,
    kCT_Virtual2
  };
  enum EControlBoolean { kCB_And, kCB_Or, kCB_AndNot };
  enum EVirtualMenuShape { kVMS_Annulus, kVMS_Rectangle, kVMS_Sector };

  struct SControlAnnulus {
    SControlAnnulus();
    SControlAnnulus(float centerX, float centerY, float innerRadius, float outerRadius);
    ~SControlAnnulus();
    float x0_centerX;
    float x4_centerY;
    float x8_innerRadius;
    float xc_outerRadius;
  };
  struct SControlRectangle {
    SControlRectangle();
    ~SControlRectangle();
    float x0_centerX;
    float x4_centerY;
    float x8_width;
    float xc_height;
  };
  struct SControlSector {
    SControlSector();
    SControlSector(float centerX, float centerY, float innerRadius, float outerRadius,
                   float centerAngleDegrees, float sweepDegrees);
    ~SControlSector();
    float x0_centerX;
    float x4_centerY;
    float x8_innerRadius;
    float xc_outerRadius;
    float x10_centerAngleDegrees;
    float x14_sweepDegrees;
  };
  struct SPhysicalControl {
    SPhysicalControl();
    SPhysicalControl(CFinalInput::EPhysicalControl control, const CMayaSpline& response);
    ~SPhysicalControl();
    CFinalInput::EPhysicalControl x0_control;
    CMayaSpline x4_response;
  };
  struct SVirtualMenu {
    SVirtualMenu();
    SVirtualMenu(EVirtualMenuShape shape, const SControlAnnulus& annulus,
                 const SControlRectangle& rectangle, const SControlSector& sector);
    ~SVirtualMenu();
    EVirtualMenuShape x0_shape;
    SControlAnnulus x4_annulus;
    SControlRectangle x14_rectangle;
    SControlSector x24_sector;
  };
  struct SCommandDescription {
    SCommandDescription(const SCommandDescription& other);
    SCommandDescription(CControlMapper::ECommands command, EControlType type,
                        const SPhysicalControl& physical);
    SCommandDescription(CControlMapper::ECommands command, EControlType type,
                        CFinalInput::EMotionControl motion);
    SCommandDescription(CControlMapper::ECommands command, EControlType type,
                        const SPhysicalControl& primary, EControlBoolean operation,
                        const SPhysicalControl& secondary);
    SCommandDescription(CControlMapper::ECommands command, EControlType type,
                        const SVirtualMenu& menu);
    ~SCommandDescription();
    CControlMapper::ECommands x0_command;
    EControlType x4_type;
    SPhysicalControl x8_primary;
    EControlBoolean x4c_physicalBoolean;
    SPhysicalControl x50_secondary;
    CFinalInput::EMotionControl x94_primaryMotion;
    EControlBoolean x98_virtualBoolean;
    CFinalInput::EMotionControl x9c_secondaryMotion;
    CFinalInput::ESwingControl xa0_swing;
    SVirtualMenu xa4_virtualMenu;
  };

  explicit CTweakPlayerControl(uint controlPreset);
  ~CTweakPlayerControl() override;
  const SCommandDescription& GetCommandDescription(CControlMapper::ECommands command) const;
  CControlMapper::SCommandMapping GetCommandMapping(CControlMapper::ECommands command) const;
  const CMayaSpline& GetTurnLeftResponse() const;
  const CMayaSpline& GetTurnRightResponse() const;
  const CMayaSpline& GetCursorUpResponse() const { return x4_responseCurves[4]; }
  const CMayaSpline& GetCursorDownResponse() const { return x4_responseCurves[5]; }
  const CMayaSpline& GetCursorRightResponse() const { return x4_responseCurves[6]; }
  const CMayaSpline& GetCursorLeftResponse() const { return x4_responseCurves[7]; }
  const CMayaSpline& GetHeldCursorUpResponse() const { return x4_responseCurves[8]; }
  const CMayaSpline& GetHeldCursorDownResponse() const { return x4_responseCurves[9]; }
  const CMayaSpline& GetBallCursorHorizontalResponse() const { return x4_responseCurves[10]; }
  const CMayaSpline& GetBallCursorVerticalResponse() const { return x4_responseCurves[11]; }

private:
  CControlMapper::SCommandMapping
  GetMappingFromDescription(const SCommandDescription& description) const;
  void InitializeControls();

  rstl::reserved_vector< CMayaSpline, 16 > x4_responseCurves;
  uint x408_controlPreset;
  rstl::reserved_vector< SCommandDescription, 91 > x40c_commands;
};
CHECK_SIZEOF(CTweakPlayerControl, 0x53b0)

#else

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

#endif

#endif // _CTWEAKPLAYERCONTROL
