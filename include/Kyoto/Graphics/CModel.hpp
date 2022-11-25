#ifndef _CMODEL
#define _CMODEL

class CModelFlags;

class CModel {
public:
  void Touch(int) const;
  void Draw(const CModelFlags&) const;
  bool IsLoaded(int matIdx) const;
};

#endif // _CMODEL
