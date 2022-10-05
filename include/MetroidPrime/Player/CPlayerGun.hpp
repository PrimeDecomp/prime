#ifndef _CPLAYERGUN_HPP
#define _CPLAYERGUN_HPP

class CPlayerGun {
  static float skTractorBeamFactor;

  public:

    bool IsCharging() const;
    float GetChargeBeamFactor() const;

    static float GetTractorBeamFactor() {
      return skTractorBeamFactor;
    }

};

#endif // _CPLAYERGUN_HPP
