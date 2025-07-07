do_install() {
    install -d ${D}${bindir}
    cp -rf ${B}/release/hello-world ${D}${bindir}/
}

