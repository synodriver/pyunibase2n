# cython: language_level=3
# cython: cdivision=True
from libc.stdint cimport uint8_t
from unibase2n.unibase2n cimport GoSlice, GoInt , GoUint8, EncodeBase8192, DecodeBase8192, EncodeBase4096, DecodeBase4096
from cpython.bytes cimport PyBytes_FromStringAndSize, PyBytes_AS_STRING

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
    out.cap = bufsize
    out.len = bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase8192(slice, out)
    return buffer[:ret]

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
    out.cap = bufsize
    out.len = bufsize
    cdef GoInt ret
    with nogil:
        ret = DecodeBase8192(slice, out)
    return buffer[:ret]

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
    out.cap = bufsize
    out.len = bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase4096(slice, out)
    return buffer[:ret]

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
    out.cap = bufsize
    out.len = bufsize
    cdef GoInt ret
    with nogil:
        ret = EncodeBase4096(slice, out)
    return buffer[:ret]