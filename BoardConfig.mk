#
# Copyright (C) 2024 Samsung Exynos 1280 Devs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/m34x

# Inherit from the common tree
include device/samsung/universal8825-common/BoardConfigCommon.mk

# Inherit from the vendor tree
include vendor/samsung/m34x/BoardConfigVendor.mk

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Kernel
TARGET_KERNEL_CONFIG := lineage_m34x_defconfig

# OTA assert
TARGET_OTA_ASSERT_DEVICE := m34x

# File systems
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE    := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE      := ext4
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE      := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE         := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE       := ext4

BOARD_USES_METADATA_PARTITION        := true
TARGET_USERIMAGES_USE_F2FS           := true
TARGET_USERIMAGES_USE_EXT4           := true

# Partitions
BOARD_SUPER_PARTITION_SIZE := 11744051200
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 11744051196 # BOARD_SUPER_PARTITION_SIZE-4MiB
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm vendor_dlkm

BOARD_FLASH_BLOCK_SIZE := 262144

# Partitions sizes
BOARD_DTBOIMG_PARTITION_SIZE       	:= 8388608
BOARD_BOOTIMAGE_PARTITION_SIZE		:= 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 100663296
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE	:= 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE    	:= 629145600

# Out dirs
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_ODM := odm

# Kernel modules
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)

# DTBO
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_DTBO_CFG := $(DEVICE_PATH)/configs/kernel/m34x.cfg