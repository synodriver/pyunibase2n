python generate_go.py
go build  -o libunibase2n.a -buildmode=c-archive unibase2n.go
go build  -o libunibase2n.so -buildmode=c-shared unibase2n.go
mv libunibase2n.h unibase2n.h
python generate_pyx.py
isort .
black .
python setup.py build_ext -i