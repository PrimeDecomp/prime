#ifndef __CVECTOR3F_HPP__
#define __CVECTOR3F_HPP__


class CVector3f {
public:
    
    float GetX() const { return mX; }
    float GetY() const { return mY; }
    float GetZ() const { return mZ; }
    
private:
    float mX;
    float mY;
    float mZ;
};

#endif // __CVECTOR3F_HPP__
