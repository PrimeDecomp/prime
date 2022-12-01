#ifndef _CCUBEMODEL
#define _CCUBEMODEL

class CTexture;
class CTransform4f;

class CCubeModel {
public:
  static void SetRenderModelBlack(bool v);
  static void DisableShadowMaps();
  static void EnableShadowMaps(const CTexture*, const CTransform4f&, unsigned char, unsigned char);
  static void SetDrawingOccluders(bool);
};

#endif // _CCUBEMODEL
