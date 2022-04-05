#define FourCC unsigned long

static FourCC mCurrentLanguage = 'ENGL';

class CStringTable {
    u32 x0_stringCount;
    rstl::single_ptr<u8> x4_data;
public:
    CStringTable(CInputStream& in);
};

template <>
inline s32 cinput_stream_helper(TType<s32> type, CInputStream& in) { return in.ReadLong(); }
template <>
inline u32 cinput_stream_helper(TType<u32> type, CInputStream& in) { return in.ReadLong(); }
template <>
inline unsigned long cinput_stream_helper(TType<unsigned long> type, CInputStream& in) { return in.ReadLong(); }
template <typename L, typename R>
inline rstl::pair<L, R> cinput_stream_helper(TType<rstl::pair<L, R> > type, CInputStream& in) {
    rstl::pair<L, R> result;
    result.first = in.Get<L>();
    result.second = in.Get<R>();
    return result;
}

CStringTable::CStringTable(CInputStream& in) : x0_stringCount(0), x4_data(NULL) {
    in.ReadLong();
    in.ReadLong();
    size_t langCount = in.Get<size_t>();
    x0_stringCount = in.Get<u32>();
    rstl::vector<rstl::pair<FourCC, unsigned long> > langOffsets(langCount);
    for (size_t i = 0; i < langCount; ++i) {
        langOffsets.push_back(in.Get<rstl::pair<FourCC, unsigned long> >());
    }

    size_t offset = langOffsets.front().second;
    for (size_t i = 0; i < langCount; ++i) {
        if (langOffsets[i].first == mCurrentLanguage) {
            offset = langOffsets[i].second;
            break;
        }
    }
    for (u32 i = 0; i < offset; ++i) {
        in.ReadChar();
    }

    u32 dataLen = in.Get<u32>();
    x4_data = new u8[dataLen];
    in.ReadBytes(x4_data.get(), dataLen);
}
