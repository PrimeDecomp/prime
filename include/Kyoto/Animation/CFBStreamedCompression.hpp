#ifndef _CFBSTREAMEDCOMPRESSION
#define _CFBSTREAMEDCOMPRESSION

class CInputStream;
class IObjectStore;
class CFBStreamedCompression {
public:
  CFBStreamedCompression(CInputStream& in, IObjectStore& store);
  ~CFBStreamedCompression();
};

#endif // _CFBSTREAMEDCOMPRESSION
