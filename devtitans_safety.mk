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
PRODUCT_PACKAGE_OVERLAYS = device/devtitans/safety/overlay

PRODUCT_PACKAGES += \
    safety_client

BOARD_SEPOLICY_DIRS += device/devtitans/safety/sepolicy
# Smartlamp AIDL Interface
PRODUCT_PACKAGES += devtitans.safety

# Smartlamp Binder Service
PRODUCT_PACKAGES += devtitans.safety-service

# Device Framework Matrix (Declara que o nosso produto Kraken precisa do serviço smartlamp)
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := device/devtitans/safety/device_framework_matrix.xml

# Cliente de Linha de Comando para o Serviço Smartlamp
PRODUCT_PACKAGES += safety_service_client