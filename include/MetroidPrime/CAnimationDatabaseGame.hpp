#ifndef _CANIMATIONDATABASEGAME
#define _CANIMATIONDATABASEGAME

#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/set.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CPrimitive;
class CAnimation;
class IMetaAnim;

class CAnimationDatabase {
public:
  CAnimationDatabase()
  : x4_(false ? rstl::optional_object< CToken >() : rstl::optional_object_null()) {}

  virtual ~CAnimationDatabase();
  virtual const rstl::rc_ptr< IMetaAnim >& GetMetaAnim(uint idx) const = 0;
  virtual uint GetNumMetaAnims() const = 0;
  virtual rstl::string GetMetaAnimName(uint idx) const = 0;
  virtual void GetAllUniquePrimitives(rstl::vector< CPrimitive >& primsOut) const = 0;
  virtual void GetUniquePrimitivesFromMetaAnim(rstl::set< CPrimitive >& primsOut,
                                               const rstl::string& name) const = 0;

private:
  rstl::optional_object< CToken > x4_;
};

class CAnimationDatabaseGame : public CAnimationDatabase {
public:
  explicit CAnimationDatabaseGame(const rstl::vector< CAnimation >& anims);

  const rstl::rc_ptr< IMetaAnim >& GetMetaAnim(uint idx) const;
  uint GetNumMetaAnims() const;
  rstl::string GetMetaAnimName(uint idx) const;
  void GetAllUniquePrimitives(rstl::vector< CPrimitive >& primsOut) const;
  void GetUniquePrimitivesFromMetaAnim(rstl::set< CPrimitive >& primsOut,
                                       const rstl::string& name) const;

private:
  rstl::vector< rstl::rc_ptr< IMetaAnim > > x10_anims;
};

#endif // _CANIMATIONDATABASEGAME
