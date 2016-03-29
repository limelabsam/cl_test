################################################################################
#
# less
#
################################################################################

CL_TEST_VERSION = 481
CL_TEST_SITE = $(BR2_GNU_MIRROR)/less
CL_TEST_LICENSE = GPLv3+
CL_TEST_LICENSE_FILES = COPYING
# Build after busybox, full-blown is better
CL_TEST_DEPENDENCIES = ncurses $(if $(BR2_PACKAGE_BUSYBOX),busybox)

define CL_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/helloworld $(TARGET_DIR)/usr/bin/helloworld
endef

$(eval $(autotools-package))
