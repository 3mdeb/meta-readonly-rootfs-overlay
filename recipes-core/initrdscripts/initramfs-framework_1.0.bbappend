FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://rorootfs-overlay"

do_install:append() {
    install -m 0755 ${WORKDIR}/rorootfs-overlay ${D}/init.d/90-rorootfs-overlay
}

PACKAGES += "initramfs-module-rorootfs-overlay"

SUMMARY:initramfs-module-rorootfs-overlay = "initramfs support for locating and mounting the read-only root partition and read-write overlay"
RDEPENDS:initramfs-module-rorootfs-overlay = "${PN}-base e2fsprogs-e2fsck e2fsprogs-tune2fs e2fsprogs-mke2fs"
FILES:initramfs-module-rorootfs-overlay = "/init.d/90-rorootfs-overlay"
