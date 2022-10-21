package main

import "github.com/fumiama/unibase2n"

import "C"
// Code generated! Do not edit

//export EncodeBase8192
func EncodeBase8192(inp []byte, out []byte) int {
	ret := unibase2n.Base8192.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase8192Into
func EncodeBase8192Into(inp []byte, out []byte) {
	unibase2n.Base8192.EncodeTo(inp, out)
}

//export EncodeBase8192Len
func EncodeBase8192Len(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base8192.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase8192
func DecodeBase8192(inp []byte, out []byte) int {
	ret := unibase2n.Base8192.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase8192Into
func DecodeBase8192Into(inp []byte, out []byte){
	unibase2n.Base8192.DecodeTo(inp, out)
}

//export DecodeBase8192Len
func DecodeBase8192Len(size ,offset int, out *int){
	ret1:= unibase2n.Base8192.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase4096
func EncodeBase4096(inp []byte, out []byte) int {
	ret := unibase2n.Base4096.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase4096Into
func EncodeBase4096Into(inp []byte, out []byte) {
	unibase2n.Base4096.EncodeTo(inp, out)
}

//export EncodeBase4096Len
func EncodeBase4096Len(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base4096.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase4096
func DecodeBase4096(inp []byte, out []byte) int {
	ret := unibase2n.Base4096.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase4096Into
func DecodeBase4096Into(inp []byte, out []byte){
	unibase2n.Base4096.DecodeTo(inp, out)
}

//export DecodeBase4096Len
func DecodeBase4096Len(size ,offset int, out *int){
	ret1:= unibase2n.Base4096.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase512
func EncodeBase512(inp []byte, out []byte) int {
	ret := unibase2n.Base512.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase512Into
func EncodeBase512Into(inp []byte, out []byte) {
	unibase2n.Base512.EncodeTo(inp, out)
}

//export EncodeBase512Len
func EncodeBase512Len(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base512.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase512
func DecodeBase512(inp []byte, out []byte) int {
	ret := unibase2n.Base512.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase512Into
func DecodeBase512Into(inp []byte, out []byte){
	unibase2n.Base512.DecodeTo(inp, out)
}

//export DecodeBase512Len
func DecodeBase512Len(size ,offset int, out *int){
	ret1:= unibase2n.Base512.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase256
func EncodeBase256(inp []byte, out []byte) int {
	ret := unibase2n.Base256.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase256Into
func EncodeBase256Into(inp []byte, out []byte) {
	unibase2n.Base256.EncodeTo(inp, out)
}

//export EncodeBase256Len
func EncodeBase256Len(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base256.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase256
func DecodeBase256(inp []byte, out []byte) int {
	ret := unibase2n.Base256.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase256Into
func DecodeBase256Into(inp []byte, out []byte){
	unibase2n.Base256.DecodeTo(inp, out)
}

//export DecodeBase256Len
func DecodeBase256Len(size ,offset int, out *int){
	ret1:= unibase2n.Base256.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBaseMath
func EncodeBaseMath(inp []byte, out []byte) int {
	ret := unibase2n.BaseMath.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBaseMathInto
func EncodeBaseMathInto(inp []byte, out []byte) {
	unibase2n.BaseMath.EncodeTo(inp, out)
}

//export EncodeBaseMathLen
func EncodeBaseMathLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.BaseMath.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBaseMath
func DecodeBaseMath(inp []byte, out []byte) int {
	ret := unibase2n.BaseMath.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBaseMathInto
func DecodeBaseMathInto(inp []byte, out []byte){
	unibase2n.BaseMath.DecodeTo(inp, out)
}

//export DecodeBaseMathLen
func DecodeBaseMathLen(size ,offset int, out *int){
	ret1:= unibase2n.BaseMath.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBaseTanWi
func EncodeBaseTanWi(inp []byte, out []byte) int {
	ret := unibase2n.BaseTanWi.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBaseTanWiInto
func EncodeBaseTanWiInto(inp []byte, out []byte) {
	unibase2n.BaseTanWi.EncodeTo(inp, out)
}

//export EncodeBaseTanWiLen
func EncodeBaseTanWiLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.BaseTanWi.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBaseTanWi
func DecodeBaseTanWi(inp []byte, out []byte) int {
	ret := unibase2n.BaseTanWi.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBaseTanWiInto
func DecodeBaseTanWiInto(inp []byte, out []byte){
	unibase2n.BaseTanWi.DecodeTo(inp, out)
}

//export DecodeBaseTanWiLen
func DecodeBaseTanWiLen(size ,offset int, out *int){
	ret1:= unibase2n.BaseTanWi.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase128
func EncodeBase128(inp []byte, out []byte) int {
	ret := unibase2n.Base128.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase128Into
func EncodeBase128Into(inp []byte, out []byte) {
	unibase2n.Base128.EncodeTo(inp, out)
}

//export EncodeBase128Len
func EncodeBase128Len(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base128.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase128
func DecodeBase128(inp []byte, out []byte) int {
	ret := unibase2n.Base128.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase128Into
func DecodeBase128Into(inp []byte, out []byte){
	unibase2n.Base128.DecodeTo(inp, out)
}

//export DecodeBase128Len
func DecodeBase128Len(size ,offset int, out *int){
	ret1:= unibase2n.Base128.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBaseDevanagari
func EncodeBaseDevanagari(inp []byte, out []byte) int {
	ret := unibase2n.BaseDevanagari.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBaseDevanagariInto
func EncodeBaseDevanagariInto(inp []byte, out []byte) {
	unibase2n.BaseDevanagari.EncodeTo(inp, out)
}

//export EncodeBaseDevanagariLen
func EncodeBaseDevanagariLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.BaseDevanagari.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBaseDevanagari
func DecodeBaseDevanagari(inp []byte, out []byte) int {
	ret := unibase2n.BaseDevanagari.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBaseDevanagariInto
func DecodeBaseDevanagariInto(inp []byte, out []byte){
	unibase2n.BaseDevanagari.DecodeTo(inp, out)
}

//export DecodeBaseDevanagariLen
func DecodeBaseDevanagariLen(size ,offset int, out *int){
	ret1:= unibase2n.BaseDevanagari.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase64
func EncodeBase64(inp []byte, out []byte) int {
	ret := unibase2n.Base64.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase64Into
func EncodeBase64Into(inp []byte, out []byte) {
	unibase2n.Base64.EncodeTo(inp, out)
}

//export EncodeBase64Len
func EncodeBase64Len(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base64.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase64
func DecodeBase64(inp []byte, out []byte) int {
	ret := unibase2n.Base64.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase64Into
func DecodeBase64Into(inp []byte, out []byte){
	unibase2n.Base64.DecodeTo(inp, out)
}

//export DecodeBase64Len
func DecodeBase64Len(size ,offset int, out *int){
	ret1:= unibase2n.Base64.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase64Gua
func EncodeBase64Gua(inp []byte, out []byte) int {
	ret := unibase2n.Base64Gua.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase64GuaInto
func EncodeBase64GuaInto(inp []byte, out []byte) {
	unibase2n.Base64Gua.EncodeTo(inp, out)
}

//export EncodeBase64GuaLen
func EncodeBase64GuaLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base64Gua.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase64Gua
func DecodeBase64Gua(inp []byte, out []byte) int {
	ret := unibase2n.Base64Gua.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase64GuaInto
func DecodeBase64GuaInto(inp []byte, out []byte){
	unibase2n.Base64Gua.DecodeTo(inp, out)
}

//export DecodeBase64GuaLen
func DecodeBase64GuaLen(size ,offset int, out *int){
	ret1:= unibase2n.Base64Gua.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBaseRune
func EncodeBaseRune(inp []byte, out []byte) int {
	ret := unibase2n.BaseRune.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBaseRuneInto
func EncodeBaseRuneInto(inp []byte, out []byte) {
	unibase2n.BaseRune.EncodeTo(inp, out)
}

//export EncodeBaseRuneLen
func EncodeBaseRuneLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.BaseRune.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBaseRune
func DecodeBaseRune(inp []byte, out []byte) int {
	ret := unibase2n.BaseRune.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBaseRuneInto
func DecodeBaseRuneInto(inp []byte, out []byte){
	unibase2n.BaseRune.DecodeTo(inp, out)
}

//export DecodeBaseRuneLen
func DecodeBaseRuneLen(size ,offset int, out *int){
	ret1:= unibase2n.BaseRune.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBaseMongolian
func EncodeBaseMongolian(inp []byte, out []byte) int {
	ret := unibase2n.BaseMongolian.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBaseMongolianInto
func EncodeBaseMongolianInto(inp []byte, out []byte) {
	unibase2n.BaseMongolian.EncodeTo(inp, out)
}

//export EncodeBaseMongolianLen
func EncodeBaseMongolianLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.BaseMongolian.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBaseMongolian
func DecodeBaseMongolian(inp []byte, out []byte) int {
	ret := unibase2n.BaseMongolian.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBaseMongolianInto
func DecodeBaseMongolianInto(inp []byte, out []byte){
	unibase2n.BaseMongolian.DecodeTo(inp, out)
}

//export DecodeBaseMongolianLen
func DecodeBaseMongolianLen(size ,offset int, out *int){
	ret1:= unibase2n.BaseMongolian.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBaseBox
func EncodeBaseBox(inp []byte, out []byte) int {
	ret := unibase2n.BaseBox.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBaseBoxInto
func EncodeBaseBoxInto(inp []byte, out []byte) {
	unibase2n.BaseBox.EncodeTo(inp, out)
}

//export EncodeBaseBoxLen
func EncodeBaseBoxLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.BaseBox.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBaseBox
func DecodeBaseBox(inp []byte, out []byte) int {
	ret := unibase2n.BaseBox.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBaseBoxInto
func DecodeBaseBoxInto(inp []byte, out []byte){
	unibase2n.BaseBox.DecodeTo(inp, out)
}

//export DecodeBaseBoxLen
func DecodeBaseBoxLen(size ,offset int, out *int){
	ret1:= unibase2n.BaseBox.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase32
func EncodeBase32(inp []byte, out []byte) int {
	ret := unibase2n.Base32.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase32Into
func EncodeBase32Into(inp []byte, out []byte) {
	unibase2n.Base32.EncodeTo(inp, out)
}

//export EncodeBase32Len
func EncodeBase32Len(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base32.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase32
func DecodeBase32(inp []byte, out []byte) int {
	ret := unibase2n.Base32.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase32Into
func DecodeBase32Into(inp []byte, out []byte){
	unibase2n.Base32.DecodeTo(inp, out)
}

//export DecodeBase32Len
func DecodeBase32Len(size ,offset int, out *int){
	ret1:= unibase2n.Base32.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBaseTibetan
func EncodeBaseTibetan(inp []byte, out []byte) int {
	ret := unibase2n.BaseTibetan.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBaseTibetanInto
func EncodeBaseTibetanInto(inp []byte, out []byte) {
	unibase2n.BaseTibetan.EncodeTo(inp, out)
}

//export EncodeBaseTibetanLen
func EncodeBaseTibetanLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.BaseTibetan.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBaseTibetan
func DecodeBaseTibetan(inp []byte, out []byte) int {
	ret := unibase2n.BaseTibetan.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBaseTibetanInto
func DecodeBaseTibetanInto(inp []byte, out []byte){
	unibase2n.BaseTibetan.DecodeTo(inp, out)
}

//export DecodeBaseTibetanLen
func DecodeBaseTibetanLen(size ,offset int, out *int){
	ret1:= unibase2n.BaseTibetan.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase16
func EncodeBase16(inp []byte, out []byte) int {
	ret := unibase2n.Base16.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase16Into
func EncodeBase16Into(inp []byte, out []byte) {
	unibase2n.Base16.EncodeTo(inp, out)
}

//export EncodeBase16Len
func EncodeBase16Len(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base16.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase16
func DecodeBase16(inp []byte, out []byte) int {
	ret := unibase2n.Base16.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase16Into
func DecodeBase16Into(inp []byte, out []byte){
	unibase2n.Base16.DecodeTo(inp, out)
}

//export DecodeBase16Len
func DecodeBase16Len(size ,offset int, out *int){
	ret1:= unibase2n.Base16.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBaseBuginese
func EncodeBaseBuginese(inp []byte, out []byte) int {
	ret := unibase2n.BaseBuginese.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBaseBugineseInto
func EncodeBaseBugineseInto(inp []byte, out []byte) {
	unibase2n.BaseBuginese.EncodeTo(inp, out)
}

//export EncodeBaseBugineseLen
func EncodeBaseBugineseLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.BaseBuginese.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBaseBuginese
func DecodeBaseBuginese(inp []byte, out []byte) int {
	ret := unibase2n.BaseBuginese.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBaseBugineseInto
func DecodeBaseBugineseInto(inp []byte, out []byte){
	unibase2n.BaseBuginese.DecodeTo(inp, out)
}

//export DecodeBaseBugineseLen
func DecodeBaseBugineseLen(size ,offset int, out *int){
	ret1:= unibase2n.BaseBuginese.DecodeLen(size, offset)
	*out = ret1
}

//export EncodeBase8Gua
func EncodeBase8Gua(inp []byte, out []byte) int {
	ret := unibase2n.Base8Gua.Encode(inp)
	if len(out) < len(ret) {
		return -1
	}
	return copy(out, ret) // buffer updated
}

//export EncodeBase8GuaInto
func EncodeBase8GuaInto(inp []byte, out []byte) {
	unibase2n.Base8Gua.EncodeTo(inp, out)
}

//export EncodeBase8GuaLen
func EncodeBase8GuaLen(size int, out *int, offset *int) {
	ret1, ret2 := unibase2n.Base8Gua.EncodeLen(size)
	*out = ret1
	*offset = ret2
}

//export DecodeBase8Gua
func DecodeBase8Gua(inp []byte, out []byte) int {
	ret := unibase2n.Base8Gua.Encode(inp)
	if len(out) < len(ret){
		return -1 // fail buffer too small
	}
	return copy(out, ret) // buffer updated
}

//export DecodeBase8GuaInto
func DecodeBase8GuaInto(inp []byte, out []byte){
	unibase2n.Base8Gua.DecodeTo(inp, out)
}

//export DecodeBase8GuaLen
func DecodeBase8GuaLen(size ,offset int, out *int){
	ret1:= unibase2n.Base8Gua.DecodeLen(size, offset)
	*out = ret1
}

func main() {}
