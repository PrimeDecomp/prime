#ifndef _CRAINSPLASHGENERATOR
#define _CRAINSPLASHGENERATOR

#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"
#include "types.h"

class CVector3f;

class CRainSplashGenerator {
  struct SSplashLine {
    float x0_t;
    float x4_xEnd;
    float x8_yEnd;
    float xc_speed;
    float x10_zParabolaHeight;
    u8 x14_;
    u8 x15_length;
    bool x16_active : 1;
    SSplashLine();
    void Update(float dt, CStateManager& mgr);
    void Draw(float alpha, float dt, const CVector3f& pos);
    void SetActive() { x16_active = true; }
  };

  struct SRainSplash {
    rstl::reserved_vector< SSplashLine, 4 > x0_lines;
    CVector3f x64_pos;
    float x70_;
    SRainSplash();
    void Update(float dt, CStateManager& mgr);
    bool IsActive() const;
    void Draw(float alpha, float dt, const CVector3f& pos);
    void SetPoint(const CVector3f& pos);
  };

public:
  CRainSplashGenerator(const CVector3f& scale, int maxSplashes, int genRate, float minZ,
                       float alpha);
  ~CRainSplashGenerator() {}

private:
  rstl::vector< SRainSplash > x0_rainSplashes;
  CRandom16 x10_random;
  CVector3f x14_scale;
  u8 x0_pad[0x2c];
};
CHECK_SIZEOF(CRainSplashGenerator, 0x4c)

#endif // _CRAINSPLASHGENERATOR
