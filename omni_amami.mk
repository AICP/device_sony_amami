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

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 720x407

# TWRP Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Inherit AOSP Rhine common device parts
$(call inherit-product, device/sony/amami/aosp_d5503.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit Omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/amami/recovery/root/etc/bootrec-device:recovery/root/etc/bootrec-device

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGSMDevice=1

# Override Product Name for OmniROM
PRODUCT_NAME := omni_amami
PRODUCT_MODEL := Xperia Z1 Compact
