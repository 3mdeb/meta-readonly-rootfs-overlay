FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://rorootfs-overlay"

do_install_append() {
    install -m 0755 ${WORKDIR}/rorootfs-overlay ${D}/init.d/90-rorootfs-overlay
}

PACKAGES += "initramfs-module-rorootfs-overlay"

SUMMARY_initramfs-module-rorootfs-overlay = "initramfs support for locating and mounting the read-only root partition and read-write overlay"
RDEPENDS_initramfs-module-rorootfs-overlay = "${PN}-base"
FILES_initramfs-module-rorootfs-overlay = "/init.d/90-rorootfs-overlay"
