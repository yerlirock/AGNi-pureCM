#!/bin/sh
export KERNELDIR=`readlink -f .`

cd $KERNELDIR;

echo "Building N7100 .....";
./build_kernel_N7100.sh && sleep 20 && rm .config;

echo "Building N7100 wolf .....";
./build_kernel_N7100_wolf.sh && sleep 20 && rm .config;

echo "Building N7100 R4P0 .....";
export KERNELDIR=`readlink -f .`
. ~/AGNi_stamp_CM.sh
. ~/gcc_4.9.2_linaro_cortex-a9.sh
export ARCH=arm
make defconfig psn_n7100_v2.9.0_R4P0_defconfig
. $KERNELDIR/.config
mv .git .git-halt
cd $KERNELDIR/
make -j2 || exit 1
mkdir -p $KERNELDIR/BUILT_N7100_R4P0/lib/modules
rm $KERNELDIR/BUILT_N7100_R4P0/lib/modules/*
rm $KERNELDIR/BUILT_N7100_R4P0/zImage
find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT_N7100_R4P0/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT_N7100_R4P0/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT_N7100_R4P0/
mv .git-halt .git

echo "Building N7100 wolf R4P0 .....";
export KERNELDIR=`readlink -f .`
. ~/AGNi_stamp_CM.sh
. ~/gcc_4.9.2_linaro_cortex-a9.sh
export ARCH=arm
make defconfig psn_n7100_v2.9.0_R4P0_wolf_defconfig
. $KERNELDIR/.config
mv .git .git-halt
cd $KERNELDIR/
make -j2 || exit 1
mkdir -p $KERNELDIR/BUILT_N7100_R4P0_wolf/lib/modules
rm $KERNELDIR/BUILT_N7100_R4P0_wolf/lib/modules/*
rm $KERNELDIR/BUILT_N7100_R4P0_wolf/zImage
find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT_N7100_R4P0_wolf/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT_N7100_R4P0_wolf/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT_N7100_R4P0_wolf/
mv .git-halt .git

echo "Building N7105 .....";
./build_kernel_N7105.sh && sleep 20 && rm .config;

echo "Building N7105 wolf.....";
./build_kernel_N7105_wolf.sh && sleep 20 && rm .config;

echo "Building N7105 R4P0 .....";
export KERNELDIR=`readlink -f .`
. ~/AGNi_stamp_CM.sh
. ~/gcc_4.9.2_linaro_cortex-a9.sh
export ARCH=arm
make defconfig psn_n7105_v2.9.0_R4P0_defconfig
. $KERNELDIR/.config
mv .git .git-halt
cd $KERNELDIR/
make -j2 || exit 1
mkdir -p $KERNELDIR/BUILT_N7105_R4P0/lib/modules
rm $KERNELDIR/BUILT_N7105_R4P0/lib/modules/*
rm $KERNELDIR/BUILT_N7105_R4P0/zImage
find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT_N7105_R4P0/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT_N7105_R4P0/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT_N7105_R4P0/
mv .git-halt .git

echo "Building N7105 wolf R4P0 .....";
export KERNELDIR=`readlink -f .`
. ~/AGNi_stamp_CM.sh
. ~/gcc_4.9.2_linaro_cortex-a9.sh
export ARCH=arm
make defconfig psn_n7105_v2.9.0_R4P0_wolf_defconfig
. $KERNELDIR/.config
mv .git .git-halt
cd $KERNELDIR/
make -j2 || exit 1
mkdir -p $KERNELDIR/BUILT_N7105_R4P0_wolf/lib/modules
rm $KERNELDIR/BUILT_N7105_R4P0_wolf/lib/modules/*
rm $KERNELDIR/BUILT_N7105_R4P0_wolf/zImage
find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT_N7105_R4P0_wolf/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT_N7105_R4P0_wolf/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT_N7105_R4P0_wolf/
mv .git-halt .git

echo "Building I605 .....";
./build_kernel_I605.sh && sleep 20 && rm .config;

echo "Building I605 wolf .....";
./build_kernel_I605_wolf.sh && sleep 20 && rm .config;


echo "Building I605 R4P0 .....";
export KERNELDIR=`readlink -f .`
. ~/AGNi_stamp_CM.sh
. ~/gcc_4.9.2_linaro_cortex-a9.sh
export ARCH=arm
make defconfig psn_i605_v2.9.0_R4P0_defconfig
. $KERNELDIR/.config
mv .git .git-halt
cd $KERNELDIR/
make -j2 || exit 1
mkdir -p $KERNELDIR/BUILT_I605_R4P0/lib/modules
rm $KERNELDIR/BUILT_I605_R4P0/lib/modules/*
rm $KERNELDIR/BUILT_I605_R4P0/zImage
find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT_I605_R4P0/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT_I605_R4P0/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT_I605_R4P0/
mv .git-halt .git

echo "Building I605 wolf R4P0 .....";
export KERNELDIR=`readlink -f .`
. ~/AGNi_stamp_CM.sh
. ~/gcc_4.9.2_linaro_cortex-a9.sh
export ARCH=arm
make defconfig psn_i605_v2.9.0_R4P0_wolf_defconfig
. $KERNELDIR/.config
mv .git .git-halt
cd $KERNELDIR/
make -j2 || exit 1
mkdir -p $KERNELDIR/BUILT_I605_R4P0_wolf/lib/modules
rm $KERNELDIR/BUILT_I605_R4P0_wolf/lib/modules/*
rm $KERNELDIR/BUILT_I605_R4P0_wolf/zImage
find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT_I605_R4P0_wolf/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT_I605_R4P0_wolf/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT_I605_R4P0_wolf/
mv .git-halt .git

