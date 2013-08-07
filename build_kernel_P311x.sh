#!/bin/sh
export KERNELDIR=`readlink -f .`

if [ ! -f $KERNELDIR/.config ];
then
  make defconfig psn_p311x_v2.2_oc_defconfig
fi

. $KERNELDIR/.config

export ARCH=arm

cd $KERNELDIR/
nice -n 10 make -j4 || exit 1

mkdir -p $KERNELDIR/BUILT-P311x/lib/modules

rm $KERNELDIR/BUILT-P311x/lib/modules/*
rm $KERNELDIR/BUILT-P311x/zImage

find -name '*.ko' -exec cp -av {} $KERNELDIR/BUILT-P311x/lib/modules/ \;
${CROSS_COMPILE}strip --strip-unneeded $KERNELDIR/BUILT-P311x/lib/modules/*
cp $KERNELDIR/arch/arm/boot/zImage $KERNELDIR/BUILT-P311x/

