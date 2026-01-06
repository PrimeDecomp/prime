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
  CAnimationDatabase()
  : x4_(false ? rstl::optional_object< CToken >() : rstl::optional_object_null()) {}

  virtual ~CAnimationDatabase();
  virtual const rstl::rc_ptr< CAnimTreeNode >
  GetAnimationTree(const CAnimSysContext& ctx, const CMetaAnimTreeBuildOrders& orders) const = 0;
  virtual const rstl::rc_ptr< IMetaAnim >& GetMetaAnim(uint idx) const = 0;
  virtual uint GetNumMetaAnims() const = 0;
  virtual rstl::string GetMetaAnimName(uint idx) const = 0;
  virtual void GetAllUniquePrimitives(rstl::vector< CPrimitive >& primsOut) const = 0;
  virtual void GetUniquePrimitivesFromMetaAnim(rstl::set< CPrimitive >& primsOut,
                                               const rstl::string& name) const = 0;

private:
  rstl::optional_object< CToken > x4_;
};

#endif // _CANIMATIONDATABASE
