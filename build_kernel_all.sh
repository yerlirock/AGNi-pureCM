#!/bin/sh
export KERNELDIR=`readlink -f .`

cd $KERNELDIR;

mkdir -p $KERNELDIR/../BUILT_OUTPUTS
chmod 777 $KERNELDIR/../BUILT_OUTPUTS
rm -rf $KERNELDIR/../BUILT_OUTPUTS/*
chmod 777 $KERNELDIR/build_kernel_*

echo "Building N7100 .....";
./build_kernel_N7100.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

echo "Building N7105 .....";
./build_kernel_N7105.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

echo "Building I605 .....";
./build_kernel_I605.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

echo "Building I9300 .....";
./build_kernel_I9300.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

echo "Building I9305 .....";
./build_kernel_I9305.sh && sleep 5 && rm .config;
mv BUILT_*/ ../BUILT_OUTPUTS/

