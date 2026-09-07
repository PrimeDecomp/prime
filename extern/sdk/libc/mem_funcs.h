#ifndef _MEM_FUNCS_H_
#define _MEM_FUNCS_H_

#ifdef __cplusplus
extern "C" {
#endif

#define __min_bytes_for_long_copy 32

void __copy_mem(void* dst, const void* src, unsigned long n);
void __move_mem(void* dst, const void* src, unsigned long n);
void __copy_longs_aligned(void* dst, const void* src, unsigned long n);
void __copy_longs_rev_aligned(void* dst, const void* src, unsigned long n);
void __copy_longs_unaligned(void* dst, const void* src, unsigned long n);
void __copy_longs_rev_unaligned(void* dst, const void* src, unsigned long n);
void __fill_mem(void* dst, int val, unsigned long n);

#ifdef __cplusplus
}
#endif

#endif
