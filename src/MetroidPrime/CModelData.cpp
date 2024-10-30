#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/Factories/CCharacterFactoryBuilder.hpp"
#include <MetroidPrime/CModelData.hpp>

static const CAdvancementDeltas skNullAdvance(CVector3f::Zero(), CQuaternion::NoRotation());

CModelData::CModelData(const CStaticRes& res)
: x0_scale(res.GetScale())
, x14_24_renderSorted(false)
, x14_25_sortThermal(false)
, x18_ambientColor(CColor::White())
, x1c_normalModel(gpSimplePool->GetObj(SObjectTag('CMDL', res.GetId()))) {}

CModelData::CModelData()
: x0_scale(1.f, 1.f, 1.f)
, x14_24_renderSorted(false)
, x14_25_sortThermal(false)
, x18_ambientColor(CColor::White()) {}

CModelData::CModelData(const CAnimRes& res)
: x0_scale(res.GetScale())
, x14_24_renderSorted(false)
, x14_25_sortThermal(false)
, x18_ambientColor(CColor::White()) {
}
