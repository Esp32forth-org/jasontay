A version of ESP32forth v7.0.6.19 adapted to work on the M5Stack devices. The primary testing unit
in my case is the M5Stack Gray with the Faces QWERTY keyboard.

The extentions have not been added as purely userwords because extensive modifications to the core
was necessary so that the basic input and output could be redirected to the M5Stack SPI display
and I2C keyboard.
