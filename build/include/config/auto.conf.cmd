deps_config := \
	/home/jorim/esp32/esp-idf/components/app_trace/Kconfig \
	/home/jorim/esp32/esp-idf/components/aws_iot/Kconfig \
	/home/jorim/esp32/esp-idf/components/bt/Kconfig \
	/home/jorim/esp32/esp-idf/components/driver/Kconfig \
	/home/jorim/esp32/esp-idf/components/esp32/Kconfig \
	/home/jorim/esp32/esp-idf/components/esp_adc_cal/Kconfig \
	/home/jorim/esp32/esp-idf/components/esp_http_client/Kconfig \
	/home/jorim/esp32/esp-idf/components/ethernet/Kconfig \
	/home/jorim/esp32/esp-idf/components/fatfs/Kconfig \
	/home/jorim/esp32/esp-idf/components/freertos/Kconfig \
	/home/jorim/esp32/esp-idf/components/heap/Kconfig \
	/home/jorim/esp32/esp-idf/components/libsodium/Kconfig \
	/home/jorim/esp32/esp-idf/components/log/Kconfig \
	/home/jorim/esp32/esp-idf/components/lwip/Kconfig \
	/home/jorim/esp32/esp-idf/components/mbedtls/Kconfig \
	/home/jorim/esp32/esp-idf/components/openssl/Kconfig \
	/home/jorim/esp32/esp-idf/components/pthread/Kconfig \
	/home/jorim/esp32/esp-idf/components/spi_flash/Kconfig \
	/home/jorim/esp32/esp-idf/components/spiffs/Kconfig \
	/home/jorim/esp32/esp-idf/components/tcpip_adapter/Kconfig \
	/home/jorim/esp32/esp-idf/components/vfs/Kconfig \
	/home/jorim/esp32/esp-idf/components/wear_levelling/Kconfig \
	/home/jorim/esp32/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/jorim/esp32/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/jorim/esp32/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/jorim/esp32/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
