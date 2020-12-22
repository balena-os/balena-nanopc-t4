SUMMARY = "NanoPC-T4 kernel"
DESCRIPTION = "FriendlyElec NanoPC-T4 machine kernel"

LIC_FILES_CHKSUM = "file://LICENSES/preferred/GPL-2.0;md5=e6a75371ba4d16749254a51215d13f97"

LINUX_VERSION = "5.2.0"

DEPENDS += "coreutils-native"

FILESEXTRAPATHS_prepend := "${THISDIR}/files/5.2.0:"

SRC_URI = " \
    git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git;protocol=git;branch=master \
    file://defconfig \
    file://mali.cfg \
    file://0000-mali-TX011-SW-99002-r14p0-01rel0.patch \
    file://0001-Mali-midgard-r19p0-fixes-for-4.13-kernels.patch \
    file://0002-Using-the-new-header-on-4.12-kernels-for-copy_-_user.patch \
    file://0003-Adapt-get_user_pages-calls-to-use-the-new-calling-pr.patch \
    file://0004-Don-t-be-TOO-severe-when-looking-for-the-IRQ-names.patch \
    file://0005-Added-the-new-compatible-list-mainly-used-by-Rockchi.patch \
    file://0006-gpu-arm-Midgard-setup_timer-timer_setup.patch \
    file://0007-drivers-gpu-Arm-Midgard-Replace-ACCESS_ONCE-by-READ_.patch \
    file://0009-GPU-ARM-Midgard-Adapt-to-the-new-mmap-call-checks.patch \
    file://0010-GPU-Mali-Midgard-remove-rcu_read_lock-references.patch \
    file://0011-mali-kbase-v4.20-to-v5.0-rc2-changes.patch \
    file://1001-drivers-Integrating-Mali-Midgard-video-and-gpu-drive.patch \
    file://1004-Remove-the-dependency-to-the-clk_mali-symbol.patch \
    file://1007-mali-Allow-to-compile-the-mali-driver-out-of-the-ker.patch \
    file://1008-Revert-mm-Remove-return-value-of-zap_vma_ptes.patch \
    file://1009-Revert-arm64-remove-unused-asm-compiler.h-header-fil.patch \
    file://1010-Mali-midgard-r14p0-01rel0-fixes-for-5.2.0-kernel.patch \
"

SRCREV = "0ecfebd2b52404ae0c54a878c872bb93363ada36"

require recipes-kernel/linux/linux-yocto.inc

PV = "${LINUX_VERSION}+git${SRCPV}"

S = "${WORKDIR}/git"

KCONFIG_MODE="--alldefconfig"

COMPATIBLE_MACHINE = "(nanopc-t4)"

FILES_${KERNEL_PACKAGE_NAME}-base += "${nonarch_base_libdir}/modules/${KERNEL_VERSION}/modules.builtin.modinfo"
