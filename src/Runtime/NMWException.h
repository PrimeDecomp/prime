#ifndef _NMWEXCEPTION
#define _NMWEXCEPTION

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DestructorChain {
  struct DestructorChain* next;
  void* destructor;
  void* object;
} DestructorChain;

void __unregister_fragment(int fragmentID);
int __register_fragment(struct __eti_init_info* info, char* TOC);
void* __register_global_object(void* object, void* destructor, void* regmem);
void __destroy_global_chain(void);

#ifdef __cplusplus
}
#endif

#endif // _NMWEXCEPTION
