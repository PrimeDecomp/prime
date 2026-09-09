#ifndef _CVECTOR3I
#define _CVECTOR3I

class CVector3i {
public:
  CVector3i(int x, int y, int z);
  int operator[](int index) const { return (&mX)[index]; }

private:
  int mX;
  int mY;
  int mZ;
};

#endif // _CVECTOR3I
