#ifndef _CMAPAREA
#define _CMAPAREA

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
    CVector3f x0_normal;
    CVector3f xc_centroid;
    const int* x18_surfOffset;
    const int* x1c_outlineOffset;

  public:
    void PostConstruct(const void* buf);
    void Draw(const CVector3f* verts, const CColor& surfColor, const CColor& lineColor,
              float lineWidth) const;

    static void SetupGXMaterial();

    const CVector3f& GetNormal() const { return x0_normal; }
    const CVector3f& GetCenterPosition() const { return xc_centroid; }
  };
  enum EVisMode { kVM_Always, kVM_MapStationOrVisit, kVM_Visit, kVM_Never };

  CMapArea(CInputStream& in, uint size);
  ~CMapArea();

  void PostConstruct();
  bool GetIsVisibleToAutoMapper(bool worldVis, bool areaVis) const;
  CVector3f GetAreaCenterPoint() const;
  CTransform4f GetAreaPostTransform(const IWorld&, int);
  static const CVector3f& GetAreaPostTranslate(const IWorld&, int);

private:
  uint x0_magic;
  uint x4_version;
  uint x8_;
  EVisMode xc_visibilityMode;
  CAABox x10_box;
  int x28_mappableObjCount;
  int x2c_vertexCount;
  int x30_surfaceCount;
  uint x34_size;
  CMappableObject* x38_moStart;
  CVector3f* x3c_vertexStart;
  CMapAreaSurface* x40_surfaceStart;
  rstl::single_ptr< uchar > x44_buf;

  static int gUsedMemory;
};

CFactoryFnReturn FMapAreaFactory(const SObjectTag& objTag, CInputStream& in,
                                 const CVParamTransfer&);

#endif // _CMAPAREA
