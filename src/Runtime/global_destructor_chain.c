#include "NMWException.h"


typedef void (*CompleteDestructor)(void *,int);

DestructorChain* __global_destructor_chain;

extern void* __register_global_object(void* object, void* destructor, void* regmem) {
  ((DestructorChain*)regmem)->next = __global_destructor_chain;
  ((DestructorChain*)regmem)->destructor = destructor;
  ((DestructorChain*)regmem)->object = object;
  __global_destructor_chain = (DestructorChain*)regmem;

  return object;
}

void __destroy_global_chain(void) {
  DestructorChain* iter;

  while ((iter=__global_destructor_chain) !=  0) {
    __global_destructor_chain = iter->next;
    ((CompleteDestructor)iter->destructor)(iter->object, -1);
  } 
}

__declspec(section
           ".dtors") static void* const __destroy_global_chain_reference = __destroy_global_chain;
