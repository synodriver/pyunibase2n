# -*- coding: utf-8 -*-
from setuptools import Extension, setup
from Cython.Build import cythonize

# because the name is not libawesome.so,
# ```extra_link_args``` is needed for gcc
# yet cgo only supports gcc,
ext_modules = [
    Extension("unibase2n._b2n",
              sources=["unibase2n/_b2n.pyx"],
              include_dirs=["."],
              library_dirs=["."],
              extra_objects=["./libunibase2n.a"],
              runtime_library_dirs=["."])]
setup(
    name='go',
    ext_modules=cythonize(ext_modules,compiler_directives={"cdivision": True,
                                                   "embedsignature": True,
                                                   "boundscheck": False,
                                                   "wraparound": False}),
    zip_safe=False,
)