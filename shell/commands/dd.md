# dd

    convert and copy a file
    Copy a file, converting and formatting according to the operands.

## SYNOPSIS

`dd [OPERAND]...`
`dd OPTION`

## Options

if=/dev/zero (if=/dev/input.file)

    The name of the input file you want dd the read from.
of=/tmp/test1.img (of=/path/to/output.file)

    The name of the output file you want dd write the input.file to.
bs=1G (bs=block-size)

    read and write up to BYTES bytes at a time.
count=1 (count=number-of-blocks)

    The number of blocks you want dd to read.
oflag=dsync (oflag=dsync)

    Use synchronized I/O for data. Do not skip this option. This option get rid of caching and gives you good and accurate results
conv=fdatasyn

    Again, this tells dd to require a complete “sync” once, right before it exits. This option is equivalent to oflag=dsync.

fdatasync    physically write output file data before finishing
fsync    likewise, but also write metadata
dsync    use synchronized I/O for data
sync    likewise, but also for metadata

Streams available:

    for zero bytes -  /dev/zero
    for random bytes - /dev/urandom

BLOCKS and BYTES may be followed by the following multiplicative suffixes: c =1, w =2, b =512, kB =1000, K =1024, MB =1000*1000, M =1024*1024, xM =M GB =1000*1000*1000, G =1024*1024*1024, and so on for T, P, E, Z, Y.

## Examples

* Use the dd command to measure server throughput (write speed)

> dd if=/dev/zero of=/tmp/test1.img bs=1G count=1 oflag=dsync

Please note that one gigabyte was written for the test

Use the dd command to measure server latency
> dd if=/dev/zero of=/tmp/test2.img bs=512 count=1000 oflag=dsync

    512000 bytes (512 kB, 500 KiB) copied, 0.051501 s, 9.9 MB/s

> dd if=/dev/zero of=/tmp/test2.img bs=4096 count=1000 oflag=dsync

    4096000 bytes (4.1 MB, 3.9 MiB) copied, 0.060692 s, 67.5 MB/s