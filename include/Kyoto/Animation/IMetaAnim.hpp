#ifndef _IMETAANIM
#define _IMETAANIM

#include "Kyoto/Animation/CCharAnimTime.hpp"

#include <rstl/optional_object.hpp>
#include <rstl/rc_ptr.hpp>
#include <rstl/set.hpp>
#include <rstl/string.hpp>

enum EMetaAnimType {
  kMAT_Play,
  kMAT_Blend,
  kMAT_PhaseBlend,
  kMAT_Random,
  kMAT_Sequence,
};

class CAnimTreeNode;
class CPrimitive;
class CCharAnimTime;
class IAnimReader;
class CAnimSysContext;

class CPreAdvanceIndicator {
  bool mIsTime;
  CCharAnimTime mTime;
  rstl::string mString;
  uint unk1;
  uint unk2;
  uint unk3;
  uint unk4;
  uint unk5;
  uint unk6;
  uint unk7;
  uint unk8;
  uint unk9;

public:
  explicit CPreAdvanceIndicator(const CCharAnimTime& time) : mIsTime(true), mTime(time) {}
  explicit CPreAdvanceIndicator(const rstl::string& string) : mIsTime(false), mString(string) {}
  bool IsTime() const;
  const CCharAnimTime& GetTime() const;

  bool IsString() const;
  const rstl::string& GetString() const;
};

class CMetaAnimTreeBuildOrders {
  rstl::optional_object< CPreAdvanceIndicator > mRecursiveAdvance;
  rstl::optional_object< CPreAdvanceIndicator > mSingleAdvance;

  static CMetaAnimTreeBuildOrders NoSpecialOrders();
  static CMetaAnimTreeBuildOrders PreAdvanceForAll(const CPreAdvanceIndicator& ind);
};

class IMetaAnim {
public:
  virtual ~IMetaAnim();

  virtual rstl::rc_ptr< CAnimTreeNode >
  GetAnimationTree(const CAnimSysContext& animSys, const CMetaAnimTreeBuildOrders& orders) const;
  virtual void GetUniquePrimitives(rstl::set< CPrimitive >& primsOut) const = 0;
  virtual EMetaAnimType GetType() const = 0;
  virtual rstl::rc_ptr< CAnimTreeNode >
  VGetAnimationTree(const CAnimSysContext& animSys,
                    const CMetaAnimTreeBuildOrders& orders) const = 0;

  static void AdvanceAnim(IAnimReader& anim, const CCharAnimTime& dt);
  static CCharAnimTime GetTime(const CPreAdvanceIndicator& ind, const IAnimReader& anim);
};

#endif // _IMETAANIM
