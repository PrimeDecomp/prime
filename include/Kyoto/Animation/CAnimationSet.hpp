#ifndef _CANIMATIONSET
#define _CANIMATIONSET

class CInputStream;
class CAnimationSet {
public:
  CAnimationSet(CInputStream& in);

private:
  char data[0x60];
};

#endif // _CANIMATIONSET
