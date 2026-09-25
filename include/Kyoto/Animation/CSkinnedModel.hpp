#ifndef _CSKINNEDMODEL
#define _CSKINNEDMODEL

#include "types.h"

#include "Kyoto/Animation/CSkinRules.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"

class CModel;
class CModelFlags;
class CCharLayoutInfo;
class CPoseAsTransforms;
class CVector3f;
class CVertexMorphEffect;

typedef void (*TDrawFunc)(const float*, const float*, const void*);

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

  TLockedToken< CModel >& Model() { return mModel; }
  const TLockedToken< CModel >& GetModel() const { return mModel; }
  const TLockedToken< CCharLayoutInfo >& GetLayoutInfo() const { return mLayoutInfo; }
  void SetLayoutInfo(const TLockedToken< CCharLayoutInfo >& layout) { mLayoutInfo = layout; }

  void CalculateDefault();
  int GetNumPoints() const { return mSkinRules->GetNumPoints(); }
  const CVector3f* GetPositions() const;
  void Calculate(const CPoseAsTransforms&, const rstl::optional_object< CVertexMorphEffect >&,
                 const float*, float*);
  void Draw(const CModelFlags&) const;
  void Draw(const float* positions, const float* normals, const CModelFlags& flags) const;
  void Draw(TDrawFunc func, void* data);
  void PostDrawFunc() const;

  float* AllocateNewWorkspace(float** nrmOut);

  static void SetPointGeneratorFunc(void*,
                                    void (*)(void*, const CVector3f*, const CVector3f*, int));
  static void ClearPointGeneratorFunc();
#if VERSION >= VERSION_GM8P_00 && VERSION != VERSION_GM8E_02
  static void SetSkinningBuffer(void* buffer, int size);
#endif
  static void AddDummySkinnedModelRef();
  static void RemoveDummySkinnedModelRef();

  void Construct();
  void AllocateStorage();
  static void TickAllocations();
  static void* EnsureAllocation(int size);

  typedef void (*TPointGenFunc)(void*, const CVector3f*, const CVector3f*, int);
  static TPointGenFunc sPointGen;
  static void* sPointGenData;

  static void Draw(const TDrawFunc func, const float* positions, const float* normals, void* data) {
    func(positions, normals, data);
  }

private:
  TLockedToken< CModel > mModel;
  TLockedToken< CSkinRules > mSkinRules;
  TLockedToken< CCharLayoutInfo > mLayoutInfo;
  mutable rstl::auto_ptr< float > mVertWorkspace;
  mutable rstl::auto_ptr< float > mNormalWorkspace;
  bool mOwned;
  bool mDisableWorkspaces;
};

class CSkinnedModelWithAvgNormals {
  CSkinnedModel mSkinnedModel;
  rstl::auto_ptr< float > mAvgNormals;

public:
  CSkinnedModelWithAvgNormals(const CSkinnedModel& model);
  const CSkinnedModel& GetSkinnedModel() const { return mSkinnedModel; }
  float* GetAvgNormals() const { return mAvgNormals.get(); }
};

#endif // _CSKINNEDMODEL
