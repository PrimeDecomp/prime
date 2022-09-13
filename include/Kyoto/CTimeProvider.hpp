#ifndef _CTIMEPROVIDER_HPP
#define _CTIMEPROVIDER_HPP

#include "types.h"

class CTimeProvider {
public:
  CTimeProvider(const float& time);
  ~CTimeProvider();

private:
  u8 pad[0xc];
};

#endif