# ESP32forth SPI Support
The ```userwords-spi.h``` file includes a thin API layer to expose the Arduino SPI library within the Forth environment.

## How to use
Add the userwords into your own ```userword.h``` file in your ESP32forth Arduino project. Then have a look at ```thermocouple.forth```
for an example of how to use it.
If you already have an existing USER_WORDS define in your project, be sure to concatenate these words into your existing list.
So far in my testing, it appears that you must use your own Slave Select (SS) pin defined as a regular GPIO output pin.
Again, see the example for how you'd go about doing this, making sure to keep the pin HIGH at all times until you wish to
read from that slave. In which case, you need to pull that SS pin LOW for the duration of the SPI transfer.

The example shows the use of the Forth SPI to read temperature values from a MAX6675 thermocouple amplifier and ADC. You will need one of these modules to try out the example:

![MAX6675 module](https://github.com/Esp32forth-org/jasontay/blob/main/images/MAX6675-Module.jpg)

## Forth Words for SPI
The following words will be added:

### SPIbegin
SPIbegin ( -- )

Initialise the SPI API. Sets SCK, and MOSI to outputs, pulling SCK and MOSI low.

### SPIbeginTransaction
SPIbeginTransaction ( bitrate bitorder SPI_mode -- )

Initialise the SPI peripheral using the settings provided on the stack. 3 numbers are required, the valid values for the constants
can be seen in the ```thermocouple.forth``` example.

### SPItransfer
SPItransfer ( n -- n )

SPI is a duplex protocol, you have to send something to receive something. SPItransfer provides a means to exchange one byte with the slave.

### SPItransfer16
SPItransfer16 ( n -- n )

Same as SPItransfer, but transfers 16-bit values instead.

### SPIendTransaction
SPIendTransaction ( -- )

Stop using the SPI peripheral. Normally this is called after de-asserting the chip select, to allow other libraries to use the SPI peripheral.

### SPIend
SPIend ( -- )

Disables the SPI peripheral (leaving pin modes unchanged).
