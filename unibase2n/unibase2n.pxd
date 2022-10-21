# cython: language_level=3
# cython: cdivision=True
cdef extern from "unibase2n.h" nogil:
    ctypedef signed char GoInt8
    ctypedef unsigned char GoUint8
    ctypedef short GoInt16
    ctypedef unsigned short GoUint16
    ctypedef int GoInt32
    ctypedef unsigned int GoUint32
    ctypedef long long GoInt64
    ctypedef unsigned long long GoUint64
    ctypedef GoInt64 GoInt
    ctypedef GoUint64 GoUint
    ctypedef float GoFloat32
    ctypedef double GoFloat64

    ctypedef struct GoString:
        const char *p
        GoInt n

    ctypedef void *GoMap
    ctypedef void *GoChan
    ctypedef struct GoInterface:
        void *t
        void *v

    ctypedef struct GoSlice:
        void *data
        GoInt len
        GoInt cap

    extern GoInt EncodeBase8192(GoSlice inp, GoSlice out)
    extern void EncodeBase8192Into(GoSlice inp, GoSlice out)
    extern void EncodeBase8192Len(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase8192(GoSlice inp, GoSlice out)
    extern void DecodeBase8192Into(GoSlice inp, GoSlice out)
    extern void DecodeBase8192Len(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase4096(GoSlice inp, GoSlice out)
    extern void EncodeBase4096Into(GoSlice inp, GoSlice out)
    extern void EncodeBase4096Len(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase4096(GoSlice inp, GoSlice out)
    extern void DecodeBase4096Into(GoSlice inp, GoSlice out)
    extern void DecodeBase4096Len(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase512(GoSlice inp, GoSlice out)
    extern void EncodeBase512Into(GoSlice inp, GoSlice out)
    extern void EncodeBase512Len(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase512(GoSlice inp, GoSlice out)
    extern void DecodeBase512Into(GoSlice inp, GoSlice out)
    extern void DecodeBase512Len(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase256(GoSlice inp, GoSlice out)
    extern void EncodeBase256Into(GoSlice inp, GoSlice out)
    extern void EncodeBase256Len(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase256(GoSlice inp, GoSlice out)
    extern void DecodeBase256Into(GoSlice inp, GoSlice out)
    extern void DecodeBase256Len(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBaseMath(GoSlice inp, GoSlice out)
    extern void EncodeBaseMathInto(GoSlice inp, GoSlice out)
    extern void EncodeBaseMathLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBaseMath(GoSlice inp, GoSlice out)
    extern void DecodeBaseMathInto(GoSlice inp, GoSlice out)
    extern void DecodeBaseMathLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBaseTanWi(GoSlice inp, GoSlice out)
    extern void EncodeBaseTanWiInto(GoSlice inp, GoSlice out)
    extern void EncodeBaseTanWiLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBaseTanWi(GoSlice inp, GoSlice out)
    extern void DecodeBaseTanWiInto(GoSlice inp, GoSlice out)
    extern void DecodeBaseTanWiLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase128(GoSlice inp, GoSlice out)
    extern void EncodeBase128Into(GoSlice inp, GoSlice out)
    extern void EncodeBase128Len(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase128(GoSlice inp, GoSlice out)
    extern void DecodeBase128Into(GoSlice inp, GoSlice out)
    extern void DecodeBase128Len(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBaseDevanagari(GoSlice inp, GoSlice out)
    extern void EncodeBaseDevanagariInto(GoSlice inp, GoSlice out)
    extern void EncodeBaseDevanagariLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBaseDevanagari(GoSlice inp, GoSlice out)
    extern void DecodeBaseDevanagariInto(GoSlice inp, GoSlice out)
    extern void DecodeBaseDevanagariLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase64(GoSlice inp, GoSlice out)
    extern void EncodeBase64Into(GoSlice inp, GoSlice out)
    extern void EncodeBase64Len(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase64(GoSlice inp, GoSlice out)
    extern void DecodeBase64Into(GoSlice inp, GoSlice out)
    extern void DecodeBase64Len(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase64Gua(GoSlice inp, GoSlice out)
    extern void EncodeBase64GuaInto(GoSlice inp, GoSlice out)
    extern void EncodeBase64GuaLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase64Gua(GoSlice inp, GoSlice out)
    extern void DecodeBase64GuaInto(GoSlice inp, GoSlice out)
    extern void DecodeBase64GuaLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBaseRune(GoSlice inp, GoSlice out)
    extern void EncodeBaseRuneInto(GoSlice inp, GoSlice out)
    extern void EncodeBaseRuneLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBaseRune(GoSlice inp, GoSlice out)
    extern void DecodeBaseRuneInto(GoSlice inp, GoSlice out)
    extern void DecodeBaseRuneLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBaseMongolian(GoSlice inp, GoSlice out)
    extern void EncodeBaseMongolianInto(GoSlice inp, GoSlice out)
    extern void EncodeBaseMongolianLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBaseMongolian(GoSlice inp, GoSlice out)
    extern void DecodeBaseMongolianInto(GoSlice inp, GoSlice out)
    extern void DecodeBaseMongolianLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBaseBox(GoSlice inp, GoSlice out)
    extern void EncodeBaseBoxInto(GoSlice inp, GoSlice out)
    extern void EncodeBaseBoxLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBaseBox(GoSlice inp, GoSlice out)
    extern void DecodeBaseBoxInto(GoSlice inp, GoSlice out)
    extern void DecodeBaseBoxLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase32(GoSlice inp, GoSlice out)
    extern void EncodeBase32Into(GoSlice inp, GoSlice out)
    extern void EncodeBase32Len(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase32(GoSlice inp, GoSlice out)
    extern void DecodeBase32Into(GoSlice inp, GoSlice out)
    extern void DecodeBase32Len(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBaseTibetan(GoSlice inp, GoSlice out)
    extern void EncodeBaseTibetanInto(GoSlice inp, GoSlice out)
    extern void EncodeBaseTibetanLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBaseTibetan(GoSlice inp, GoSlice out)
    extern void DecodeBaseTibetanInto(GoSlice inp, GoSlice out)
    extern void DecodeBaseTibetanLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase16(GoSlice inp, GoSlice out)
    extern void EncodeBase16Into(GoSlice inp, GoSlice out)
    extern void EncodeBase16Len(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase16(GoSlice inp, GoSlice out)
    extern void DecodeBase16Into(GoSlice inp, GoSlice out)
    extern void DecodeBase16Len(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBaseBuginese(GoSlice inp, GoSlice out)
    extern void EncodeBaseBugineseInto(GoSlice inp, GoSlice out)
    extern void EncodeBaseBugineseLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBaseBuginese(GoSlice inp, GoSlice out)
    extern void DecodeBaseBugineseInto(GoSlice inp, GoSlice out)
    extern void DecodeBaseBugineseLen(GoInt size, GoInt offset, GoInt* out)
    extern GoInt EncodeBase8Gua(GoSlice inp, GoSlice out)
    extern void EncodeBase8GuaInto(GoSlice inp, GoSlice out)
    extern void EncodeBase8GuaLen(GoInt size, GoInt* out, GoInt* offset)
    extern GoInt DecodeBase8Gua(GoSlice inp, GoSlice out)
    extern void DecodeBase8GuaInto(GoSlice inp, GoSlice out)
    extern void DecodeBase8GuaLen(GoInt size, GoInt offset, GoInt* out)