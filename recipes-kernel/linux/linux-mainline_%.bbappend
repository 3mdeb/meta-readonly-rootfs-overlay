# Add files directory to build path
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Remove this feature from mainline kernel due to the fact that Linux mainline
# does not use yocto-kernel-cache repository and is not able to interpret .scc
# files:
KERNEL_FEATURE:remove = " features/overlayfs/overlayfs.scc"

SRC_URI:append = " \
  file://overlayfs.cfg \
"
