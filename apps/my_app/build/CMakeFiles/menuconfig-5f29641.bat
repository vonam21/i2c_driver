@echo off
cd /D D:\Desktop\source\driver_i2c\apps\my_app\build\zephyr\kconfig || (set FAIL_LINE=2& goto :ABORT)
"C:\Program Files\CMake\bin\cmake.exe" -E env ZEPHYR_BASE=D:/Desktop/source/zephyr_3.4/zephyr PYTHON_EXECUTABLE=D:/Desktop/source/zephyr_3.4/.zephyr_3.4/Scripts/python.exe srctree=D:/Desktop/source/zephyr_3.4/zephyr KERNELVERSION=0x3046300 APPVERSION= CONFIG_=CONFIG_ KCONFIG_CONFIG=D:/Desktop/source/driver_i2c/apps/my_app/build/zephyr/.config ARCH=arm ARCH_DIR=D:/Desktop/source/zephyr_3.4/zephyr/arch BOARD_DIR=D:/Desktop/source/driver_i2c/boards/arm/blue_pill_driver BOARD_REVISION= KCONFIG_BINARY_DIR=D:/Desktop/source/driver_i2c/apps/my_app/build/Kconfig APPLICATION_SOURCE_DIR=D:/Desktop/source/driver_i2c/apps/my_app ZEPHYR_TOOLCHAIN_VARIANT=zephyr TOOLCHAIN_KCONFIG_DIR=D:/Desktop/source/zephyr-sdk-0.16.1/cmake/zephyr TOOLCHAIN_HAS_NEWLIB=y EDT_PICKLE=D:/Desktop/source/driver_i2c/apps/my_app/build/zephyr/edt.pickle ZEPHYR_ACPICA_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/acpica ZEPHYR_ACPICA_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/acpica/Kconfig ZEPHYR_CANOPENNODE_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/canopennode ZEPHYR_CANOPENNODE_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/canopennode/Kconfig ZEPHYR_CHRE_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/chre ZEPHYR_CMSIS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/cmsis ZEPHYR_FATFS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/fs/fatfs ZEPHYR_FATFS_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/fatfs/Kconfig ZEPHYR_ALTERA_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/altera ZEPHYR_HAL_AMBIQ_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/ambiq ZEPHYR_HAL_AMBIQ_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/hal_ambiq/Kconfig ZEPHYR_ATMEL_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/atmel ZEPHYR_HAL_ESPRESSIF_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/espressif ZEPHYR_HAL_ETHOS_U_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/ethos_u ZEPHYR_HAL_ETHOS_U_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/hal_ethos_u/Kconfig ZEPHYR_HAL_GIGADEVICE_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/gigadevice ZEPHYR_HAL_GIGADEVICE_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/hal_gigadevice/Kconfig ZEPHYR_HAL_INFINEON_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/infineon ZEPHYR_HAL_INFINEON_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/hal_infineon/Kconfig ZEPHYR_HAL_INTEL_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/intel ZEPHYR_MICROCHIP_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/microchip ZEPHYR_HAL_NORDIC_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/nordic ZEPHYR_HAL_NORDIC_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/hal_nordic/Kconfig ZEPHYR_NUVOTON_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/nuvoton ZEPHYR_HAL_NXP_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/nxp ZEPHYR_HAL_NXP_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/hal_nxp/Kconfig ZEPHYR_OPENISA_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/openisa ZEPHYR_QUICKLOGIC_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/quicklogic ZEPHYR_HAL_RENESAS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/renesas ZEPHYR_HAL_RPI_PICO_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/rpi_pico ZEPHYR_HAL_RPI_PICO_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/hal_rpi_pico/Kconfig ZEPHYR_SILABS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/silabs ZEPHYR_ST_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/st ZEPHYR_STM32_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/stm32 ZEPHYR_HAL_TELINK_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/telink ZEPHYR_TI_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/ti ZEPHYR_HAL_WURTHELEKTRONIK_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/wurthelektronik ZEPHYR_XTENSA_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/xtensa ZEPHYR_LIBMETAL_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/hal/libmetal ZEPHYR_LIBLC3_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/liblc3 ZEPHYR_LIBLC3_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/liblc3/Kconfig ZEPHYR_LITTLEFS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/fs/littlefs ZEPHYR_LITTLEFS_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/littlefs/Kconfig ZEPHYR_LORAMAC_NODE_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/loramac-node ZEPHYR_LORAMAC_NODE_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/loramac-node/Kconfig ZEPHYR_LVGL_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/gui/lvgl ZEPHYR_LVGL_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/lvgl/Kconfig ZEPHYR_LZ4_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/lz4 ZEPHYR_LZ4_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/lz4/Kconfig ZEPHYR_MBEDTLS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/crypto/mbedtls ZEPHYR_MBEDTLS_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/mbedtls/Kconfig ZEPHYR_MCUBOOT_MODULE_DIR=D:/Desktop/source/zephyr_3.4/bootloader/mcuboot ZEPHYR_MIPI_SYS_T_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/debug/mipi-sys-t ZEPHYR_NANOPB_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/nanopb ZEPHYR_NANOPB_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/nanopb/Kconfig ZEPHYR_NRF_HW_MODELS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/bsim_hw_models/nrf_hw_models ZEPHYR_OPEN_AMP_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/open-amp ZEPHYR_OPENTHREAD_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/openthread ZEPHYR_OPENTHREAD_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/openthread/Kconfig ZEPHYR_PICOLIBC_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/picolibc ZEPHYR_SEGGER_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/debug/segger ZEPHYR_SEGGER_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/segger/Kconfig ZEPHYR_SOF_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/audio/sof ZEPHYR_TFLITE_MICRO_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/tflite-micro ZEPHYR_TFLITE_MICRO_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/tflite-micro/Kconfig ZEPHYR_TINYCRYPT_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/crypto/tinycrypt ZEPHYR_TRACERECORDER_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/debug/TraceRecorder ZEPHYR_TRACERECORDER_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/TraceRecorder/Kconfig ZEPHYR_TRUSTED_FIRMWARE_M_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/tee/tf-m/trusted-firmware-m ZEPHYR_TRUSTED_FIRMWARE_M_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/trusted-firmware-m/Kconfig ZEPHYR_TRUSTED_FIRMWARE_A_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/tee/tf-a/trusted-firmware-a ZEPHYR_TRUSTED_FIRMWARE_A_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/trusted-firmware-a/Kconfig ZEPHYR_TF_M_TESTS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/tee/tf-m/tf-m-tests ZEPHYR_PSA_ARCH_TESTS_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/tee/tf-m/psa-arch-tests ZEPHYR_UOSCORE_UEDHOC_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/uoscore-uedhoc ZEPHYR_UOSCORE_UEDHOC_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/uoscore-uedhoc/Kconfig ZEPHYR_ZCBOR_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/zcbor ZEPHYR_ZCBOR_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/zcbor/Kconfig ZEPHYR_ZSCILIB_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/zscilib ZEPHYR_THRIFT_MODULE_DIR=D:/Desktop/source/zephyr_3.4/modules/lib/thrift ZEPHYR_THRIFT_KCONFIG=D:/Desktop/source/zephyr_3.4/zephyr/modules/thrift/Kconfig ZEPHYR_DRIVERS_DS3231_MODULE_DIR=D:/Desktop/source/driver_i2c/apps/my_app/../../drivers_ds3231 SHIELD_AS_LIST= DTS_POST_CPP=D:/Desktop/source/driver_i2c/apps/my_app/build/zephyr/zephyr.dts.pre DTS_ROOT_BINDINGS=D:/Desktop/source/driver_i2c/drivers_ds3231/dts/bindings?D:/Desktop/source/zephyr_3.4/zephyr/dts/bindings D:/Desktop/source/zephyr_3.4/.zephyr_3.4/Scripts/python.exe D:/Desktop/source/zephyr_3.4/zephyr/scripts/kconfig/menuconfig.py D:/Desktop/source/zephyr_3.4/zephyr/Kconfig || (set FAIL_LINE=3& goto :ABORT)
goto :EOF

:ABORT
set ERROR_CODE=%ERRORLEVEL%
echo Batch file failed at line %FAIL_LINE% with errorcode %ERRORLEVEL%
exit /b %ERROR_CODE%