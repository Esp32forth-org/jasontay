/* User defined words in here */

/* Added by Jason CJ Tay (shutay@gmail.com) */
/* For basic SPI support: */
#include <SPI.h>

#define USER_WORDS \
  Y(SPIbegin, SPI.begin()) \
  Y(SPIbeginTransaction, SPI.beginTransaction(SPISettings(n2, n1, n0)); DROPn(3)) \
  Y(SPItransfer, SET SPI.transfer(n0) ) \
  Y(SPItransfer16, SET SPI.transfer16(n0) ) \
  Y(SPIendTransaction, SPI.endTransaction()) \
  Y(SPIend, SPI.end())
