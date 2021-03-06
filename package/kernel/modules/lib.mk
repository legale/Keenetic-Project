#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/lib-crc-ccitt
  SUBMENU:=$(LIB_MENU)
  TITLE:=CRC-CCITT support
  KCONFIG:=CONFIG_CRC_CCITT
  FILES:=$(LINUX_DIR)/lib/crc-ccitt.ko
  AUTOLOAD:=$(call AutoLoad,20,crc-ccitt)
endef

define KernelPackage/lib-crc-ccitt/description
 Kernel module for CRC-CCITT support
endef

$(eval $(call KernelPackage,lib-crc-ccitt))


define KernelPackage/lib-crc-itu-t
  SUBMENU:=$(LIB_MENU)
  TITLE:=CRC ITU-T V.41 support
  KCONFIG:=CONFIG_CRC_ITU_T
  FILES:=$(LINUX_DIR)/lib/crc-itu-t.ko
  AUTOLOAD:=$(call AutoLoad,20,crc-itu-t)
endef

define KernelPackage/lib-crc-itu-t/description
 Kernel module for CRC ITU-T V.41 support
endef

$(eval $(call KernelPackage,lib-crc-itu-t))


define KernelPackage/lib-crc7
  SUBMENU:=$(LIB_MENU)
  TITLE:=CRC7 support
  KCONFIG:=CONFIG_CRC7
  FILES:=$(LINUX_DIR)/lib/crc7.ko
  AUTOLOAD:=$(call AutoLoad,20,crc7)
endef

define KernelPackage/lib-crc7/description
 Kernel module for CRC7 support
endef

$(eval $(call KernelPackage,lib-crc7))


define KernelPackage/lib-crc8
  SUBMENU:=$(LIB_MENU)
  TITLE:=CRC8 support
  KCONFIG:=CONFIG_CRC8
  FILES:=$(LINUX_DIR)/lib/crc8.ko
  AUTOLOAD:=$(call AutoLoad,20,crc8)
endef

define KernelPackage/lib-crc8/description
 Kernel module for CRC8 support
endef

$(eval $(call KernelPackage,lib-crc8))


define KernelPackage/lib-crc16
  SUBMENU:=$(LIB_MENU)
  TITLE:=CRC16 support
  KCONFIG:=CONFIG_CRC16
  FILES:=$(LINUX_DIR)/lib/crc16.ko
  AUTOLOAD:=$(call AutoLoad,20,crc16,1)
endef

define KernelPackage/lib-crc16/description
 Kernel module for CRC16 support
endef

$(eval $(call KernelPackage,lib-crc16))


define KernelPackage/lib-crc32c
  SUBMENU:=$(LIB_MENU)
  TITLE:=CRC32 support
  KCONFIG:=CONFIG_LIBCRC32C
  DEPENDS:=+kmod-crypto-crc32c
  FILES:=$(LINUX_DIR)/lib/libcrc32c.ko
  AUTOLOAD:=$(call AutoLoad,20,libcrc32c,1)
endef

define KernelPackage/lib-crc32c/description
 Kernel module for CRC32 support
endef

$(eval $(call KernelPackage,lib-crc32c))


define KernelPackage/lib-lzo
  SUBMENU:=$(LIB_MENU)
  TITLE:=LZO support
  KCONFIG:= \
	CONFIG_CRYPTO_LZO=y \
	CONFIG_LZO_COMPRESS=y \
	CONFIG_LZO_DECOMPRESS=y
endef

define KernelPackage/lib-lzo/description
 Kernel module for LZO compression/decompression support
endef

$(eval $(call KernelPackage,lib-lzo))


define KernelPackage/lib-lz4
  SUBMENU:=$(LIB_MENU)
  TITLE:=LZ4 support
  KCONFIG:= \
	CONFIG_LZ4_COMPRESS \
	CONFIG_LZ4_DECOMPRESS
  FILES:= \
	$(LINUX_DIR)/lib/lz4/lz4_compress.ko \
	$(LINUX_DIR)/lib/lz4/lz4_decompress.ko
  AUTOLOAD:=$(call AutoLoad,20, lz4_compress lz4_decompress,1)
endef

define KernelPackage/lib-lz4/description
 Kernel module for LZ4 compression/decompression support
endef

$(eval $(call KernelPackage,lib-lz4))


define KernelPackage/lib-textsearch
SUBMENU:=$(LIB_MENU)
  TITLE:=Textsearch support
  KCONFIG:= \
    CONFIG_TEXTSEARCH=y \
    CONFIG_TEXTSEARCH_KMP=y \
    CONFIG_TEXTSEARCH_BM=y \
    CONFIG_TEXTSEARCH_FSM=y
endef

$(eval $(call KernelPackage,lib-textsearch))


define KernelPackage/lib-zlib
  SUBMENU:=$(LIB_MENU)
  TITLE:=Zlib support
  KCONFIG:= \
    CONFIG_ZLIB_DEFLATE \
    CONFIG_ZLIB_INFLATE
  FILES:= \
    $(LINUX_DIR)/lib/zlib_deflate/zlib_deflate.ko \
    $(LINUX_DIR)/lib/zlib_inflate/zlib_inflate.ko
  AUTOLOAD:=$(call AutoLoad,08,zlib_deflate zlib_inflate,1)
endef

$(eval $(call KernelPackage,lib-zlib))


define KernelPackage/lib-cordic
  SUBMENU:=$(LIB_MENU)
  TITLE:=Cordic function support
  KCONFIG:=CONFIG_CORDIC
  FILES:=$(LINUX_DIR)/lib/cordic.ko
  AUTOLOAD:=$(call AutoLoad,20,cordic)
endef

define KernelPackage/lib-cordic/description
 Kernel module for Cordic function support
endef

$(eval $(call KernelPackage,lib-cordic))
