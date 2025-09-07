# Inherit mobile full common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mobile_full.mk)

# Inherit tablet common Lineage stuff
$(call inherit-product, vendor/lineage/config/tablet.mk)

$(call inherit-product, vendor/lineage/config/telephony.mk)

# MindTheGapps
WITH_GMS ?= true
GMS_TARGET_ARCH ?= arm64

ifeq ($(WITH_GMS),true)
include vendor/gapps/$(GMS_TARGET_ARCH)/$(GMS_TARGET_ARCH)-vendor.mk
endif
