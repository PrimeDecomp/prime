#include "types.h"
#include "gx_struct.h"

class CStreamAudioManager {
public:
  static void Update(float dt);
  static void StopAll();
};

namespace CMemory {
void* Alloc(unsigned long sz);
void Free(const void* ptr);
}

inline void operator delete(void* ptr) {
  // if (ptr != nullptr)
    CMemory::Free(ptr);
}

void* operator new(unsigned long sz, const char*, const char*);
void* operator new[](unsigned long sz, const char*, const char*);
inline void* operator new(unsigned long sz) { 
  const char* fileAndLineNo = "??(??)";
  const char* type = nullptr;
  return operator new(sz, fileAndLineNo, type);
}
inline void* operator new[](unsigned long sz) { 
  const char* fileAndLineNo = "??(??)";
  const char* type = nullptr;
  return operator new[](sz, fileAndLineNo, type);
}
// placement new
inline void* operator new(unsigned long n, void* ptr) { return ptr; };

namespace rstl {
struct rmemory_allocator {
template <typename T>
static void allocate(T*& out, size_t count) {
  // out = static_cast<T*>(CMemory::Alloc(sizeof(T) * sz));
  out = new T[count];
}
template <typename T>
static void deallocate(T* ptr) {
  if (ptr != nullptr)
  // CMemory::Free(ptr);
  delete ptr;
}
};

template <typename T>
inline void construct(void* dest, const T& src) {
  *static_cast<T*>(dest) = src;
}

template <typename T>
inline void destroy(T* in) {
  in->~T();
}

template <typename Iter>
inline void destroy(Iter begin, Iter end) {
  Iter current = begin;
  while (current != end) {
    current.destroy();
    ++current;
  }
}

template <typename Iter, typename T>
inline void uninitialized_copy(Iter begin, Iter end, T* in) {
  Iter current = begin;
  while (current != end) {
    current = *in;
    ++current;
  }
}

template <typename T>
inline void uninitialized_copy_n(T* dest, size_t count, T* src) {
  for (size_t i = 0; i < count; ++i) {
    construct(dest, *src);
    destroy(src);
    ++dest;
    ++src;
  }
}

template <typename T>
class optional_object {
    T x0_item;
    bool x4_valid;

public:
    optional_object() : x4_valid(false) {}
    optional_object(const T& item) : x0_item(item), x4_valid(true) {}
    ~optional_object() { clear(); }

    T& data() { return x0_item; }
    operator bool() const { return x4_valid; }
    void clear() {
        rstl::destroy(&x0_item);
        x4_valid = false;
    }
};

template <typename T, typename Vec, typename Alloc>
class const_pointer_iterator {
protected:
  const T* current;
public:
  const_pointer_iterator() : current(nullptr) {}
  const_pointer_iterator(const T* begin) : current(begin) {}
  void operator++() { ++current; }
  void operator--() { --current; }
  T* get_pointer() const { return const_cast<T*>(current); }
  const T& operator*() const { return *get_pointer(); }
  const T* operator->() const { return get_pointer(); }
  bool CheckValid() const { return current != nullptr; }
  bool operator==(const const_pointer_iterator& other) { return current == other.current; }
  bool operator!=(const const_pointer_iterator& other) { return current != other.current; }

  friend const_pointer_iterator operator+(const const_pointer_iterator& x, int v) {
    return const_pointer_iterator(x.current + v);
  }
  friend const_pointer_iterator operator-(const const_pointer_iterator& x, int v) {
    return const_pointer_iterator(x.current - v);
  }
};
template <typename T, typename Vec, typename Alloc>
class pointer_iterator : public const_pointer_iterator<T, Vec, Alloc> {
public:
  pointer_iterator() : const_pointer_iterator(nullptr) {}
  pointer_iterator(T* begin) : const_pointer_iterator(begin) {}
  void operator=(const T& other) {
    if (CheckValid()) {
      *get_pointer() = other;
    }
  }
  T* get_pointer() const { return const_cast<T*>(current); }
  // T* operator*() const { if (CheckValid()) return get_pointer(); else return nullptr; }
  T* operator->() const { return get_pointer(); }
  void destroy() const {
    if (CheckValid()) {
      rstl::destroy(get_pointer());
    }
  }

  friend pointer_iterator operator+(const pointer_iterator& x, int v) {
    return pointer_iterator(x.get_pointer() + v);
  }
  friend pointer_iterator operator-(const pointer_iterator& x, int v) {
    return pointer_iterator(x.get_pointer() - v);
  }
};

template <typename T, typename Alloc = rmemory_allocator>
class vector {
  int x0_unk;
  size_t x4_count;
  size_t x8_capacity;
  T* xc_items;
public:
  typedef pointer_iterator<T, vector<T, Alloc>, Alloc> iterator;
  typedef const_pointer_iterator<T, vector<T, Alloc>, Alloc> const_iterator;

  inline iterator begin() { return iterator(xc_items); }
  inline const_iterator begin() const { return const_iterator(xc_items); }
  inline iterator end() { return iterator(xc_items + x4_count); }
  inline const_iterator end() const { return const_iterator(xc_items + x4_count); }
  inline vector() : x4_count(0), x8_capacity(0), xc_items(NULL) {}
  inline vector(size_t count) : x4_count(0), x8_capacity(0), xc_items(0) { reserve(count); }
  vector(const vector& other) {
    x4_count = other.x4_count;
    x8_capacity = other.x8_capacity;
    if (x4_count == 0 && x8_capacity == 0) {
      xc_items = NULL;
    } else {
      if (x8_capacity == 0) {
        xc_items = NULL;
      } else {
        Alloc::allocate(xc_items, x8_capacity);
      }
      // what's going on here?
      iterator iter;
      const_iterator otherIter;
      otherIter = other.begin();
      iter = begin();
      for (size_t i = 0; i < x4_count; ++i) {
        iter = *otherIter;
        ++iter;
        ++otherIter;
      }
    }
  }
  ~vector() {
    rstl::destroy(begin(), end());
    Alloc::deallocate(xc_items);
  }

  void reserve(size_t size) {
    if (x8_capacity >= size) return;
    T* newData;
    Alloc::allocate(newData, size);
    uninitialized_copy_n(newData, x4_count, xc_items);
    rstl::destroy(begin(), end());
    Alloc::deallocate(xc_items);
    xc_items = newData;
    x8_capacity = size;
  }
  void push_back(const T& in) {
    if (x4_count >= x8_capacity) {
      reserve(x8_capacity != 0 ? x8_capacity * 2 : 4);
    }
    iterator out = begin() + x4_count;
    out = in;
    ++x4_count;
  }

  inline T* data() { return xc_items; }
  inline const T* data() const { return xc_items; }
  inline size_t size() const { return x4_count; }
  inline size_t capacity() const { return x8_capacity; }
  inline T& front() { return xc_items[0]; }
  inline const T& front() const { return xc_items[0]; }
  inline T& back() { return xc_items[x4_count - 1]; }
  inline const T& back() const { return xc_items[x4_count - 1]; }
  inline T& operator[](size_t idx) { return xc_items[idx]; }
  inline const T& operator[](size_t idx) const { return xc_items[idx]; }
};

template <typename T, size_t N>
class reserved_vector {
  size_t x0_count;
  T x4_items[N];

public:
  typedef pointer_iterator<T, reserved_vector<T, N>, void> iterator;
  typedef const_pointer_iterator<T, reserved_vector<T, N>, void> const_iterator;

  inline iterator begin() { return iterator(x4_items); }
  inline const_iterator begin() const { return const_iterator(x4_items); }
  inline iterator end() { return iterator(x4_items + x0_count); }
  inline const_iterator end() const { return const_iterator(x4_items + x0_count); }

  ~reserved_vector() {
    for (u32 i = x0_count; i > 0; --i) {
      ~T(x4_items[i]);
    }
  }

  void push_back(const T& in) {
    if (x0_count < N) {
        iterator out = begin() + x0_count;
        out = in;
        ++x0_count;
    }    
  }

  inline T* data() { return x4_items; }
  inline const T* data() const { return x4_items; }
  inline size_t size() const { return x0_count; }
  inline size_t capacity() const { return N; }
  inline T& front() { return x4_items[0]; }
  inline const T& front() const { return x4_items[0]; }
  inline T& back() { return x4_items[x0_count - 1]; }
  inline const T& back() const { return x4_items[x0_count - 1]; }
  inline T& operator[](size_t idx) { return data()[idx]; }
  inline const T& operator[](size_t idx) const { return data()[idx]; }
};

template <typename T>
class CRefData {
public:
  T* x0_ptr;
  unsigned int x4_refCount;
};

template <typename T>
class rc_ptr {
  CRefData<T>* x0_refData;
public:
  ~rc_ptr();
  T* get() { return x0_refData->x0_ptr; }
  T* operator->() { return get(); }
};

template <typename L, typename R>
class pair {
public:
  L first;
  R second;

  inline pair() {}
  inline pair(const L& first, const R& second) : first(first), second(second) {}
};

template <typename T>
class single_ptr {
  T* x0_ptr;
public:
  single_ptr(T* ptr) : x0_ptr(ptr) {}
  ~single_ptr() { delete x0_ptr; }
  T* get() { return x0_ptr; }
  T* operator->() { return x0_ptr; }
  void operator=(T* ptr) {
    delete x0_ptr;
    x0_ptr = ptr;
  }
};

template <typename _CharTp>
struct char_traits {};

template <typename _CharTp, typename Traits = char_traits<_CharTp>, typename Alloc = rmemory_allocator>
class basic_string
{
    struct COWData
    {
        u32 x0_capacity;
        u32 x4_refCount;
        _CharTp* x8_data;
    };

    const _CharTp* x0_ptr;
    COWData* x4_cow;
    u32 x8_size;
    u32 _pad; // Alloc?

    // void internal_allocate(int size)
    // {
    //     x4_cow = reinterpret_cast<COWData*>(new u8[size * sizeof(_CharTp) + 8]);
    //     x0_ptr = x4_cow->x8_data;
    //     x4_cow->x0_capacity = u32(size);
    //     x4_cow->x4_refCount = 1;
    // }

    void internal_dereference();
    // {
    //     if (x4_cow && --x4_cow->x4_refCount == 0)
    //         delete[] x4_cow;
    // }

    static const _CharTp _EmptyString;

public:
    struct literal_t {};

    basic_string() : x0_ptr(&_EmptyString), x4_cow(nullptr), x8_size(0) {}

    basic_string(literal_t, const _CharTp* data);
    // {
    //     x0_ptr = data;
    //     x4_cow = nullptr;

    //     const _CharTp* it = data;
    //     while (*it)
    //         ++it;

    //     x8_size = u32((it - data) / sizeof(_CharTp));
    // }

    basic_string(const basic_string& str);
    // {
    //     x0_ptr = str.x0_ptr;
    //     x4_cow = str.x4_cow;
    //     x8_size = str.x8_size;
    //     if (x4_cow)
    //         ++x4_cow->x4_refCount;
    // }

    basic_string(const _CharTp* data, int size, const Alloc&);
    // {
    //     if (size <= 0 && !data)
    //     {
    //         x0_ptr = &_EmptyString;
    //         x4_cow = nullptr;
    //         x8_size = 0;
    //         return;
    //     }

    //     const _CharTp* it = data;
    //     u32 len = 0;
    //     while (*it)
    //     {
    //         if (size != -1 && len >= size)
    //             break;
    //         ++it;
    //         ++len;
    //     }

    //     internal_allocate(len + 1);
    //     x8_size = len;
    //     for (int i = 0; i < len; ++i)
    //         x4_cow->x8_data[i] = data[i];
    //     x4_cow->x8_data[len] = 0;
    // }

    ~basic_string()
    {
        internal_dereference();
    }

    basic_string& operator=(const basic_string&);
    basic_string operator+(const basic_string&);

    const char* data() const { return x0_ptr; }
};

// template <>
// const char basic_string<char>::_EmptyString = 0;
// template <>
// const wchar_t basic_string<wchar_t>::_EmptyString = 0;

typedef basic_string<wchar_t> wstring;
typedef basic_string<char> string;

wstring wstring_l(const wchar_t* data);
// {
//     return wstring(wstring::literal_t(), data);
// }

string string_l(const char* data);
// {
//     return string(string::literal_t(), data);
// }

}

// wine tools/mwcc_compiler/2.6/mwcceppc.exe -Cpp_exceptions off -enum int -inline auto -proc gekko -RTTI off -fp hard -fp_contract on -str pool -rostr -O4,p -use_lmw_stmw on -sdata 8 -sdata2 8 -nodefaults -i include/ -c -o build/mp1.0/src/Kyoto_CWD/main.o src/Kyoto_CWD/main.cpp
//
template <typename T>
class TOneStatic {
public:
  void* operator new(unsigned long sz, const char*, const char*) {                                  
    ReferenceCount()++;                                                                                                
    return GetAllocSpace();                                                                                            
  }
  void* operator new(unsigned long sz) { return operator new(sz, "??(??)", nullptr); }
private:
  static void* GetAllocSpace() {
    static u8 sAllocSpace[sizeof(T)];
    return &sAllocSpace;
  }                                                    
  static u32& ReferenceCount() {
    static u32 sReferenceCount = 0;
    return sReferenceCount;
  }
};

class COsContext {
  int x0_right;
  int x4_bottom;
  int x8_left;
  int xc_top;
  int x10_format;
  int x14_consoleType;
  void* x18_arenaLo1;
  void* x1c_arenaHi;
  void* x20_arenaLo2;
  void* x24_frameBuffer1;
  void* x28_frameBuffer2;
  int x2c_frameBufferSize;
  GXRenderModeObj x30_renderMode;
};

class CMemorySys {
  u8 x0_unk;
};

class CTweaks {
  int x0_unk;
public:
  void RegisterResourceTweaks();
  void RegisterTweaks();
};

class CWorldState {

};
class CPlayerState {
  // TODO
public:
  void SetIsFusionEnabled(bool v);
};
class CWorldTransManager;

typedef int TEditorId;

inline bool checkFlag(int flag, int pos) {
  bool result = false;
  result = flag >> pos & 1;
  return result;
}

class CSystemOptions {
public:
  rstl::reserved_vector<u8, 98> x0_;
  rstl::reserved_vector<bool, 64> x68_;
  rstl::vector<rstl::pair<int, TEditorId> > xac_;
  int xbc_;
  int xc0_;
  int xc4_;
  int xc8_;
  int xcc_;
  u8 xd0_;

  CSystemOptions();
  CSystemOptions(const CSystemOptions&);
  ~CSystemOptions();
  CSystemOptions& operator=(const CSystemOptions&);

  void SetHasFusion(bool v);
  bool GetHasFusion() const { return checkFlag(xd0_, 3); }
};

class CInputStream;

class CGameOptions {
  rstl::reserved_vector<bool, 64> x0_;
  int x44_; // ESurroundModes
  int x48_;
  int x4c_;
  int x50_;
  int x54_;
  int x58_;
  int x5c_;
  int x60_;
  int x64_;
  int x68_;
  rstl::vector<rstl::pair<int, int> > x6c_;
public:
  CGameOptions();
  CGameOptions(const CGameOptions&);
  CGameOptions(CInputStream& in);
  ~CGameOptions();
  CGameOptions& operator=(const CGameOptions&);

  void EnsureOptions();
};

struct SHintState;

class CHintOptions {
public:
  rstl::vector<SHintState> x0_;
  int x10_;

  void SetHintNextTime();
};

template <typename T>
struct TType {};
template <typename T>
inline T cinput_stream_helper(TType<T> type, CInputStream& in);

class CInputStream {
public:
  CInputStream(size_t len);
  CInputStream(const void* ptr, size_t len, bool owned);
  virtual ~CInputStream();

  s32 ReadLong();
  char ReadChar();
  void ReadBytes(void* in, unsigned long len);
  u32 ReadBits(int len);

  template <typename T>
  inline T Get() { return cinput_stream_helper(TType<T>(), *this); }

private:
  u32 x4_blockOffset;
  u32 x8_blockLen;
  u32 xc_len;
  u8* x10_ptr;
  bool x14_owned;
  u32 x18_readPosition;
  u32 x1c_bitWord;
  u32 x20_bitOffset;
};

class CMemoryInStream : public CInputStream {
public:
  enum EOwnerShip {
    NotOwned,
    Owned,
  };

  CMemoryInStream(const void* ptr, unsigned long len);
  CMemoryInStream(const void* ptr, unsigned long len, EOwnerShip ownership);
  virtual ~CMemoryInStream() {}
};

class CGameState {
public:
  rstl::reserved_vector<bool, 128> x0_;
  int x84_mlvlId;
  rstl::vector<CWorldState> x88_worldStates;
  rstl::rc_ptr<CPlayerState> x98_playerState;
  rstl::rc_ptr<CWorldTransManager> x9c_transManager;
  double xa0_playTime;
  CSystemOptions xa8_systemOptions;
  CGameOptions x17c_gameOptions;
  CHintOptions x1f8_hintOptions;
  int x20c_saveIdx;
  long long x210_cardSerial;
  rstl::vector<u8> x218_backupBuf;
  int x228_flags;

  CGameState();
  CGameState(CInputStream& in, int saveIdx);
  CGameState(const CGameState&);
  ~CGameState();
  CGameState& operator=(const CGameState&);

  rstl::rc_ptr<CPlayerState>& PlayerState();

  // void SetGameOptions(CGameOptions options) {
  //     x17c_gameOptions = options;
  //     x17c_gameOptions.EnsureOptions();
  // }
};

class CDvdFile {
public:
  static bool FileExists(const char*);

private:
  u8 pad[0x28];
};

class CPakFile : CDvdFile {
public:
  bool IsWorldPak() const { return x28_26_worldPak; }
  void EnsureWorldPakReady();

private:
  bool x28_24_buildDepList : 1;
  bool x28_25_aramFile : 1;
  bool x28_26_worldPak : 1;
  bool x28_27_stashedInARAM : 1;
};

class CResLoader {
public:
  s32 GetPakCount();
  CPakFile& GetPakFile(s32 idx);
  void AddPakFileAsync(rstl::string&, bool, bool);
  void AsyncIdlePakLoading();
  bool AreAllPaksLoaded() const;

private:
  u8 pad[0x58];
};

class CResFactory {
public:
  virtual ~CResFactory();

  void AsyncIdle(u32 time);

  CResLoader& GetResLoader() { return x4_resLoader; }

private:
  CResLoader x4_resLoader;
};

class CGameGlobalObjects : TOneStatic<CGameGlobalObjects> {
public:
  CGameGlobalObjects(COsContext&, CMemorySys&);
  ~CGameGlobalObjects();

  void PostInitialize(COsContext&, CMemorySys&);

// private:
  u8 pad[0x134];
  rstl::single_ptr<CGameState> x134_gameState;
  u8 pad2[0x24];
};

class CIOWinManager {
public:
    void Draw() const;

    inline bool IsEmpty() const { return x4_ == 0 && x0_ == 0; }

private:
    u32 x0_;
    u32 x4_;
    // rstl::list<?> x8_;
};

extern "C" {
// os
typedef s64 OSTime;
OSTime OSGetTime();
}

class CStopwatch {
public:
class CSWData {
public:
    void Initialize();
    s64 GetTimerFreq() const { return x0_timerFreq; }
    s64 GetTimerFreqO1M() const { return x8_timerFreqO1M; }
    f32 GetTimerPeriod() const { return x10_timerPeriod; }
    s64 GetCPUCycles() const { return OSGetTime(); }

private:
    s64 x0_timerFreq;
    s64 x8_timerFreqO1M;
    f32 x10_timerPeriod;
};

private:
static CSWData mData;
static CStopwatch mGlobalTimer;

s64 x0_startTime;

public:
    CStopwatch() : x0_startTime(mData.GetCPUCycles()) {}
    // static inline void InitGlobalTimer() {}
    // static inline CStopwatch& GetGlobalTimerObj() { return mGlobalTimer; }
    inline void Reset() {
        if (mData.GetTimerFreq() == 0) {
            mData.Initialize();
        }
        x0_startTime = mData.GetCPUCycles();
    }
    inline float GetElapsedTime() const {
        return (mData.GetCPUCycles() - x0_startTime) * mData.GetTimerPeriod();
    }
    inline s64 GetElapsedMicros() const {
        return (mData.GetCPUCycles() - x0_startTime) / mData.GetTimerFreqO1M();
    }
};

class CGameArchitectureSupport : TOneStatic<CGameArchitectureSupport> {
public:
    CGameArchitectureSupport(COsContext&);
    ~CGameArchitectureSupport();

    void PreloadAudio();
    bool UpdateTicks();
    void Update();

    // TODO
    inline CStopwatch& GetStopwatch1() { return x20_stopwatch1; }
    inline CStopwatch& GetStopwatch2() { return x28_stopwatch2; }
    inline CIOWinManager& GetIOWinManager() { return *(CIOWinManager*)(((u8*)this)+0x58); }
    inline int& GetFramesDrawn() const { return *(int*)(((u8*)this)+0x78); }

private:
    u8 pad[0x20];
    CStopwatch x20_stopwatch1;
    CStopwatch x28_stopwatch2;
    u8 pad2[0xa0];
};

class CSfxManager {
public:
    static void Update(float dt);
};

template <typename T, size_t N>
class TReservedAverage : rstl::reserved_vector<T, N> {
public:
    TReservedAverage(const T& value) {
        // resize(value, N); TODO
    }
    void AddValue(const T& value) {
        push_back(value);
        for (size_t i = size() - 1; i > 0; --i) {
            operator[](i) = operator[](i - 1);
        }
        operator[](0) = value;
    }
    rstl::optional_object<T> GetAverage() const;
};

class CMain {
  COsContext x0_osContext;
  u8 x6c_unk;
  CMemorySys x6d_memorySys;
  CTweaks x70_tweaks;
  u8 pad[0x7c];
  TReservedAverage<f32, 4> xf0_;
  TReservedAverage<f32, 4> x104_;
  f32 x118_;
  f32 x11c_;
  f32 x120_;
  f32 x124_;
  CGameGlobalObjects* x128_gameGlobalObjects;
  u32 x12c_flowState; // EFlowState
  rstl::reserved_vector<u32, 10> x130_frameTimes;
  s32 x15c_frameTimeIdx;
  bool x160_24_finished : 1;
  bool x160_25_mfGameBuilt : 1;
  bool x160_26_screenFading : 1;
  bool x160_27_ : 1;
  bool x160_28_manageCard : 1;
  bool x160_29_ : 1;
  bool x160_30_ : 1;
  bool x160_31_cardBusy : 1;
  bool x161_24_gameFrameDrawn : 1;
  CGameArchitectureSupport* x164_;

public:
  void UpdateStreamedAudio();
  void RegisterResourceTweaks();
  void ResetGameState();
  void StreamNewGameState(CInputStream& in, int saveIdx);
  void RefreshGameState();
  void AddWorldPaks();
  void EnsureWorldPaksReady();
  void AsyncIdle(u32 time);
  int RsMain(int argc, char** argv);
  void InitializeSubsystems();
  void FillInAssetIDs();
  void ShutdownSubsystems();
  void MemoryCardInitializePump();
  void DoPredrawMetrics();
  void DrawDebugMetrics(double dt, CStopwatch& stopWatch);
  bool CheckTerminate();
  bool CheckReset();
};

class CTweakGame {
public:
    u32 x0_;
    rstl::string x4_;
};

class CInGameTweakManager {
public:
  bool ReadFromMemoryCard(const rstl::string&);
private:
};

// tweaks
extern CTweakGame* gpTweakGame;

class CCubeRenderer {
public:
  virtual void BeginScene();
  virtual void EndScene();
};

extern "C" {
// PPCArch
void PPCSetFpIEEEMode();
// os
typedef s64 OSTime;
OSTime OSGetTime();
// OSCache
void LCEnable();

// ?
void srand(int);

// something pad
void sub_8038645c(u32);
// something gx
void sub_8036ccfc();
// part of CMain but lazy
void nullsub_2(CMain*);
}

class CARAMToken {
public:
  static void UpdateAllDMAs();
};

class CARAMManager {
public:
  static void Shutdown();
  static void CollectGarbage();
};

class CGraphics {
public:
    static void SetIsBeginSceneClearFb(bool);
    static void BeginScene();
    static void EndScene();
};

inline void rs_log_print(const char*, ...) {}

namespace CBasics {
    char* Stringize(const char* fmt, ...);
};

// sbss
CResFactory* gpResourceFactory;
void* gpSimplePool;
CCubeRenderer* gpRender;
void* gpCharacterFactoryBuilder;
void* gGuiSystem;
void* gpStringTable;
CMain* gpMain;
void* gpController;
CGameState* gpGameState;
void* gpMemoryCard;
CInGameTweakManager* gpTweakManager;
void* gpDefaultFont;
void* lbl_805A8C50;
void* lbl_805A8C54;
bool lbl_805A8C58;
u32 sARAMMemArray[2];

// sdata
bool lbl_805A6BC0;

// 80003640
void nullsub_1() {}

// 80003644
void InitMetroTRK() {}

// 80003648
int sub_80003648() { return 0; }

// 80003650
int sub_80003650() { return 0; }

// 80003658
void CMain::UpdateStreamedAudio() {
  CStreamAudioManager::Update(1.f / 60.f);
}

// 8000367C
void CMain::RegisterResourceTweaks() {
  x70_tweaks.RegisterResourceTweaks();
}

// 800036A0
void CMain::ResetGameState() {
  CSystemOptions persistentOptions = gpGameState->xa8_systemOptions;
  CGameOptions gameOptions = gpGameState->x17c_gameOptions;
  x128_gameGlobalObjects->x134_gameState = nullptr;
  gpGameState = nullptr;
  x128_gameGlobalObjects->x134_gameState = new CGameState();
  gpGameState = x128_gameGlobalObjects->x134_gameState.get();
  gpGameState->xa8_systemOptions = persistentOptions;
  gpGameState->x17c_gameOptions = gameOptions;
  gpGameState->x17c_gameOptions.EnsureOptions();
  gpGameState->PlayerState()->SetIsFusionEnabled(gpGameState->xa8_systemOptions.GetHasFusion());
}

// 800044A4
void CMain::StreamNewGameState(CInputStream& in, int saveIdx) {
  bool hasFusion = gpGameState->xa8_systemOptions.GetHasFusion();
  x128_gameGlobalObjects->x134_gameState = nullptr;
  gpGameState = nullptr;
  x128_gameGlobalObjects->x134_gameState = new CGameState(in, saveIdx);
  gpGameState = x128_gameGlobalObjects->x134_gameState.get();
  gpGameState->xa8_systemOptions.SetHasFusion(hasFusion);
  gpGameState->PlayerState()->SetIsFusionEnabled(gpGameState->xa8_systemOptions.GetHasFusion());
  gpGameState->x1f8_hintOptions.SetHintNextTime();
}

// 80004590
void CMain::RefreshGameState() {
    CSystemOptions systemOptions = gpGameState->xa8_systemOptions;
    int saveIdx = gpGameState->x20c_saveIdx;
    long long cardSerial = gpGameState->x210_cardSerial;
    rstl::vector<u8> backupBuf = gpGameState->x218_backupBuf;
    CGameOptions gameOptions = gpGameState->x17c_gameOptions;
    x128_gameGlobalObjects->x134_gameState = NULL;
    gpGameState = NULL;
    {
        CMemoryInStream stream(backupBuf.data(), backupBuf.size(), CMemoryInStream::Owned);
        x128_gameGlobalObjects->x134_gameState = new CGameState(stream, saveIdx);
    }
    gpGameState = x128_gameGlobalObjects->x134_gameState.get();
    gpGameState->xa8_systemOptions = systemOptions;
    gpGameState->x17c_gameOptions = gameOptions;
    gpGameState->x17c_gameOptions.EnsureOptions();
    gpGameState->x210_cardSerial = cardSerial;
    gpGameState->PlayerState()->SetIsFusionEnabled(gpGameState->xa8_systemOptions.GetHasFusion());
}

// 8000487C
void CMain::EnsureWorldPaksReady(void) {
    CResLoader& resLoader = gpResourceFactory->GetResLoader();
    for (s32 i = 0; i < resLoader.GetPakCount(); ++i) {
        CPakFile& file = resLoader.GetPakFile(i);
        if (file.IsWorldPak()) {
            file.EnsureWorldPakReady();
        }
    }
}

// 80004AEC
void CMain::AddWorldPaks() {
    rstl::rmemory_allocator allocator;
    rstl::string basePath = gpTweakGame->x4_;
    for (int i = 0; i < 9; ++i) {
        rstl::string pak = basePath + (i == 0 ? rstl::string_l("") : rstl::string(CBasics::Stringize("%d", i), -1, allocator));
        if (CDvdFile::FileExists((pak + rstl::string_l(".pak")).data())) {
            gpResourceFactory->GetResLoader().AddPakFileAsync(pak, false, true);
        }
    } 
}

// 80004CE8
void CMain::AsyncIdle(u32 time) {
    if (time < 500) {
        u32 total = 0;
        for (int i = 0; i < x130_frameTimes.capacity(); ++i) {
            total += x130_frameTimes[i];
        }
        if (total < 500 * x130_frameTimes.capacity()) {
            time = 500;
        } else {
            time = 0;
        }
    }
    if (time != 0) {
        gpResourceFactory->AsyncIdle(time);
    }
    x130_frameTimes[x15c_frameTimeIdx] = time;
    x15c_frameTimeIdx = x15c_frameTimeIdx + 1;
    if (x15c_frameTimeIdx >= x130_frameTimes.capacity()) {
        x15c_frameTimeIdx = 0;
    }
}

// 80004DC8
int CMain::RsMain(int argc, char** argv) {
    PPCSetFpIEEEMode();
    CStopwatch timer;
    LCEnable();

    rstl::single_ptr<CGameGlobalObjects> gameGlobalObjects(new CGameGlobalObjects(x0_osContext, x6d_memorySys));
    x128_gameGlobalObjects = gameGlobalObjects.get();

    for (int i = 0; i < 4; ++i) {
        xf0_.AddValue(0.3f);
        x104_.AddValue(0.2f);
    }

    x118_ = 0.3f;
    x11c_ = 0.2f;
    InitializeSubsystems();
    gameGlobalObjects->PostInitialize(x0_osContext, x6d_memorySys);
    x70_tweaks.RegisterTweaks();
    AddWorldPaks();

    {
        rstl::string str;
        bool bVar1;
        if (gpTweakManager->ReadFromMemoryCard(rstl::string_l("AudioTweaks"))) {
            str = rstl::string_l("Loaded audio tweaks from memory card\n");
            bVar1 = true;
        } else {
            str = rstl::string_l("FAILED to load audio tweaks from memory card\n");
            bVar1 = true;
        }
    
        FillInAssetIDs();
    
        rstl::single_ptr<CGameArchitectureSupport> archSupport(new CGameArchitectureSupport(x0_osContext));
        x164_ = archSupport.get();
        archSupport->PreloadAudio();
    
        srand(timer.GetElapsedMicros());
    
        if (lbl_805A8C54 != nullptr) {
            CMemoryInStream stream(lbl_805A8C54, 0x80);
            stream.ReadBits(1);
            gpGameState->x17c_gameOptions = CGameOptions(stream);
            gpGameState->x17c_gameOptions.EnsureOptions();
            lbl_805A6BC0 = stream.ReadBits(1);
        }
    
        #define dt 1.0/60.0
        while (!x160_24_finished) {
            archSupport->GetStopwatch2().Reset();
            gpResourceFactory->GetResLoader().AsyncIdlePakLoading();
            if (gpMemoryCard == nullptr && gpResourceFactory->GetResLoader().AreAllPaksLoaded()) {
                MemoryCardInitializePump();
            }
            CARAMManager::CollectGarbage();
            CARAMToken::UpdateAllDMAs();
            if (!archSupport->UpdateTicks()) {
                x160_24_finished = true;
            }
            f64 t1 = archSupport->GetStopwatch2().GetElapsedTime();
            xf0_.AddValue(t1 / dt);
            x118_ = xf0_.GetAverage().data();
            archSupport->GetStopwatch2().Reset();        
            DoPredrawMetrics();
    
            if (bVar1) {
                bVar1 = false;
                // rs_log_print(str.data());
            }
            if (!x160_26_screenFading) {
                gpRender->BeginScene();
                archSupport->GetIOWinManager().Draw();
                DrawDebugMetrics(t1, archSupport->GetStopwatch2());
    
                f64 t2 = archSupport->GetStopwatch2().GetElapsedTime();
                x104_.AddValue(t2 / dt);
                x11c_ = x104_.GetAverage().data();

                u32 idleMicros;
                f64 idleTime = (dt - (t1 + t2)) - 0.00075;
                if (idleTime > 0) idleMicros = idleTime * 1000000; 
                else idleMicros = 0;
                AsyncIdle(idleMicros);
                
                gpRender->EndScene();
    
                if (x161_24_gameFrameDrawn) {
                    ++archSupport->GetFramesDrawn();
                    x161_24_gameFrameDrawn = false;
                }
            } else {
                gpResourceFactory->AsyncIdle(1000000);
            }
    
            archSupport->Update();
            CSfxManager::Update(dt);
            UpdateStreamedAudio();
    
            if (CheckTerminate()) break;
            bool needsReset = false;
            if (archSupport->GetIOWinManager().IsEmpty()) {
                // rs_log_print
                needsReset = true;
            } else if (CheckReset()) {
                needsReset = true;
            }
            if (needsReset) {
                x12c_flowState = 5; // Default            
                CStreamAudioManager::StopAll();
                sub_8038645c(0xf0000000); 
                CGraphics::SetIsBeginSceneClearFb(true);
                CGraphics::BeginScene();
                CGraphics::EndScene();
                sub_8036ccfc();
    
                archSupport = nullptr;
                CGameArchitectureSupport* tmp = new CGameArchitectureSupport(x0_osContext);
                archSupport = tmp;
                x164_ = archSupport.get();
                tmp->PreloadAudio();
            }
            nullsub_2(this);
        }
    }
    ShutdownSubsystems();
    gameGlobalObjects = nullptr;
    CARAMManager::Shutdown();
    return 0;
}