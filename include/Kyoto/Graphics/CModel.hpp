#ifndef _CMODEL
#define _CMODEL

#include "Kyoto/CFactoryFnReturn.hpp"

#include <Kyoto/Graphics/CCubeModel.hpp>
#include <Kyoto/Graphics/CTexture.hpp>
#include <Kyoto/TToken.hpp>

#include <rstl/auto_ptr.hpp>
#include <rstl/single_ptr.hpp>
#include <rstl/vector.hpp>

class CModelFlags;
class IObjectStore;
class CCubeSurface;
class CModel {
  struct SShader {
    rstl::vector< TCachedToken< CTexture > > x0_textures;
    uchar* x10_data;

    SShader(uchar* data) : x10_data(data) {};

    void UnlockTextures();
  };
  static uint sTotalMemory;
  static CModel* sThisFrameList;
  static CModel* sOneFrameList;
  static CModel* sTwoFrameList;

public:
  CModel(const rstl::auto_ptr< uchar >& data, int length, IObjectStore& store);
  ~CModel();
  void Touch(int) const;
  void Draw(const CModelFlags&) const;
  void Draw(const float* positions, const float* normals, const CModelFlags& flags) const;
  bool IsLoaded(int matIdx) const;
  const float* GetPositions() const;
  const float* GetNormals() const;
  void UpdateLastFrame() const;

  const CCubeModel* GetCubeModel() const { return x28_modelInstance.get(); }

  static void DisableTextureTimeout();
  static void EnableTextureTimeout();
  static void FrameDone();
  static void AddToTotal(uint amt) { sTotalMemory += amt; }
  static void RemoveFromTotal(uint amt) { sTotalMemory -= amt; }
  static uint GetTotalMemory() { return sTotalMemory; }

  void RemoveFromList() const;
  void MoveToThisFrameList() const;
  void VerifyCurrentShader(int shader) const;

  void UnlockTextures() {
    rstl::vector< SShader >::iterator matIter;
    for (matIter = x18_matSets.begin() + 1; matIter != x18_matSets.end(); ++matIter) {
      matIter->UnlockTextures();
    }
    x28_modelInstance->UnlockTextures();
  }

private:
  rstl::single_ptr< uchar > x0_data;
  uint x4_dataLen;
  rstl::vector< void* > x8_surfaces;
  rstl::vector< SShader > x18_matSets;
  rstl::single_ptr< CCubeModel > x28_modelInstance;
  ushort x2c_currentMatxIdx;
  ushort x2e_lastMaterialFrame;
  mutable CModel* x30_prev;
  mutable CModel* x34_next;
  mutable uint x38_lastFrame;
};

CFactoryFnReturn FModelFactory(const SObjectTag& tag, const rstl::auto_ptr< uchar >& ptr, int len,
                               const CVParamTransfer& xfer);
#endif // _CMODEL
