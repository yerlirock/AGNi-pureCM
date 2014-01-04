#!/bin/sh
export KERNELDIR=`readlink -f .`

cd $KERNELDIR;

echo "Building P3100 CM.....";
./build_kernel_P3100.sh && sleep 20 && rm .config;

echo "Building P311x CM.....";
./build_kernel_P311x.sh
