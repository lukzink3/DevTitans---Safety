# Herda as configurações do emulador (produto sdk_phone_x86_64)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_phone_x86_64.mk)

# Sobrescreve algumas variáveis com os dados do novo produto
PRODUCT_NAME := devtitans_safety
PRODUCT_DEVICE := safety
PRODUCT_BRAND := SafetyBrand
PRODUCT_MODEL := SafetyModel

PRODUCT_COPY_FILES += \
    device/devtitans/safety/devtitans.txt:system/etc/devtitans.txt \
    device/devtitans/safety/safety.rc:vendor/etc/init/safety.rc

PRODUCT_SYSTEM_PROPERTIES += \
    ro.devtitans.name=Safety

PRODUCT_PRODUCT_PROPERTIES += \
    ro.product.devtitans.version=1.0

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.devtitans.hardware=ModelB

# Seta o diretório de overlays
PRODUCT_PACKAGE_OVERLAYS = device/devtitans/kraken/overlay