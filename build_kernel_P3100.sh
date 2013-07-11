#!/bin/sh
export KERNELDIR=`readlink -f .`
CROSS_COMPILE=/Working_Directory/android_prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi-

if [ ! -f $KERNELDIR/.config ];
then
  make defconfig psn_p3100_v2.0_oc_defconfig
fi

. $KERNELDIR/.config

export ARCH=arm

cd $KERNELDIR/
nice -n 10 make -j4 || exit 1

mkdir -p $KERNELDIR/BUILT-P3100/lib/modules

rm $KERNELDIR/BUILT-P3100/lib/modules/*
rm $KERNELDIR/BUILT-P3100/zImage

find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT-P3100/lib/modules/ \;
/Working_Directory/android_prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi-strip --strip-unneeded $KERNELDIR/BUILT-P3100/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT-P3100/

