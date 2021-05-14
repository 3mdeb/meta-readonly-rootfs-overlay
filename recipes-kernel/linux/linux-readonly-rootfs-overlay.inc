FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append = " \
	file://overlays.cfg \
"

# This option is turned off due to problems with integration with other
# meta-layer which use "defconfig" instead "kernel metadata" from
# yocto-kernel-cache.
#KERNEL_FEATURES_append = " features/overlayfs/overlayfs.scc"

