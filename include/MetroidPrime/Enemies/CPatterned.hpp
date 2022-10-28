#ifndef _CPATTERNED
#define _CPATTERNED

#include "MetroidPrime/Enemies/CAi.hpp"

template <typename T>
struct TPatternedCast {
  CEntity* ent;
  TPatternedCast(CEntity* ent);
};

class CPatterned : public CAi {

public:
  enum ECharacter {
    kC_AtomicAlpha = 0,
    kC_AtomicBeta = 1,
    kC_Babygoth = 2,
    kC_Beetle = 3,
    kC_BloodFlower = 4,
    kC_Burrower = 5,
    kC_ChozoGhost = 6,
    kC_Drone = 7,
    kC_ElitePirate = 8,
    kC_EyeBall = 9,
    kC_FireFlea = 10,
    kC_Flaahgra = 11,
    kC_FlaahgraTentacle = 12,
    kC_FlickerBat = 13,
    kC_FlyingPirate = 14,
    kC_IceSheegoth = 15,
    kC_JellyZap = 16,
    kC_Magdolite = 17,
    kC_Metaree = 18,
    kC_Metroid = 19,
    kC_MetroidBeta = 20,
    kC_MetroidPrimeExo = 21,
    kC_MetroidPrimeEssence = 22,
    kC_NewIntroBoss = 23,
    kC_Parasite = 24,
    kC_PuddleSpore = 27,
    kC_PuddleToad = 28,
    kC_Puffer = 29,
    kC_Ridley = 30,
    kC_Ripper = 31,
    kC_Seedling = 32,
    kC_SpacePirate = 34,
    kC_SpankWeed = 35,
    kC_PhazonHealingNodule = 35,
    kC_Thardus = 36,
    kC_ThardusRockProjectile = 37,
    kC_Tryclops = 38,
    kC_WarWasp = 39,
    kC_EnergyBall = 40
  };
  ~CPatterned();
  void Accept(IVisitor& visitor);
  void Death(CStateManager& mgr, const CVector3f& direction, EScriptObjectState state) {}
  void KnockBack(const CVector3f&, CStateManager&, const CDamageInfo& info, EKnockBackType type,
                 bool inDeferred, float magnitude){};

  ECharacter GetCharacterType() const { return x34c_characterType; }

  template < class T >
  static T* CastTo(const TPatternedCast<T>& ent);

private:
  char data[0xf4];
  ECharacter x34c_characterType;
  char data2[0x568 - 0x350];
};

#endif // _CPATTERNED
