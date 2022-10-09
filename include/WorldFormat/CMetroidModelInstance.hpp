#ifndef _CMETROIDMODELINSTANCE
#define _CMETROIDMODELINSTANCE

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CAABox.hpp"

#include "rstl/vector.hpp"

class CMetroidModelInstance {
public:
  CMetroidModelInstance(const void* header, const void* firstGeom,
                                               const void* positions, const void* normals,
                                               const void* colors, const void* uvs,
                                               const void* packedUvs,
                                               const rstl::vector< void* >& surfaces);
};

#endif // _CMETROIDMODELINSTANCE
