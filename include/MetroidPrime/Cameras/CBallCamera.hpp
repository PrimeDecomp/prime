#ifndef __CBALLCAMERA_HPP__
#define __CBALLCAMERA_HPP__

class CBallCamera {
public:
  enum EBallCameraState {
    kBCS_Default,
    kBCS_One,
    kBCS_Chase,
    kBCS_Boost,
    kBCS_ToBall,
    kBCS_FromBall,
  };
  enum EBallCameraBehaviour {
    kBCB_Default,
    kBCB_FreezeLookPosition, // Unused
    kBCB_HintBallToCam,
    kBCB_HintInitializePosition,
    kBCB_HintFixedPosition,
    kBCB_HintFixedTransform,
    kBCB_PathCameraDesiredPos, // Unused
    kBCB_PathCamera,
    kBCB_SpindleCamera,
  };
  enum ESplineState {
    kSS_Invalid,
    kSS_Nav,
    kSS_Arc,
  };
};

#endif // __CBALLCAMERA_HPP__
