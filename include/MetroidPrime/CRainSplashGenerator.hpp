#ifndef _CRAINSPLASHGENERATOR
#define _CRAINSPLASHGENERATOR

#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"
#include "types.h"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CVector3f;
class CStateManager;

class CRainSplashGenerator {
  struct SSplashLine {
    float x0_t;
    float x4_xEnd;
    float x8_yEnd;
    float xc_speed;
    float x10_zParabolaHeight;
    uchar x14_;
    uchar x15_length;
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

  
  bool IsRaining() const { return x48_25_raining; }
  void Draw(const CTransform4f& xf) const;
  void GeneratePoints(const CVector3f* vertices, const CVector3f* normals, int count);

private:
  rstl::vector< SRainSplash > x0_rainSplashes;
  CRandom16 x10_random;
  CVector3f x14_scale;
  float x20_generateTimer;
  float x24_generateInterval;
  float x28_dt;
  float x2c_minZ;
  float x30_alpha;
  uint x34_curPoint;
  uint x38_queueTail;
  uint x3c_queueHead;
  uint x40_queueSize;
  uint x44_genRate;
  bool x48_24 : 1;
  bool x48_25_raining : 1;
};
CHECK_SIZEOF(CRainSplashGenerator, 0x4c)

#endif // _CRAINSPLASHGENERATOR
