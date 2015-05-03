#!/bin/sh
export KERNELDIR=`readlink -f .`

cd $KERNELDIR;

echo "Building I9300 .....";
./build_kernel_I9300.sh && sleep 5 && rm .config;

echo "Building I9305 .....";
./build_kernel_I9305.sh && sleep 5 && rm .config;

echo "Building N7100 .....";
./build_kernel_N7100.sh && sleep 5 && rm .config;

echo "Building N7100 R4P0 .....";
./build_kernel_N7100_R4P0.sh && sleep 5 && rm .config;

echo "Building N7105 .....";
./build_kernel_N7105.sh && sleep 5 && rm .config;

echo "Building N7105 R4P0 .....";
./build_kernel_N7105_R4P0.sh && sleep 5 && rm .config;

echo "Building I605 .....";
./build_kernel_I605.sh && sleep 5 && rm .config;

echo "Building I605 R4P0 .....";
./build_kernel_I605_R4P0.sh && sleep 5 && rm .config;

