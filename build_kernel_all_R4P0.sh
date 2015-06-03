#!/bin/sh
export KERNELDIR=`readlink -f .`

cd $KERNELDIR;

mkdir -p $KERNELDIR/../BUILT_OUTPUTS
chmod 777 $KERNELDIR/../BUILT_OUTPUTS
rm -rf $KERNELDIR/../BUILT_OUTPUTS/*
chmod 777 $KERNELDIR/build_kernel_*

echo "Building N7100 R4P0 .....";
./build_kernel_N7100_R4P0.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

echo "Building N7105 R4P0 .....";
./build_kernel_N7105_R4P0.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

echo "Building I605 R4P0 .....";
./build_kernel_I605_R4P0.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

echo "Building I9300 R4P0 .....";
./build_kernel_I9300_R4P0.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

echo "Building I9305 R4P0 .....";
./build_kernel_I9305_R4P0.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

