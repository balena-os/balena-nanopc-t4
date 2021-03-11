include balena-image.inc

BALENA_BOOT_PARTITION_FILES = " \
    idbloader.bin:/ \
    rkbin/trust.img:/trust.img \
    uboot.img:/ \
"
