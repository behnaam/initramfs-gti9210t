#!/sbin/sh

# Create directory for uncompressed files to live before being zipped
mkdir -p $1/uncompressed

# get the kernel
dd if=/dev/block/mmcblk0p8 of=$1/uncompressed/boot.img

# copy meta files to pwd
cp -a /emmc/clockworkmod/zips/files/META-INF/ $1/uncompressed

# copy /system files to pwd
cp -a /system $1/uncompressed

# go to pwd
cd $1/uncompressed

# create custom rom
zip -r ../yourcustomROM.zip *
