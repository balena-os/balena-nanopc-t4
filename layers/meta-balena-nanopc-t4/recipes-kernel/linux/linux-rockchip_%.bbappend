inherit kernel-resin deploy

# Fix module build on this 4.4 kernel
RESIN_CONFIGS_append_lec-px30 = " ccstackprotector"
RESIN_CONFIGS[ccstackprotector] = " \
    CONFIG_CC_STACKPROTECTOR_NONE=y \
    CONFIG_CC_STACKPROTECTOR_STRONG=n \
"
