package main

import "github.com/fumiama/unibase2n"

import "C"

//export EncodeBase8192
func EncodeBase8192(inp []byte, out []byte) int {
	ret := unibase2n.Base8192.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase8192
func DecodeBase8192(inp []byte, out []byte) int  {
	ret:= unibase2n.Base8192.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase4096
func EncodeBase4096(inp []byte, out []byte) int {
	ret:=unibase2n.Base4096.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase4096
func DecodeBase4096(inp []byte, out []byte) int {
	ret:=unibase2n.Base4096.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase512
func EncodeBase512(inp []byte, out []byte) int {
	ret:=unibase2n.Base512.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase512
func DecodeBase512(inp []byte, out []byte) int {
	ret:= unibase2n.Base512.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase256
func EncodeBase256(inp []byte, out []byte) int {
	ret:= unibase2n.Base256.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase256
func DecodeBase256(inp []byte, out []byte) int {
	ret:= unibase2n.Base256.Decode(inp)
	return copy(out, ret)
}

//export EncodeBaseMath
func EncodeBaseMath(inp []byte, out []byte) int {
	ret:= unibase2n.BaseMath.Encode(inp)
	return copy(out, ret)
}

//export DecodeBaseMath
func DecodeBaseMath(inp []byte, out []byte) int {
	ret:= unibase2n.BaseMath.Decode(inp)
	return copy(out, ret)
}

//export EncodeBaseTanWi
func EncodeBaseTanWi(inp []byte, out []byte) int {
	ret:= unibase2n.BaseTanWi.Encode(inp)
	return copy(out, ret)
}

//export DecodeBaseTanWi
func DecodeBaseTanWi(inp []byte, out []byte) int {
	ret:=unibase2n.BaseTanWi.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase128
func EncodeBase128(inp []byte, out []byte) int {
	ret:=unibase2n.Base128.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase128
func DecodeBase128(inp []byte, out []byte) int {
	ret:=unibase2n.Base128.Decode(inp)
	return copy(out, ret)
}

//export EncodeBaseDevanagari
func EncodeBaseDevanagari(inp []byte, out []byte) int {
	ret:=unibase2n.BaseDevanagari.Encode(inp)
	return copy(out, ret)
}

//export DecodeBaseDevanagari
func DecodeBaseDevanagari(inp []byte, out []byte) int {
	ret:= unibase2n.BaseDevanagari.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase64
func EncodeBase64(inp []byte, out []byte) int {
	ret:= unibase2n.Base64.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase64
func DecodeBase64(inp []byte, out []byte) int {
	ret:=unibase2n.Base64.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase64Gua
func EncodeBase64Gua(inp []byte, out []byte)int {
	ret:=unibase2n.Base64Gua.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase64Gua
func DecodeBase64Gua(inp []byte, out []byte) int {
	ret:=unibase2n.Base64Gua.Decode(inp)
	return copy(out, ret)
}

//export EncodeBaseRune
func EncodeBaseRune(inp []byte, out []byte) int {
	ret:=unibase2n.BaseRune.Encode(inp)
	return copy(out, ret)
}

//export DecodeBaseRune
func DecodeBaseRune(inp []byte, out []byte) int {
	ret:= unibase2n.BaseRune.Decode(inp)
	return copy(out, ret)
}

//export EncodeBaseMongolian
func EncodeBaseMongolian(inp []byte, out []byte) int {
	ret:=unibase2n.BaseMongolian.Encode(inp)
	return copy(out, ret)
}

//export DecodeBaseMongolian
func DecodeBaseMongolian(inp []byte, out []byte) int {
	ret:=unibase2n.BaseMongolian.Decode(inp)
	return copy(out, ret)
}

//export EncodeBaseBox
func EncodeBaseBox(inp []byte, out []byte) int {
	ret:=unibase2n.BaseBox.Encode(inp)
	return copy(out, ret)
}

//export DecodeBaseBox
func DecodeBaseBox(inp []byte, out []byte) int {
	ret:= unibase2n.BaseBox.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase32
func EncodeBase32(inp []byte, out []byte) int {
	ret:= unibase2n.Base32.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase32
func DecodeBase32(inp []byte, out []byte) int {
	ret:= unibase2n.Base32.Decode(inp)
	return copy(out, ret)
}

//export EncodeBaseTibetan
func EncodeBaseTibetan(inp []byte, out []byte) int {
	ret:= unibase2n.BaseTibetan.Encode(inp)
	return copy(out, ret)
}

//export DecodeBaseTibetan
func DecodeBaseTibetan(inp []byte, out []byte) int {
	ret:= unibase2n.BaseTibetan.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase16
func EncodeBase16(inp []byte, out []byte) int {
	ret:= unibase2n.Base16.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase16
func DecodeBase16(inp []byte, out []byte) int {
	ret:= unibase2n.Base16.Decode(inp)
	return copy(out, ret)
}

//export EncodeBaseBuginese
func EncodeBaseBuginese(inp []byte, out []byte) int {
	ret:= unibase2n.BaseBuginese.Encode(inp)
	return copy(out, ret)
}

//export DecodeBaseBuginese
func DecodeBaseBuginese(inp []byte, out []byte) int {
	ret:=unibase2n.BaseBuginese.Decode(inp)
	return copy(out, ret)
}

//export EncodeBase8Gua
func EncodeBase8Gua(inp []byte, out []byte) int {
	ret:= unibase2n.Base8Gua.Encode(inp)
	return copy(out, ret)
}

//export DecodeBase8Gua
func DecodeBase8Gua(inp []byte, out []byte) int {
	ret:= unibase2n.Base8Gua.Decode(inp)
	return copy(out, ret)
}

func main() {}