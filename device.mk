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

VENDOR_PATH := vendor/samsung/m34x

# Inherit from the common tree
$(call inherit-product, device/samsung/universal8825-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/m34x/m34x-vendor.mk)

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/proprietary/vendor/firmware/gt9895_m34x.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/gt9895_m34x.bin 

# Overlays (Later!)
# DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay