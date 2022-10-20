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
    extern GoInt DecodeBase8192(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase4096(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase4096(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase512(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase512(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase256(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase256(GoSlice inp, GoSlice out)
    extern GoInt EncodeBaseMath(GoSlice inp, GoSlice out)
    extern GoInt DecodeBaseMath(GoSlice inp, GoSlice out)
    extern GoInt EncodeBaseTanWi(GoSlice inp, GoSlice out)
    extern GoInt DecodeBaseTanWi(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase128(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase128(GoSlice inp, GoSlice out)
    extern GoInt EncodeBaseDevanagari(GoSlice inp, GoSlice out)
    extern GoInt DecodeBaseDevanagari(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase64(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase64(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase64Gua(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase64Gua(GoSlice inp, GoSlice out)
    extern GoInt EncodeBaseRune(GoSlice inp, GoSlice out)
    extern GoInt DecodeBaseRune(GoSlice inp, GoSlice out)
    extern GoInt EncodeBaseMongolian(GoSlice inp, GoSlice out)
    extern GoInt DecodeBaseMongolian(GoSlice inp, GoSlice out)
    extern GoInt EncodeBaseBox(GoSlice inp, GoSlice out)
    extern GoInt DecodeBaseBox(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase32(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase32(GoSlice inp, GoSlice out)
    extern GoInt EncodeBaseTibetan(GoSlice inp, GoSlice out)
    extern GoInt DecodeBaseTibetan(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase16(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase16(GoSlice inp, GoSlice out)
    extern GoInt EncodeBaseBuginese(GoSlice inp, GoSlice out)
    extern GoInt DecodeBaseBuginese(GoSlice inp, GoSlice out)
    extern GoInt EncodeBase8Gua(GoSlice inp, GoSlice out)
    extern GoInt DecodeBase8Gua(GoSlice inp, GoSlice out)