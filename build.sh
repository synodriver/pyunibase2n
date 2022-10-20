go build  -o libunibase2n.a -buildmode=c-archive unibase.go
go build  -o libunibase2n.so -buildmode=c-shared unibase.go
mv libunibase2n.h unibase2n.h