#!/bin/sh
export KERNELDIR=`readlink -f .`

cd $KERNELDIR;

echo "Building N7100 CM-type.....";
./build_kernel_N7100.sh && sleep 20 && rm .config;

echo "Building N7100 OMNI-type.....";
./build_kernel_omni_N7100.sh&& sleep 20 && rm .config;

echo "Building N7105 CM-type.....";
./build_kernel_N7105.sh && sleep 20 && rm .config;

echo "Building N7105 OMNI-type.....";
./build_kernel_omni_N7105.sh;

