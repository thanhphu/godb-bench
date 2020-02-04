#!/usr/bin/env bash
#set -x
export GOMAXPROCS=128
export LD_LIBRARY_PATH=/usr/local/lib

go test --bench BenchmarkReadRandomBadger --keys_mil 1 --valsz 16384 --dir data --timeout 10m --benchtime 1m -v
go test --bench BenchmarkReadRandomRocks --keys_mil 1 --valsz 16384 --dir data --timeout 10m --benchtime 1m -v
go test --bench BenchmarkReadRandomBolt --keys_mil 1 --valsz 16384 --dir data --timeout 10m --benchtime 1m -v
go test --bench BenchmarkReadRandomLevel --keys_mil 1 --valsz 16384 --dir data --timeout 10m --benchtime 1m -v
go test --bench BenchmarkReadRandomLmdb --keys_mil 1 --valsz 16384 --dir data --timeout 10m --benchtime 1m -v