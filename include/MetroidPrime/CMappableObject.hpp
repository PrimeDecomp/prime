#ifndef _CMAPPABLEOBJECT
#define _CMAPPABLEOBJECT

#include "MetroidPrime/TGameTypes.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

class CMappableObject {
public:
  enum EMappableObjectType {
    kMOT_BlueDoor = 0,
    kMOT_ShieldDoor = 1,
    kMOT_IceDoor = 2,
    kMOT_WaveDoor = 3,
    kMOT_PlasmaDoor = 4,
    kMOT_BigDoor1 = 5,
    kMOT_BigDoor2 = 6,
    kMOT_IceDoorCeiling = 7,
    kMOT_IceDoorFloor = 8,
    kMOT_WaveDoorCeiling = 9,
    kMOT_WaveDoorFloor = 10,
    kMOT_PlasmaDoorCeiling = 11,
    kMOT_PlasmaDoorFloor = 12,
    kMOT_IceDoorFloor2 = 13,
    kMOT_WaveDoorFloor2 = 14,
    kMOT_PlasmaDoorFloor2 = 15,
    kMOT_DownArrowYellow = 27, /* Maintenance Tunnel */
    kMOT_UpArrowYellow = 28,   /* Phazon Processing Center */
    kMOT_DownArrowGreen = 29,  /* Elevator A */
    kMOT_UpArrowGreen = 30,    /* Elite Control Access */
    kMOT_DownArrowRed = 31,    /* Elevator B */
    kMOT_UpArrowRed = 32,      /* Fungal Hall Access */
    kMOT_TransportLift = 33,
    kMOT_SaveStation = 34,
    kMOT_MissileStation = 37
  };

  enum EVisMode { kVM_Always, kVM_MapStationOrVisit, kVM_Visit, kVM_Never, kVM_MapStationOrVisit2 };

  void PostConstruct(const void*);

private:
  EMappableObjectType x0_type;
  EVisMode x4_visibilityMode;
  TEditorId x8_objId;
  uint xc_;
  CTransform4f x10_transform;
  uchar x40_pad[0x10];
};
CHECK_SIZEOF(CMappableObject, 0x50)

#endif // _CMAPPABLEOBJECT
