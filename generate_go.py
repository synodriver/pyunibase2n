header = """package main

import "github.com/fumiama/unibase2n"

import "C"
// Code generated! Do not edit
"""

tail = """
func main() {}
"""
# {} 要转义 {{ }}

func_template = """
//export Encode{}
func Encode{}(inp []byte, out []byte) int {{
	ret := unibase2n.{}.Encode(inp)
	if len(out) < len(ret) {{
		return -1
	}}
	return copy(out, ret) // buffer updated
}}

//export Encode{}Into
func Encode{}Into(inp []byte, out []byte) {{
	unibase2n.{}.EncodeTo(inp, out)
}}

//export Encode{}Len
func Encode{}Len(size int, out *int, offset *int) {{
	ret1, ret2 := unibase2n.{}.EncodeLen(size)
	*out = ret1
	*offset = ret2
}}

//export Decode{}
func Decode{}(inp []byte, out []byte) int {{
	ret := unibase2n.{}.Encode(inp)
	if len(out) < len(ret){{
		return -1 // fail buffer too small
	}}
	return copy(out, ret) // buffer updated
}}

//export Decode{}Into
func Decode{}Into(inp []byte, out []byte){{
	unibase2n.{}.DecodeTo(inp, out)
}}

//export Decode{}Len
func Decode{}Len(size ,offset int, out *int){{
	ret1:= unibase2n.{}.DecodeLen(size, offset)
	*out = ret1
}}
"""
# print(func_template)
all_funcs = ["Base8192", "Base4096", "Base512", "Base256", "BaseMath", "BaseTanWi", "Base128", "BaseDevanagari", "Base64", "Base64Gua", "BaseRune", "BaseMongolian", "BaseBox", "Base32", "BaseTibetan", "Base16", "BaseBuginese", "Base8Gua"]

with open("unibase2n.go", "w") as f:
    f.write(header)
    for func in all_funcs:
        f.write(func_template.format(func, func, func, func, func, func,func, func, func, func, func, func,func, func, func, func, func, func))
    f.write(tail)
