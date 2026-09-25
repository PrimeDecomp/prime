#ifndef _CMAPAREA
#define _CMAPAREA

#include <stdint.h>

#include "MetroidPrime/CMappableObject.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class IWorld;

class CMapArea {
public:
  class CMapAreaSurface {
    friend class CMapArea;
    CVector3f mNormal;
    CVector3f mCentroid;
    const int* mSurfOffset;
    const int* mOutlineOffset;

  public:
#if UINTPTR_MAX > UINT32_MAX
    CMapAreaSurface(CInputStream& in, const void* buf);
#else
    void PostConstruct(const void* buf);
#endif
    void Draw(const CVector3f* verts, const CColor& surfColor, const CColor& lineColor,
              float lineWidth) const;

    static void SetupGXMaterial();

    CVector3f GetNormal() const { return mNormal; }
    CVector3f GetCenterPosition() const { return mCentroid; }
  };
  enum EVisMode { kVM_Always, kVM_MapStationOrVisit, kVM_Visit, kVM_Never };

  CMapArea(CInputStream& in, uint size);
  ~CMapArea();

  int GetNumMappableObjects() const { return mMappableObjCount; }
  const CMappableObject& GetMappableObject(int idx) const { return mMoStart[idx]; }
  int GetNumSurfaces() const { return mSurfaceCount; }
  const CMapAreaSurface& GetSurface(int idx) const { return mSurfaceStart[idx]; }
  const CVector3f* GetVertices() const { return mVertexStart; }

  void PostConstruct();
  bool GetIsVisibleToAutoMapper(bool worldVis, bool areaVis) const;
  CVector3f GetAreaCenterPoint() const;
  const CAABox& GetBoundingBox() const { return mBox; }
  CTransform4f GetAreaPostTransform(const IWorld&, int);
  static const CVector3f& GetAreaPostTranslate(const IWorld&, int);

private:
  uint mMagic;
  uint mVersion;
  uint x8_;
  EVisMode mVisibilityMode;
  CAABox mBox;
  int mMappableObjCount;
  int mVertexCount;
  int mSurfaceCount;
  uint mSize;
  CMappableObject* mMoStart;
  CVector3f* mVertexStart;
  CMapAreaSurface* mSurfaceStart;
  rstl::single_ptr< uchar > mBuf;

#if UINTPTR_MAX > UINT32_MAX
  rstl::vector< CMapAreaSurface > mNativeSurfaces;
#endif

  static int gUsedMemory;
};

const CFactoryFnReturn FMapAreaFactory(const SObjectTag& objTag, CInputStream& in,
                                 const CVParamTransfer&);

#endif // _CMAPAREA
