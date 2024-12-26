#ifndef _IWEAPONPROJECTILE_HPP
#define _IWEAPONPROJECTILE_HPP

class CVector3f;
class CTransform4f;
class IWeaponProjectile {
public:
  virtual ~IWeaponProjectile() {};

  virtual bool Update(float dt) = 0;
  virtual void AddToRenderer() const = 0;
  virtual void Render() const = 0;
  virtual const CVector3f GetTranslation() const = 0;
  virtual const CTransform4f GetTransform() const = 0;
};

#endif // _IWEAPONPROJECTILE_HPP
