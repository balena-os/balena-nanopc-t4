SUMMARY = "NanoPC-T4 kernel"
DESCRIPTION = "FriendlyElec NanoPC-T4 machine kernel"

FILESEXTRAPATHS_prepend := "${THISDIR}/files/4.4.179:"

LINUX_VERSION = "4.4.179"

SRC_URI = " \
    git://github.com/friendlyarm/kernel-rockchip;protocol=https;branch=nanopi4-linux-v4.4.y \
    file://adjust_wireless_firmware_path.patch \
"
SRCREV = "644cc6b5dd0d91ffbf845df301836da69fc8ef83"

require recipes-kernel/linux/linux-yocto.inc

PV = "${LINUX_VERSION}+git${SRCPV}"

S = "${WORKDIR}/git"

KCONFIG_MODE="--alldefconfig"

COMPATIBLE_MACHINE = "(nanopc-t4|lec-px30)"

SRC_URI += " \
        file://lec-px30_config \
"

# Comment the below line to mount file system from eMMC
# SRC_URI += "file://0008-Modified-Boot-Arguments-to-mount-fileystem-from-SD-c.patch")"
