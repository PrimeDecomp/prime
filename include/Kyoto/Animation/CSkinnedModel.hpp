#ifndef _CSKINNEDMODEL
#define _CSKINNEDMODEL

#include "types.h"

#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"

class CModel;
class CModelFlags;
class CSkinRules;
class CCharLayoutInfo;
class CPoseAsTransforms;
class CVector3f;
class CVertexMorphEffect;

class CSkinnedModel {
public:
  enum EDataOwnership {
    kDO_Unowned,
    kDO_Owned,
  };

  CSkinnedModel(const CSkinnedModel&);
  CSkinnedModel(const TLockedToken< CModel >&, const TLockedToken< CSkinRules >&,
                const TLockedToken< CCharLayoutInfo >&, EDataOwnership);
  virtual ~CSkinnedModel();

  TLockedToken< CModel >& Model() { return x4_model; }
  const TLockedToken< CModel >& GetModel() const { return x4_model; }
  const TLockedToken< CCharLayoutInfo >& GetLayoutInfo() const { return x1c_layoutInfo; }

  void CalculateDefault();
  int GetNumPoints() const;
  const CVector3f* GetPositions() const;
  void Calculate(const CPoseAsTransforms&, const rstl::optional_object< CVertexMorphEffect >&,
                 const float*, float*);
  void Draw(const CModelFlags&) const;

  static void SetPointGeneratorFunc(void*, void (*)(void*, const CVector3f*, const CVector3f*, int));
  static void ClearPointGeneratorFunc();
  static void RemoveDummySkinnedModelRef();

private:
  TLockedToken< CModel > x4_model;
  TLockedToken< CSkinRules > x10_skinRules;
  TLockedToken< CCharLayoutInfo > x1c_layoutInfo;
  rstl::auto_ptr< float[] > x28_vertWorkspace;
  rstl::auto_ptr< float[] > x30_normalWorkspace;
  bool x38_owned;
  bool x39_disableWorkspaces;
  uchar x3a_pad[6];
};

class CSkinnedModelWithAvgNormals {
  CSkinnedModel x0_skinnedModel;
  const float* x40_avgNormals;

public:
  const CSkinnedModel& GetSkinnedModel() const { return x0_skinnedModel; }
  const float* GetAvgNormals() const { return x40_avgNormals; }
};

#endif // _CSKINNEDMODEL
