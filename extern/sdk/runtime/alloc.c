#include <string.h>

typedef struct Block {
  struct Block *prev;
  struct Block *next;
  unsigned long max_size;
  unsigned long size;
} Block;

typedef struct SubBlock {
  unsigned long size;
  Block *block;
  struct SubBlock *prev;
  struct SubBlock *next;
} SubBlock;

struct FixSubBlock;

typedef struct FixBlock {
  struct FixBlock *prev_;
  struct FixBlock *next_;
  unsigned long client_size_;
  struct FixSubBlock *start_;
  unsigned long n_allocated_;
} FixBlock;

typedef struct FixSubBlock {
  FixBlock *block_;
  struct FixSubBlock *next_;
} FixSubBlock;

typedef struct FixStart {
  FixBlock *tail_;
  FixBlock *head_;
} FixStart;

typedef struct __mem_pool_obj {
  Block *start_;
  FixStart fix_start[6];
} __mem_pool_obj;

typedef struct __mem_pool {
  void *reserved[14];
} __mem_pool;

static SubBlock *SubBlock_merge_prev(SubBlock *, SubBlock **);
static void SubBlock_merge_next(SubBlock *, SubBlock **);

static const unsigned long fix_pool_sizes[] = {4, 12, 20, 36, 52, 68};

#define SubBlock_size(ths) ((ths)->size & 0xFFFFFFF8)
#define SubBlock_block(ths) ((Block *)((unsigned long)((ths)->block) & ~0x1))
#define Block_size(ths) ((ths)->size & 0xFFFFFFF8)
#define Block_start(ths) (*(SubBlock **)((char *)(ths) + Block_size((ths)) - sizeof(unsigned long)))

#define SubBlock_set_free(ths)                                                                     \
  unsigned long this_size = SubBlock_size((ths));                                                  \
  (ths)->size &= ~0x2;                                                                             \
  *(unsigned long *)((char *)(ths) + this_size) &= ~0x4;                                           \
  *(unsigned long *)((char *)(ths) + this_size - sizeof(unsigned long)) = this_size

#define SubBlock_is_free(ths) !((ths)->size & 2)
#define SubBlock_set_size(ths, sz)                                                                 \
  (ths)->size &= ~0xFFFFFFF8;                                                                      \
  (ths)->size |= (sz) & 0xFFFFFFF8;                                                                \
  if (SubBlock_is_free((ths)))                                                                     \
  *(unsigned long *)((char *)(ths) + (sz) - sizeof(unsigned long)) = (sz)

#define SubBlock_from_pointer(ptr) ((SubBlock *)((char *)(ptr) - 8))
#define FixSubBlock_from_pointer(ptr) ((FixSubBlock *)((char *)(ptr) - 4))

#define FixBlock_client_size(ths) ((ths)->client_size_)
#define FixSubBlock_size(ths) (FixBlock_client_size((ths)->block_))

#define classify(ptr) (*(unsigned long *)((char *)(ptr) - sizeof(unsigned long)) & 1)
#define __msize_inline(ptr)                                                                        \
  (!classify(ptr) ? FixSubBlock_size(FixSubBlock_from_pointer(ptr))                                \
                  : SubBlock_size(SubBlock_from_pointer(ptr)) - 8)

#define Block_empty(ths)                                                                           \
  (_sb = (SubBlock *)((char *)(ths) + 16)),                                                        \
      SubBlock_is_free(_sb) && SubBlock_size(_sb) == Block_size((ths)) - 24

void __sys_free(void *ptr);
void *__sys_alloc(unsigned long size);

static inline void SubBlock_set_allocated(SubBlock *ths) {
  unsigned long size = SubBlock_size(ths);
  ths->size |= 2;
  *(unsigned long *)((char *)ths + size) |= 4;
}

static inline void SubBlock_construct(SubBlock *ths, Block *block, unsigned long size,
                                      int prev_allocated, int allocated) {
  ths->block = (Block *)((unsigned long)block | 1);
  ths->size = size;
  if (prev_allocated)
    ths->size |= 4;
  if (allocated) {
    ths->size |= 2;
    *(unsigned long *)((char *)ths + size) |= 4;
  } else {
    *(unsigned long *)((char *)ths + size - sizeof(unsigned long)) = size;
  }
}

static inline void SubBlock_split(SubBlock *ths, unsigned long size) {
  SubBlock *next = (SubBlock *)((char *)ths + size);
  unsigned long old_size = SubBlock_size(ths);
  int is_free = SubBlock_is_free(ths);
  Block *block = SubBlock_block(ths);

  SubBlock_construct(ths, block, size, ths->size & 4, !is_free);
  SubBlock_construct(next, block, old_size - size, !is_free, !is_free);
  if (is_free) {
    next->next = ths->next;
    next->next->prev = next;
    next->prev = ths;
    ths->next = next;
  }
}

static SubBlock *Block_subBlock(Block *ths, unsigned long size) {
  SubBlock *start = Block_start(ths);
  SubBlock *sb;
  unsigned long cur_size;
  unsigned long max_size;

  if (start == 0)
    return 0;

  sb = start;
  cur_size = SubBlock_size(sb);
  max_size = cur_size;
  while (cur_size < size) {
    sb = sb->next;
    cur_size = SubBlock_size(sb);
    if (max_size < cur_size)
      max_size = cur_size;
    if (sb == start) {
      ths->max_size = max_size;
      return 0;
    }
  }

  if (cur_size - size >= 80)
    SubBlock_split(sb, size);

  Block_start(ths) = sb->next;
  SubBlock_set_allocated(sb);
  {
    SubBlock **st = &Block_start(ths);
    if (*st == sb)
      *st = sb->next;
    if (*st == sb) {
      *st = 0;
      ths->max_size = 0;
    } else {
      sb->next->prev = sb->prev;
      sb->prev->next = sb->next;
    }
  }
  return sb;
}

static inline SubBlock *SubBlock_merge_prev(SubBlock *ths, SubBlock **start) {
  unsigned long prevsz;
  SubBlock *p;

  if (!(ths->size & 0x04)) {
    prevsz = *(unsigned long *)((char *)ths - sizeof(unsigned long));
    if (prevsz & 0x2)
      return ths;
    p = (SubBlock *)((char *)ths - prevsz);
    SubBlock_set_size(p, prevsz + SubBlock_size(ths));

    if (*start == ths)
      *start = (*start)->next;
    ths->next->prev = ths->prev;
    ths->next->prev->next = ths->next;
    return p;
  }
  return ths;
}

static void Block_link(Block *ths, SubBlock *sb) {
  SubBlock **st;
  SubBlock_set_free(sb);
  st = &Block_start(ths);

  if (*st != 0) {
    sb->prev = (*st)->prev;
    sb->prev->next = sb;
    sb->next = *st;
    (*st)->prev = sb;
    *st = sb;
    *st = SubBlock_merge_prev(*st, st);
    SubBlock_merge_next(*st, st);
  } else {
    *st = sb;
    sb->prev = sb;
    sb->next = sb;
  }
  if (ths->max_size < SubBlock_size(*st))
    ths->max_size = SubBlock_size(*st);
}

static void SubBlock_merge_next(SubBlock *pBlock, SubBlock **pStart) {
  SubBlock *next_sub_block;
  unsigned long this_cur_size;

  next_sub_block = (SubBlock *)((char *)pBlock + (pBlock->size & 0xFFFFFFF8));

  if (!(next_sub_block->size & 2)) {
    this_cur_size = (pBlock->size & 0xFFFFFFF8) + (next_sub_block->size & 0xFFFFFFF8);

    pBlock->size &= ~0xFFFFFFF8;
    pBlock->size |= this_cur_size & 0xFFFFFFF8;

    if (!(pBlock->size & 2)) {
      *(unsigned long *)((char *)(pBlock) + (this_cur_size)-4) = (this_cur_size);
    }

    if (!(pBlock->size & 2)) {
      *(unsigned long *)((char *)pBlock + this_cur_size) &= ~4;
    } else {
      *(unsigned long *)((char *)pBlock + this_cur_size) |= 4;
    }

    if (*pStart == next_sub_block) {
      *pStart = (*pStart)->next;
    }

    if (*pStart == next_sub_block) {
      *pStart = 0;
    }

    next_sub_block->next->prev = next_sub_block->prev;
    next_sub_block->prev->next = next_sub_block->next;
  }
}

static inline void Block_construct(Block *ths, unsigned long size) {
  SubBlock *sb = (SubBlock *)((char *)ths + sizeof(Block));

  ths->size = size | 3;
  *(unsigned long *)((char *)ths + size - 8) = ths->size;
  SubBlock_construct(sb, ths, size - sizeof(Block) - 8, 0, 0);
  ths->max_size = size - sizeof(Block) - 8;
  Block_start(ths) = 0;
  Block_link(ths, sb);
}

static inline Block *__link(__mem_pool_obj *pool_obj, unsigned long size) {
  Block *bp;
  size = (size + sizeof(Block) + 8 + 7) & ~7;
  if (size < 65536)
    size = 65536;
  bp = (Block *)__sys_alloc(size);
  if (bp == 0)
    return 0;
  Block_construct(bp, size);
  if (pool_obj->start_ != 0) {
    bp->prev = pool_obj->start_->prev;
    bp->prev->next = bp;
    bp->next = pool_obj->start_;
    pool_obj->start_->prev = bp;
    pool_obj->start_ = bp;
  } else {
    pool_obj->start_ = bp;
    bp->prev = bp;
    bp->next = bp;
  }
  return bp;
}

static void *allocate_from_var_pools(__mem_pool_obj *pool_obj, unsigned long size) {
  Block *bp;
  SubBlock *sb;

  size = (size + 15) & ~7;
  if (size < 80)
    size = 80;
  bp = pool_obj->start_ != 0 ? pool_obj->start_ : __link(pool_obj, size);
  if (bp == 0)
    return 0;

  do {
    if (size <= bp->max_size && (sb = Block_subBlock(bp, size)) != 0) {
      pool_obj->start_ = bp;
      goto allocated;
    }
    bp = bp->next;
  } while (bp != pool_obj->start_);

  bp = __link(pool_obj, size);
  if (bp == 0)
    return 0;
  sb = Block_subBlock(bp, size);

allocated:
  return (char *)sb + 8;
}

static void *soft_allocate_from_var_pools(__mem_pool_obj *pool_obj, unsigned long size,
                                          unsigned long *max_size) {
  Block *bp;
  SubBlock *sb;

  size = (size + 15) & ~7;
  if (size < 80)
    size = 80;
  *max_size = 0;
  bp = pool_obj->start_;
  if (bp == 0)
    return 0;

  do {
    if (size <= bp->max_size && (sb = Block_subBlock(bp, size)) != 0) {
      pool_obj->start_ = bp;
      goto allocated;
    }
    if (bp->max_size > 8 && *max_size < bp->max_size - 8)
      *max_size = bp->max_size - 8;
    bp = bp->next;
  } while (bp != pool_obj->start_);

  return 0;

allocated:
  return (char *)sb + 8;
}

static inline void FixSubBlock_construct(FixSubBlock *sb, FixBlock *block, FixSubBlock *next) {
  sb->block_ = block;
  sb->next_ = next;
}

static void FixBlock_construct(FixBlock *ths, FixBlock *prev, FixBlock *next, unsigned long pool,
                               void *buffer, unsigned long size) {
  unsigned long stride = fix_pool_sizes[pool] + 4;
  char *cursor = (char *)buffer;
  unsigned long i = 0;

  ths->prev_ = prev;
  ths->next_ = next;
  size /= stride;
  prev->next_ = ths;
  next->prev_ = ths;
  ths->client_size_ = fix_pool_sizes[pool];

  for (; i < size - 1; ++i) {
    char *next = cursor + stride;
    FixSubBlock_construct((FixSubBlock *)cursor, ths, (FixSubBlock *)next);
    cursor = next;
  }

  FixSubBlock_construct((FixSubBlock *)cursor, ths, 0);
  ths->start_ = (FixSubBlock *)buffer;
  ths->n_allocated_ = 0;
}

void *allocate_from_fixed_pools(__mem_pool_obj *pool_obj, unsigned long size) {
  unsigned long i = 0;
  FixStart *fs;
  FixBlock *b;
  FixSubBlock *p;
  unsigned long n;
  unsigned long original_n;
  unsigned long max_size;

  while (size > fix_pool_sizes[i])
    ++i;

  fs = &pool_obj->fix_start[i];
  if (fs->head_ == 0 || fs->head_->start_ == 0) {
    n = (4096 - sizeof(FixBlock)) / (fix_pool_sizes[i] + 4);
    if (n > 256)
      n = 256;
    original_n = n;
    while (n >= 10) {
      b = (FixBlock *)soft_allocate_from_var_pools(
          pool_obj, n * (fix_pool_sizes[i] + 4) + sizeof(FixBlock), &max_size);
      if (b != 0)
        break;
      if (max_size > sizeof(FixBlock))
        n = (max_size - sizeof(FixBlock)) / (fix_pool_sizes[i] + 4);
      else
        n = 0;
    }
    if (b == 0 && n < original_n &&
        (b = (FixBlock *)allocate_from_var_pools(pool_obj, original_n * (fix_pool_sizes[i] + 4) +
                                                               sizeof(FixBlock))) == 0)
      return 0;
    size = __msize_inline(b);
    if (fs->head_ == 0) {
      fs->head_ = b;
      fs->tail_ = b;
    }
    FixBlock_construct(b, fs->tail_, fs->head_, i, (char *)b + sizeof(FixBlock),
                       size - sizeof(FixBlock));
    fs->head_ = b;
  }

  p = fs->head_->start_;
  fs->head_->start_ = p->next_;
  ++fs->head_->n_allocated_;
  if (fs->head_->start_ == 0) {
    fs->head_ = fs->head_->next_;
    fs->tail_ = fs->tail_->next_;
  }
  return (char *)p + 4;
}

static inline Block *__unlink(__mem_pool_obj *pool_obj, Block *bp) {
  Block *result = bp->next;
  if (result == bp) {
    result = 0;
  }

  if (pool_obj->start_ == bp) {
    pool_obj->start_ = result;
  }

  if (result != 0) {
    result->prev = bp->prev;
    result->prev->next = result;
  }

  bp->next = 0;
  bp->prev = 0;
  return result;
}

static inline void deallocate_from_var_pools(__mem_pool_obj *pool_obj, void *ptr) {
  SubBlock *sb = SubBlock_from_pointer(ptr);
  SubBlock *_sb;

  Block *bp = SubBlock_block(sb);
  Block_link(bp, sb);

  if (Block_empty(bp)) {
    __unlink(pool_obj, bp);
    __sys_free(bp);
  }
}

inline void __init_pool_obj(__mem_pool *pool_obj) { memset(pool_obj, 0, sizeof(__mem_pool_obj)); }

static inline __mem_pool *get_malloc_pool(void) {
  static __mem_pool protopool;
  static unsigned char init = 0;
  if (!init) {
    __init_pool_obj(&protopool);
    init = 1;
  }

  return &protopool;
}

void deallocate_from_fixed_pools(__mem_pool_obj *pool_obj, void *ptr, unsigned long size) {
  unsigned long i = 0;
  FixSubBlock *p;
  FixBlock *b;
  FixStart *fs;

  while (size > fix_pool_sizes[i]) {
    ++i;
  }

  fs = &pool_obj->fix_start[i];
  p = FixSubBlock_from_pointer(ptr);
  b = p->block_;

  if (b->start_ == 0 && fs->head_ != b) {
    if (fs->tail_ == b) {
      fs->head_ = fs->head_->prev_;
      fs->tail_ = fs->tail_->prev_;
    } else {
      b->prev_->next_ = b->next_;
      b->next_->prev_ = b->prev_;
      b->next_ = fs->head_;
      b->prev_ = b->next_->prev_;
      b->prev_->next_ = b;
      b->next_->prev_ = b;
      fs->head_ = b;
    }
  }

  p->next_ = b->start_;
  b->start_ = p;

  if (--b->n_allocated_ == 0) {
    if (fs->head_ == b) {
      fs->head_ = b->next_;
    }

    if (fs->tail_ == b) {
      fs->tail_ = b->prev_;
    }

    b->prev_->next_ = b->next_;
    b->next_->prev_ = b->prev_;

    if (fs->head_ == b) {
      fs->head_ = 0;
    }

    if (fs->tail_ == b) {
      fs->tail_ = 0;
    }

    deallocate_from_var_pools(pool_obj, b);
  }
}

static inline void __pool_free(__mem_pool *pool, void *ptr) {
  __mem_pool_obj *pool_obj;
  unsigned long size;

  if (ptr == 0) {
    return;
  }

  pool_obj = (__mem_pool_obj *)pool;
  size = __msize_inline(ptr);

  if (size <= 68) {
    deallocate_from_fixed_pools(pool_obj, ptr, size);
  } else {
    deallocate_from_var_pools(pool_obj, ptr);
  }
}

void free(void *ptr) { __pool_free(get_malloc_pool(), ptr); }

static inline void *__pool_alloc(__mem_pool *pool, unsigned long size) {
  void *ptr;
  if (size == 0)
    return 0;
  if (size > 0xFFFFFFCF)
    return 0;
  if (size <= 68)
    ptr = allocate_from_fixed_pools((__mem_pool_obj *)pool, size);
  else
    ptr = allocate_from_var_pools((__mem_pool_obj *)pool, size);
  return ptr;
}

void *calloc(size_t nmemb, size_t size) {
  __mem_pool *pool = get_malloc_pool();
  void *ptr;
  size *= nmemb;
  ptr = __pool_alloc(pool, size);
  if (ptr != 0)
    memset(ptr, 0, size);
  return ptr;
}
