#ifndef _CVECTOR3D
#define _CVECTOR3D

#include "Kyoto/Math/CVector3f.hpp"

class CVector3d {
public:
  CVector3d(double x, double y, double z);
  CVector3d(const CVector3f& other);
  double Magnitude() const;
  double MagSquared() const;

  CVector3d AsNormalized() const;
  CVector3f AsCVector3f() const;

  double GetX() const { return mX; }
  double GetY() const { return mY; }
  double GetZ() const { return mZ; }

  static double Dot(const CVector3d& a, const CVector3d& b);
  static CVector3d Cross(const CVector3d& a, const CVector3d& b);

private:
  double mX;
  double mY;
  double mZ;
};

CVector3d operator+(const CVector3d& other);

#endif // _CVECTOR3D
