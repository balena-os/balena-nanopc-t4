include resin-image.inc

DEPENDS = "u-boot-rockchip"

RESIN_BOOT_PARTITION_FILES = " \
    idbloader.bin:/ \
    rkbin/trust.img:/trust.img \
    uboot.img:/ \
"
