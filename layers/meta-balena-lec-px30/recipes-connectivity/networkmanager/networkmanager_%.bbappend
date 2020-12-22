do_install_append() {
    # don't enable random mac address generation when scanning for WiFi (the wifi driver does not cope well with it)
    cat >> ${D}${sysconfdir}/NetworkManager/NetworkManager.conf <<EOF

[device]
wifi.scan-rand-mac-address=no
EOF
}
