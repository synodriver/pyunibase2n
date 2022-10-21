# -*- coding: utf-8 -*-
from Cython.Build import cythonize
from setuptools import Extension, setup

ext_modules = [
    Extension(
        "unibase2n._b2n",
        sources=["unibase2n/_b2n.pyx"],
        include_dirs=["."],
        library_dirs=["."],
        extra_objects=["./libunibase2n.a"],
        runtime_library_dirs=["."],
    )
]
setup(
    name="go",
    ext_modules=cythonize(
        ext_modules,
        compiler_directives={
            "cdivision": True,
            "embedsignature": True,
            "boundscheck": False,
            "wraparound": False,
        },
    ),
    zip_safe=False,
)
