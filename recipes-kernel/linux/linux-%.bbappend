require linux-readonly-rootfs-overlay.inc
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI:append = " \
  file://overlayfs.cfg \
"
