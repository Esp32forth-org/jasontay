# ESP32forth Contributions by Jason Tay

## ESP32 Benchmarks
The benchmark related files and presentation are in the "esp32" folder.

## ESP32forth SPI support
Noticing that there didn't seem to be a thin interface API layer for SPI hardware support, I decided to try writing my own. I have structured it
as a userwords.h file which can easily be added into your own ESP32forth Arduino project without having to edit the ESP32forth INO file itself.
In addition, I include an example of its use in Forth. Don't bit-bang, use this add this API layer into your ESP32forth firmware! See ```forth-spi.md```
for more information.
