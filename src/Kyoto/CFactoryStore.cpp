#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/CResFactory.hpp"

TObjOwnerParam<IObjectStore*> DumbTest() {
  CResFactory tmp;
  CSimplePool pool(tmp);
  return TObjOwnerParam<IObjectStore*>(&pool);
}
