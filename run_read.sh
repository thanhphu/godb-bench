#!/usr/bin/env bash
#set -x
export GOMAXPROCS=32
export LD_LIBRARY_PATH=/usr/local/lib

go test --bench BenchmarkReadRandomBadger --keys_mil 1 --valsz 1024 --dir data --timeout 1m --benchtime 1m -v
go test --bench BenchmarkReadRandomRocks --keys_mil 1 --valsz 1024 --dir data --timeout 1m --benchtime 1m -v
go test --bench BenchmarkReadRandomBolt --keys_mil 1 --valsz 1024 --dir data --timeout 1m --benchtime 1m -v
go test --bench BenchmarkReadRandomLevel --keys_mil 1 --valsz 1024 --dir data --timeout 1m --benchtime 1m -v
go test --bench BenchmarkReadRandomLmdb --keys_mil 1 --valsz 1024 --dir data --timeout 1m --benchtime 1m -v