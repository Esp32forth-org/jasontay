( Jason CJ Tay shutay@gmail.com )
( SPI Thermocouple MAX6675 Read and Report )
( Needs SPI interface support in userwords.h, then recompile ESP32forth )
( Using pins: SS {GPIO4}, SCK {GPIO18}, MISO {GPIO19}, MOSI {NC} )

0  constant SPILSBFirst
1  constant SPIMSBFirst
0  constant SPI_MODE0
4  constant SPI_MODE1
8  constant SPI_MODE2
12 constant SPI_MODE3

( Manual slave select )
4 constant SSpin
SSpin OUTPUT pinmode
SSpin HIGH digitalwrite
SPIbegin

: maxread ( -- n )
1000000 SPIMSBFirst SPI_MODE1 SPIbeginTransaction
SSpin LOW digitalwrite
0 SPItransfer16
SSpin HIGH digitalwrite
SPIendTransaction
;

( Outputs the temperature in Celcius to the terminal )
: readCelcius ( -- )
maxread
dup 4 and 0= IF
	S>F 3.125e-2 F* F.
THEN
;
