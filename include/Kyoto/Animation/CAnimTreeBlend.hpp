#ifndef _CANIMTREEBLEND
#define _CANIMTREEBLEND

#include "Kyoto/Animation/CAnimTreeTweenBase.hpp"

class CAnimTreeBlend : public CAnimTreeTweenBase {
  float x24_blendWeight;
public:
  CAnimTreeBlend(bool b, const rstl::ncrc_ptr< CAnimTreeNode >& a,
                 const rstl::ncrc_ptr< CAnimTreeNode >& b2, int flags,
                 const rstl::string& name);
  void SetBlendingWeight(float w) override { x24_blendWeight = w; }
  float VGetBlendingWeight() const override { return x24_blendWeight; }
  float VGetRightChildWeight() const override { return x24_blendWeight; }
  CCharAnimTime VGetTimeRemaining() const override;
  CSteadyStateAnimInfo VGetSteadyStateAnimInfo() const override;
  rstl::auto_ptr< IAnimReader > VClone() const override;
};

#endif // _CANIMTREEBLEND