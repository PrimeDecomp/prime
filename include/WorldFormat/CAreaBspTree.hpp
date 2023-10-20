#ifndef _CAREABSPTREE
#define _CAREABSPTREE

class CInputStream;
class CTransform4f;
class CAreaBspTree {
public:
  CAreaBspTree(CInputStream& in, const CTransform4f& xf);
};

#endif // _CAREABSPTREE
