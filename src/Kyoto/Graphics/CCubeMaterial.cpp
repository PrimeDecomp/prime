#include "Kyoto/Graphics/CCubeMaterial.hpp"

#include "Kyoto/Math/CTransform4f.hpp"

CVector3f sPlayerPosition;
CVector3f CCubeMaterial::sViewingFrom;
static CTransform4f sTextureProjectionTransform = CTransform4f::Identity();

void CCubeMaterial::SetupBlendMode(u32 blendFactors, const CModelFlags& flags, bool alphaTest) {

}