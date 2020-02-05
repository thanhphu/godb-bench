# godb-bench
Benchmark for Go Key-Value DB options
* RocksDB: Based on LevelDB with SSD improvements
* LMDB-go: Simple wrapper for fast in-memory DB
* BoltDB: A fork of LMDB
* Badger: LSM tree database (like LevelDB), but written for Go

Based on [badger-bench](https://github.com/dgraph-io/badger-bench)

# How to run on a brand new EC2 instance
```
git clone https://github.com/thanhphu/godb-bench.git
cd godb-bench
./setup.sh
```

# How to run on your local computer
* Install rocksDB
* `./run_write.sh`
* `./run_read.sh`

# How to read the result
TBU