header = """# cython: language_level=3
# cython: cdivision=True
from libc.stdint cimport uint8_t
from cpython.bytes cimport PyBytes_FromStringAndSize, PyBytes_AS_STRING
# Code generated. Do not edit!
"""

func_template = """
cpdef inline bytes encode_{}(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
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
        ret = Encode{}(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline encode_{}_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
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
        Encode{}Into(slice, out) # no buffer check


cpdef inline tuple encode_{}_len(GoInt size):
    cdef:
        GoInt out
        GoInt offset
    with nogil:
        Encode{}Len(size, &out, &offset)
    return out, offset


cpdef inline bytes decode_{}(const uint8_t[::1] data, Py_ssize_t bufsize = 1000):
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
        ret = Decode{}(slice, out)
    if ret == -1:
        raise ValueError("bufsize is too small")
    return buffer[:ret]

cpdef inline decode_{}_into(const uint8_t[::1] data, uint8_t[::1] outbuf):
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
        Decode{}Into(slice, out) # no buffer check

cpdef inline GoInt decode_{}_len(GoInt size, GoInt offset):
    cdef GoInt out
    with nogil:
        Decode{}Len(size, offset, &out)
    return out
"""

all_funcs = [
    "Base8192",
    "Base4096",
    "Base512",
    "Base256",
    "BaseMath",
    "BaseTanWi",
    "Base128",
    "BaseDevanagari",
    "Base64",
    "Base64Gua",
    "BaseRune",
    "BaseMongolian",
    "BaseBox",
    "Base32",
    "BaseTibetan",
    "Base16",
    "BaseBuginese",
    "Base8Gua",
]


def write_header(file):
    file.write(header)
    file.write("from unibase2n.unibase2n cimport (GoSlice, GoInt, GoUint8, ")
    for func in all_funcs:
        file.write("Encode" + func + ", \n")
        file.write("Encode" + func + "Into, \n")
        file.write("Encode" + func + "Len, \n")
        file.write("Decode" + func + ", \n")
        file.write("Decode" + func + "Into, \n")
        file.write("Decode" + func + "Len, \n")
    file.write(")")


def write_groups(file):
    for func in all_funcs:
        file.write(
            func_template.format(
                func.lower(),
                func,
                func.lower(),
                func,
                func.lower(),
                func,
                func.lower(),
                func,
                func.lower(),
                func,
                func.lower(),
                func,
            )
        )


with open("./unibase2n/_b2n.pyx", "w") as f:
    write_header(f)
    write_groups(f)
