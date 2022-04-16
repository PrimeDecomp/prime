#ifndef __CVECTOR2F_HPP__
#define __CVECTOR2F_HPP__


class CVector2f {
public:
    explicit CVector2f(float x, float y) : mX(x), mY(y) {}
    
    float GetX() const { return mX; }
    float GetY() const { return mY; }
    
private:
    float mX;
    float mY;
};

#endif // __CVECTOR3F_HPP__
