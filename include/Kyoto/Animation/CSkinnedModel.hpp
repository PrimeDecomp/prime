#ifndef _CSKINNEDMODEL
#define _CSKINNEDMODEL

#include "types.h"

#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"

class CModel;
class CSkinRules;
class CCharLayoutInfo;
class CVector3f;

class CSkinnedModel {
public:
  virtual ~CSkinnedModel();

  TLockedToken< CModel >& Model() { return x4_model; }
  const TLockedToken< CModel >& GetModel() const { return x4_model; }

  static void SetPointGeneratorFunc(void*, void (*)(void*, const CVector3f*, const CVector3f*, int));
  static void ClearPointGeneratorFunc();
  static void RemoveDummySkinnedModelRef();

private:
  TLockedToken< CModel > x4_model;
  TLockedToken< CSkinRules > x10_skinRules;
  TLockedToken< CCharLayoutInfo > x1c_layoutInfo;
  rstl::auto_ptr< float[] > x24_vertWorkspace;
  rstl::auto_ptr< float[] > x2c_normalWorkspace;
  bool x34_owned;
  bool x35_disableWorkspaces;
};

#endif // _CSKINNEDMODEL
