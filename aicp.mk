# Copyright 2014 The Android Open Source Project
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

# Assert
TARGET_OTA_ASSERT_DEVICE := D5503,amami

# TWRP Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Build TWRP
RECOVERY_VARIANT := twrp

# Inherit AOSP Rhine common device parts
$(call inherit-product, device/sony/amami/aosp_d5503.mk)

# Inherit AICP Rhine common device parts
$(call inherit-product, device/sony/rhine-common/platform2.mk)

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Override Product Name for AICP
PRODUCT_NAME := aicp_amami
PRODUCT_MODEL := Xperia Z1 Compact
