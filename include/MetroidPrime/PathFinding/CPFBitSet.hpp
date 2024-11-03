#ifndef _CPFBITSET
#define _CPFBITSET

class CPFBitSet {
public:
  void Clear();
  void Add(int bit);
  bool Test(int bit);
  void Rmv(int bit);

private:
  int mBits[16];
};

#endif // _CPFBITSET
