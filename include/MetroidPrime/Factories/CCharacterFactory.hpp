#ifndef _CCHARACTERFACTORY
#define _CCHARACTERFACTORY
#include <Kyoto/IObjFactory.hpp>
#include <Kyoto/CResFactory.hpp>


class CCharacterFactory : IObjFactory {
public:
  int GetEventResourceIdForAnimResourceId(int id) const;
};

#endif // _CCHARACTERFACTORY
