#include "NMWException.h"
#include "__ppc_eabi_linker.h"

static int fragmentID = -2;

#ifdef __cplusplus
extern "C" {
#endif

extern void __init_cpp_exceptions(void);
extern void __fini_cpp_exceptions(void);
extern void suspend(void);

#ifdef __cplusplus
}
#endif

/* clang-format off */
static asm char* GetR2() {
  nofralloc;
  mr r3, r2
  blr
}
/* clang-format on */

extern void __init_cpp_exceptions(void) {
  char* R2;
  if (fragmentID == -2) {

    R2 = GetR2();

    /* HACK: TODO: _eti_init_info should be _eti_init_info, we can't use the appropriate name yet due to the
     * linker not being able to generate it*/
    fragmentID = __register_fragment(_eti_init_info, R2);
  }
}

extern void __fini_cpp_exceptions(void) {
  if (fragmentID != -2) {
    __unregister_fragment(fragmentID);
    fragmentID = -2;
  }
}

__declspec(section
           ".ctors") static void* const __init_cpp_exceptions_reference = __init_cpp_exceptions;
__declspec(section
           ".dtors") static void* const __destroy_global_chain_reference = __destroy_global_chain;
__declspec(section
           ".dtors") static void* const __fini_cpp_exceptions_reference = __fini_cpp_exceptions;
