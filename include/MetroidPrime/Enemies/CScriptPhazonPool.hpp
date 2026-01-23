#ifndef _CPHAZONPOOL
#define _CPHAZONPOOL
#include "Kyoto/Math/CRelAngle.hpp"
#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"

class CElementGen;
class CScriptPhazonPool : public CScriptTrigger {
public:
  CScriptPhazonPool(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                    const CTransform4f& xf, const CVector3f& scale, const bool active,
                    const CAssetId& w1, const CAssetId& w2, const CAssetId& w3, const CAssetId& w4,
                    const uint p11, const CDamageInfo& dInfo, const CVector3f& orientedForce,
                    const ETriggerFlags triggerFlags, const bool p15, const float p16,
                    const float p17, const float p18, const float p19);
  ~CScriptPhazonPool();

  void Render(const CStateManager&) const override;

  CModelFlags GetModelFlags() const { return CModelFlags::AlphaBlended(x1a4); }

private:
  rstl::list< rstl::pair< TUniqueId, bool > > mInhabitants;
  rstl::single_ptr< CModelData > mModelData1;
  rstl::single_ptr< CModelData > mModelData2;
  rstl::single_ptr< CElementGen > mElementGen1;
  rstl::single_ptr< CElementGen > mElementGen2;
  CAABox mBounds;
  CVector3f mScale;
  float x19c;
  float x1a0;
  float x1a4;
  float mRotY;
  float mRotZ;
  float x1b0;
  float x1b4;
  float x1b8;
  float x1bc;
  float x1c0;
  float x1c4;
  float x1c8;
  float x1cc;
  float x1d0;
  float x1d4;
  uint x1d8;
  uint x1dc;
  bool x1e0_24 : 1;
  bool x1e0_25 : 1;
};
#endif
