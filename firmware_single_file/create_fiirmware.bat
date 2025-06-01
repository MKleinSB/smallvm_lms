copy ..\.pio\build\esp32lvgl\*.bin .
copy ..\esp32\boot_app0.bin .
esptool.exe --chip esp32 merge_bin  --flash_mode dio --flash_freq 80m --flash_size 4MB  0x1000 bootloader.bin 0x8000 partitions.bin 0xe000 boot_app0.bin 0x10000 firmware.bin -o firmware_MicroBlocks_LVGL_LMS_ESP32_20250601.bin