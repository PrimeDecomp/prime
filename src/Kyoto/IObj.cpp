#include "Kyoto/IObj.hpp"
#include <ctype.h>

const SObjectTag gkInvalidObjectTag(-1, kInvalidAssetId);

const char* SObjectTag::Type2Text(FourCC type) {
  static char text[5];
  text[0] = toupper((type >> 24) & 0xFF);
  text[1] = toupper((type >> 16) & 0xFF);
  text[2] = toupper((type >> 8) & 0xFF);
  text[3] = toupper(type  & 0xFF);
  text[4] = '\0';

  for (int i = 0; i < 4; ++i) {
    if (isprint(text[i]) == 0) {
      text[i] = '-';
    }
  }
  return text;
}
