#!/bin/sh
export KERNELDIR=`readlink -f .`

if [ ! -f $KERNELDIR/.config ];
then
  make defconfig psn_p3100_v2.2_oc_defconfig
fi

. $KERNELDIR/.config

export ARCH=arm

cd $KERNELDIR/
nice -n 10 make -j4 || exit 1

mkdir -p $KERNELDIR/BUILT-P3100/lib/modules

rm $KERNELDIR/BUILT-P3100/lib/modules/*
rm $KERNELDIR/BUILT-P3100/zImage

find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT-P3100/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT-P3100/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT-P3100/

