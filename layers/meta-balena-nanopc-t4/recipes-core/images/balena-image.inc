IMAGE_FSTYPES_append = " balenaos-img"

# Customize balenaos-img
BALENA_IMAGE_BOOTLOADER = "virtual/bootloader"

IMAGE_CMD_balenaos-img_append () {
    dd if=${DEPLOY_DIR_IMAGE}/idbloader.bin of=${BALENA_RAW_IMG} conv=notrunc bs=512 seek=64
    dd if=${DEPLOY_DIR_IMAGE}/uboot.img of=${BALENA_RAW_IMG} conv=notrunc bs=512 seek=16384
    dd if=${DEPLOY_DIR_IMAGE}/rkbin/trust.img of=${BALENA_RAW_IMG} conv=notrunc bs=512 seek=24576
}

# we need some space before in order to write the boot binaries, as per http://rockchip.wikidot.com/partitions
# (we do not use GPT though and we only write idbloader.bin, u-boot.img and trust.img as opposed to the above wiki)
DEVICE_SPECIFIC_SPACE = "20480"
