#ifndef _CMODEL
#define _CMODEL

class CModelFlags;

class CModel {
  static uint sTotalMemory;
public:
  void Touch(int) const;
  void Draw(const CModelFlags&) const;
  bool IsLoaded(int matIdx) const;

  static void AddToTotal(uint amt) { sTotalMemory += amt; }
  static void RemoveFromTotal(uint amt) { sTotalMemory -= amt; }
};

#endif // _CMODEL
