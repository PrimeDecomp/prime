#ifndef _CPATTERNEDCOLLISIONUTILS
#define _CPATTERNEDCOLLISIONUTILS

namespace CPatternedCollisionUtils {
struct SSphereJointInfo {
  const char* name;
  float radius;
};
struct SAABoxJointInfo {
  const char* name;
  float xExtent;
  float yExtent;
  float zExtent;
};
}; // namespace CPatternedCollisionUtils
#endif // MP1_CPATTERNEDCOLLISIONUTILS_HPP
