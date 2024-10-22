#ifndef _CMODEL
#define _CMODEL

#include "Kyoto/Graphics/CCubeModel.hpp"
#include "rstl/single_ptr.hpp"
#include <Kyoto/Graphics/CTexture.hpp>
#include <Kyoto/TToken.hpp>
#include <rstl/auto_ptr.hpp>
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
  void Touch(int) const;
  void Draw(const CModelFlags&) const;
  bool IsLoaded(int matIdx) const;

  static void AddToTotal(uint amt) { sTotalMemory += amt; }
  static void RemoveFromTotal(uint amt) { sTotalMemory -= amt; }

private:
  rstl::auto_ptr< uchar > x0_data;
  uint x4_dataLen;
  rstl::vector< CCubeSurface* > x8_surfaces;
  rstl::vector<SShader> x18_matSets;
  rstl::single_ptr<CCubeModel> x28_modelInstance;
  ushort x2c_currentMatxIdx;
  ushort x2e_lastMaterialFrame;
  CModel* x30_prev;
  CModel* x34_next;
  uint x38_lastFrame;
};

#endif // _CMODEL
