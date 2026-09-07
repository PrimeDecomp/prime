#ifndef _CANIMATIONDATABASE
#define _CANIMATIONDATABASE

#include "Kyoto/TToken.hpp"

#include <rstl/optional_object.hpp>
#include <rstl/rc_ptr.hpp>
#include <rstl/set.hpp>
#include <rstl/string.hpp>
#include <rstl/vector.hpp>

class CPrimitive;
class CAnimation;
class CAnimTreeNode;
class CAnimSysContext;
class CMetaAnimTreeBuildOrders;
class IMetaAnim;

class CAnimationDatabase {
public:
  virtual const rstl::rc_ptr< IMetaAnim >& GetMetaAnim(uint idx) const = 0;
  virtual uint GetNumMetaAnims() const = 0;
  virtual rstl::string GetMetaAnimName(uint idx) const = 0;
  virtual void GetAllUniquePrimitives(rstl::vector< CPrimitive >& primsOut) const = 0;
  virtual void GetUniquePrimitivesFromMetaAnim(rstl::set< CPrimitive >& primsOut,
                                               const rstl::string& name) const = 0;

  explicit CAnimationDatabase(
      const rstl::optional_object< TToken< CAnimationDatabase > >& token = rstl::optional_object_null())
  : x4_(token) {}
  ~CAnimationDatabase() {}

private:
  rstl::optional_object< TToken< CAnimationDatabase > > x4_;
};

CHECK_SIZEOF(CAnimationDatabase, 0x10)

#endif // _CANIMATIONDATABASE
