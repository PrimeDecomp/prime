#ifndef _CFONT
#define _CFONT

class CFont {
public:
  CFont(float scale);
  ~CFont();
  int CharWidth(char) const;
private:
  float mFontSize;
  float mScale;
};

#endif // _CFONT
