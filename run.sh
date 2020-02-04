export GOMAXPROCS=128

/usr/bin/time -v godb-bench --kv badger --valsz 128 --keys_mil 1 --dir data >> time.log
/usr/bin/time -v godb-bench --kv rocksdb --valsz 128 --keys_mil 1 --dir data >> time.log
/usr/bin/time -v godb-bench --kv bolt --valsz 128 --keys_mil 1 --dir data >> time.log
/usr/bin/time -v godb-bench --kv leveldb --valsz 128 --keys_mil 1 --dir data >> time.log
/usr/bin/time -v godb-bench --kv lmdb --valsz 128 --keys_mil 1 --dir data >> time.log

# /usr/bin/time -v godb-bench --kv badger --valsz 1024 --keys_mil 1 --dir data
# /usr/bin/time -v godb-bench --kv badger --valsz 16384 --keys_mil 1 --dir data
