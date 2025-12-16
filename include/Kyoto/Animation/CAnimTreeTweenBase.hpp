#ifndef _CANIMTREETWEENBASE
#define _CANIMTREETWEENBASE

#include "Kyoto/Animation/CAnimTreeDoubleChild.hpp"

class CAnimTreeTweenBase : public CAnimTreeDoubleChild {
  static s32 sAdvancementDepth;

protected:
  int x1c_flags;
  u32 x20_24_b1 : 1;
  u32 x20_25_cullSelector : 2;

public:
  CAnimTreeTweenBase(bool, const rstl::ncrc_ptr< CAnimTreeNode >& a,
                     const rstl::ncrc_ptr< CAnimTreeNode >& b, int, const rstl::string& name);
  ~CAnimTreeTweenBase() override;

  virtual void SetBlendingWeight(float w) = 0;

  float GetBlendingWeight() const;

  void VGetWeightedReaders(
      float w, rstl::reserved_vector< rstl::pair< float, IAnimReader* >, 16 >& out) const override;
  float VGetRightChildWeight() const override;

  void VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut) const override;
  void VGetSegStatementSet(const CSegIdList& list, CSegStatementSet& setOut,
                           const CCharAnimTime& time) const override;
  bool VHasOffset(const CSegId& seg) const override;
  CVector3f VGetOffset(const CSegId& seg) const override;
  CQuaternion VGetRotation(const CSegId& seg) const override;

  rstl::optional_object< rstl::auto_ptr< IAnimReader > > VSimplified() override;
  virtual rstl::optional_object< rstl::auto_ptr< IAnimReader > > VReverseSimplified();
  virtual float VGetBlendingWeight() const = 0;

  static bool ShouldCullTree() { return 3 <= sAdvancementDepth; }
  static void IncAdvancementDepth() { sAdvancementDepth++; }
  static void DecAdvancementDepth() { sAdvancementDepth--; }
};

#endif // _CANIMTREETWEENBASE
