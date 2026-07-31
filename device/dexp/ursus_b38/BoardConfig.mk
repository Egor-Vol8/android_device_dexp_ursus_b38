# Конфигурация железа DEXP Ursus B38 (SC7731E)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true

# Платформа Spreadtrum
TARGET_BOARD_PLATFORM := sc7731e
BOARD_USES_MTK_HARDWARE := false
TARGET_BOOTLOADER_BOARD_NAME := sprd

# Ядро
TARGET_PREBUILT_KERNEL := device/dexp/ursus_b38/kernel
TARGET_PREBUILT_DTB := device/dexp/ursus_b38/dtb
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 buildvariant=user
BOARD_KERNEL_BASE := 0x00000000
BOARD_PAGE_SIZE := 2048

# Разделы (из стоковых параметров AIK)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 36700160
BOARD_FLASH_BLOCK_SIZE := 131072

# Fstab для Recovery
TARGET_RECOVERY_FSTAB := device/dexp/ursus_b38/recovery.fstab

# Настройки интерфейса Recovery для Spreadtrum
TARGET_RECOVERY_UI_LIB := librecovery_ui_sprd
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Orange Fox специфичные настройки
FOX_VERSION := R11.1
OF_MAINTAINER := Egor-Vol8
DISABLE_STYLUS_FUNCTIONS := true
TARGET_USERIMAGES_USE_EXT4 := true

# Поддержка файловых систем
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# Для работы с шифрованием (если data зашифрована)
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "f2fs"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,discard,inline_xattr,inline_data"

# Дополнительные параметры для стабильности
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_QCOM_RTC_FIX := false
FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := true
