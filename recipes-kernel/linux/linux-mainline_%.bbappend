# Add files directory to build path
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

KERNEL_FEATURE:remove = " features/overlayfs/overlayfs.scc"

SRC_URI:append = " \
  file://overlayfs.cfg \
"
