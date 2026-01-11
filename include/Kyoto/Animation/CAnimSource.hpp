#ifndef _CANIMSOURCE
#define _CANIMSOURCE

class CInputStream;
class IObjectStore;
class CAnimSource {
public:
  CAnimSource(CInputStream& in, IObjectStore& store);
  ~CAnimSource();
};

#endif // _CANIMSOURCE
