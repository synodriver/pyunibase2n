# cython: language_level=3
# cython: cdivision=True
from cpython.bytes cimport PyBytes_AS_STRING, PyBytes_FromStringAndSize
from libc.stdint cimport uint8_t

# Code generated. Do not edit!
from unibase2n.unibase2n cimport (DecodeBase8Gua, DecodeBase8GuaInto,
                                  DecodeBase8GuaLen, DecodeBase16,
                                  DecodeBase16Into, DecodeBase16Len,
                                  DecodeBase32, DecodeBase32Into,
                                  DecodeBase32Len, DecodeBase64,
                                  DecodeBase64Gua, DecodeBase64GuaInto,
                                  DecodeBase64GuaLen, DecodeBase64Into,
                                  DecodeBase64Len, DecodeBase128,
                                  DecodeBase128Into, DecodeBase128Len,
                                  DecodeBase256, DecodeBase256Into,
                                  DecodeBase256Len, DecodeBase512,
                                  DecodeBase512Into, DecodeBase512Len,
                                  DecodeBase4096, DecodeBase4096Into,
                                  DecodeBase4096Len, DecodeBase8192,
                                  DecodeBase8192Into, DecodeBase8192Len,
                                  DecodeBaseBox, DecodeBaseBoxInto,
                                  DecodeBaseBoxLen, DecodeBaseBuginese,
                                  DecodeBaseBugineseInto,
                                  DecodeBaseBugineseLen, DecodeBaseDevanagari,
                                  DecodeBaseDevanagariInto,
                                  DecodeBaseDevanagariLen, DecodeBaseMath,
                                  DecodeBaseMathInto, DecodeBaseMathLen,
                                  DecodeBaseMongolian, DecodeBaseMongolianInto,
                                  DecodeBaseMongolianLen, DecodeBaseRune,
                                  DecodeBaseRuneInto, DecodeBaseRuneLen,
                                  DecodeBaseTanWi, DecodeBaseTanWiInto,
                                  DecodeBaseTanWiLen, DecodeBaseTibetan,
                                  DecodeBaseTibetanInto, DecodeBaseTibetanLen,
                                  EncodeBase8Gua, EncodeBase8GuaInto,
                                  EncodeBase8GuaLen, EncodeBase16,
                                  EncodeBase16Into, EncodeBase16Len,
                                  EncodeBase32, EncodeBase32Into,
                                  EncodeBase32Len, EncodeBase64,
                                  EncodeBase64Gua, EncodeBase64GuaInto,
                                  EncodeBase64GuaLen, EncodeBase64Into,
                                  EncodeBase64Len, EncodeBase128,
                                  EncodeBase128Into, EncodeBase128Len,
                                  EncodeBase256, EncodeBase256Into,
                                  EncodeBase256Len, EncodeBase512,
                                  EncodeBase512Into, EncodeBase512Len,
                                  EncodeBase4096, EncodeBase4096Into,
                                  EncodeBase4096Len, EncodeBase8192,
                                  EncodeBase8192Into, EncodeBase8192Len,
                                  EncodeBaseBox, EncodeBaseBoxInto,
                                  EncodeBaseBoxLen, EncodeBaseBuginese,
                                  EncodeBaseBugineseInto,
                                  EncodeBaseBugineseLen, EncodeBaseDevanagari,
                                  EncodeBaseDevanagariInto,
                                  EncodeBaseDevanagariLen, EncodeBaseMath,
                                  EncodeBaseMathInto, EncodeBaseMathLen,
                                  EncodeBaseMongolian, EncodeBaseMongolianInto,
                                  EncodeBaseMongolianLen, EncodeBaseRune,
                                  EncodeBaseRuneInto, EncodeBaseRuneLen,
                                  EncodeBaseTanWi, EncodeBaseTanWiInto,
                                  EncodeBaseTanWiLen, EncodeBaseTibetan,
                                  EncodeBaseTibetanInto, EncodeBaseTibetanLen,
                                  GoInt, GoSlice, GoUint8)


cpdef inline bytes encode_base8192(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase8192(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base8192_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase8192Into(slice, out) # no buffer check


cpdef inline tuple encode_base8192_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase8192Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base8192(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase8192(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base8192_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase8192Into(slice, out) # no buffer check

cpdef inline GoInt decode_base8192_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase8192Len(size, offset, &out)
    return out

cpdef inline bytes encode_base4096(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase4096(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base4096_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase4096Into(slice, out) # no buffer check


cpdef inline tuple encode_base4096_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase4096Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base4096(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase4096(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base4096_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase4096Into(slice, out) # no buffer check

cpdef inline GoInt decode_base4096_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase4096Len(size, offset, &out)
    return out

cpdef inline bytes encode_base512(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase512(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base512_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase512Into(slice, out) # no buffer check


cpdef inline tuple encode_base512_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase512Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base512(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase512(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base512_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase512Into(slice, out) # no buffer check

cpdef inline GoInt decode_base512_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase512Len(size, offset, &out)
    return out

cpdef inline bytes encode_base256(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase256(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base256_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase256Into(slice, out) # no buffer check


cpdef inline tuple encode_base256_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase256Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base256(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase256(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base256_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase256Into(slice, out) # no buffer check

cpdef inline GoInt decode_base256_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase256Len(size, offset, &out)
    return out

cpdef inline bytes encode_basemath(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBaseMath(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_basemath_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBaseMathInto(slice, out) # no buffer check


cpdef inline tuple encode_basemath_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBaseMathLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_basemath(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBaseMath(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_basemath_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBaseMathInto(slice, out) # no buffer check

cpdef inline GoInt decode_basemath_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBaseMathLen(size, offset, &out)
    return out

cpdef inline bytes encode_basetanwi(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBaseTanWi(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_basetanwi_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBaseTanWiInto(slice, out) # no buffer check


cpdef inline tuple encode_basetanwi_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBaseTanWiLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_basetanwi(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBaseTanWi(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_basetanwi_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBaseTanWiInto(slice, out) # no buffer check

cpdef inline GoInt decode_basetanwi_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBaseTanWiLen(size, offset, &out)
    return out

cpdef inline bytes encode_base128(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase128(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base128_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase128Into(slice, out) # no buffer check


cpdef inline tuple encode_base128_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase128Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base128(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase128(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base128_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase128Into(slice, out) # no buffer check

cpdef inline GoInt decode_base128_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase128Len(size, offset, &out)
    return out

cpdef inline bytes encode_basedevanagari(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBaseDevanagari(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_basedevanagari_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBaseDevanagariInto(slice, out) # no buffer check


cpdef inline tuple encode_basedevanagari_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBaseDevanagariLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_basedevanagari(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBaseDevanagari(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_basedevanagari_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBaseDevanagariInto(slice, out) # no buffer check

cpdef inline GoInt decode_basedevanagari_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBaseDevanagariLen(size, offset, &out)
    return out

cpdef inline bytes encode_base64(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase64(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base64_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase64Into(slice, out) # no buffer check


cpdef inline tuple encode_base64_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase64Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base64(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase64(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base64_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase64Into(slice, out) # no buffer check

cpdef inline GoInt decode_base64_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase64Len(size, offset, &out)
    return out

cpdef inline bytes encode_base64gua(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase64Gua(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base64gua_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase64GuaInto(slice, out) # no buffer check


cpdef inline tuple encode_base64gua_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase64GuaLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base64gua(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase64Gua(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base64gua_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase64GuaInto(slice, out) # no buffer check

cpdef inline GoInt decode_base64gua_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase64GuaLen(size, offset, &out)
    return out

cpdef inline bytes encode_baserune(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBaseRune(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_baserune_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBaseRuneInto(slice, out) # no buffer check


cpdef inline tuple encode_baserune_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBaseRuneLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_baserune(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBaseRune(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_baserune_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBaseRuneInto(slice, out) # no buffer check

cpdef inline GoInt decode_baserune_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBaseRuneLen(size, offset, &out)
    return out

cpdef inline bytes encode_basemongolian(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBaseMongolian(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_basemongolian_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBaseMongolianInto(slice, out) # no buffer check


cpdef inline tuple encode_basemongolian_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBaseMongolianLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_basemongolian(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBaseMongolian(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_basemongolian_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBaseMongolianInto(slice, out) # no buffer check

cpdef inline GoInt decode_basemongolian_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBaseMongolianLen(size, offset, &out)
    return out

cpdef inline bytes encode_basebox(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBaseBox(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_basebox_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBaseBoxInto(slice, out) # no buffer check


cpdef inline tuple encode_basebox_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBaseBoxLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_basebox(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBaseBox(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_basebox_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBaseBoxInto(slice, out) # no buffer check

cpdef inline GoInt decode_basebox_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBaseBoxLen(size, offset, &out)
    return out

cpdef inline bytes encode_base32(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase32(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base32_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase32Into(slice, out) # no buffer check


cpdef inline tuple encode_base32_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase32Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base32(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase32(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base32_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase32Into(slice, out) # no buffer check

cpdef inline GoInt decode_base32_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase32Len(size, offset, &out)
    return out

cpdef inline bytes encode_basetibetan(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBaseTibetan(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_basetibetan_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBaseTibetanInto(slice, out) # no buffer check


cpdef inline tuple encode_basetibetan_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBaseTibetanLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_basetibetan(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBaseTibetan(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_basetibetan_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBaseTibetanInto(slice, out) # no buffer check

cpdef inline GoInt decode_basetibetan_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBaseTibetanLen(size, offset, &out)
    return out

cpdef inline bytes encode_base16(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase16(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base16_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase16Into(slice, out) # no buffer check


cpdef inline tuple encode_base16_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase16Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base16(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase16(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base16_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase16Into(slice, out) # no buffer check

cpdef inline GoInt decode_base16_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase16Len(size, offset, &out)
    return out

cpdef inline bytes encode_basebuginese(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBaseBuginese(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_basebuginese_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBaseBugineseInto(slice, out) # no buffer check


cpdef inline tuple encode_basebuginese_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBaseBugineseLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_basebuginese(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBaseBuginese(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_basebuginese_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBaseBugineseInto(slice, out) # no buffer check

cpdef inline GoInt decode_basebuginese_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBaseBugineseLen(size, offset, &out)
    return out

cpdef inline bytes encode_base8gua(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase8Gua(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_base8gua_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        EncodeBase8GuaInto(slice, out) # no buffer check


cpdef inline tuple encode_base8gua_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        EncodeBase8GuaLen(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_base8gua(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
    cdef:
        GoSlice slice
        GoSlice out
    cdef bytes buffer = PyBytes_FromStringAndSize(NULL, bufsize)
    if not buffer:
        raise MemoryError
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>PyBytes_AS_STRING(buffer)
    out.cap = <GoInt>bufsize
    out.len = <GoInt>bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase8Gua(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_base8gua_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
    cdef:
        GoSlice slice
        GoSlice out
    slice.data = <void*>&data[0]
    slice.len = <GoInt>data.shape[0]
    slice.cap = <GoInt>data.shape[0]
    out.data = <void*>&outbuf[0]
    out.cap = <GoInt>outbuf.shape[0]
    out.len = <GoInt>outbuf.shape[0]
    with nogil:
        DecodeBase8GuaInto(slice, out) # no buffer check

cpdef inline GoInt decode_base8gua_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        DecodeBase8GuaLen(size, offset, &out)
    return out
