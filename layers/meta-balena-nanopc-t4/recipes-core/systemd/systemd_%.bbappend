do_install_append(){
    # The NanoPC-T4 has CONFIG_DW_WATCHDOG as built-in
    # When using systemd to pet the watchdog in addition to the above kernel watchdog driver,
    # it has been observed that after a random period of time the kernel will complain:
    # "dw_wdt: keepalive missed, machine will reset"
    # and the machine will reset; to work around this we disable systemd watchdog feature
    #
    echo "" > ${D}/${sysconfdir}/systemd/system.conf.d/watchdog.conf
}
