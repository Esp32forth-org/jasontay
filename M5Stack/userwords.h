/* User defined words in here */

/* Added by Jason CJ Tay (shutay aat gmail dooot com) */
/* For basic SPI and M5Stack support */
#include <SPI.h>
#include <M5Stack.h>

#define USER_WORDS \
  Y(SPIbegin, SPI.begin()) \
  Y(SPIbeginTransaction, SPI.beginTransaction(SPISettings(n2, n1, n0)); DROPn(3)) \
  Y(SPItransfer, SET SPI.transfer(n0) ) \
  Y(SPItransfer16, SET SPI.transfer16(n0) ) \
  Y(SPIendTransaction, SPI.endTransaction()) \
  Y(SPIend, SPI.end()) \
  Y(touchRead, SET touchRead(n0)) \
  Y(M5begin, M5.begin()) \
  Y(M5PwrBegin, M5.Power.begin()) \
  Y(M5BtnA, PUSH M5.BtnA.read()) \
  Y(M5BtnB, PUSH M5.BtnB.read()) \
  Y(M5BtnC, PUSH M5.BtnC.read()) \
  Y(M5LcdBegin, M5.Lcd.begin()) \
  Y(M5LcdSleep, M5.Lcd.sleep()) \
  Y(M5LcdWake, M5.Lcd.wakeup()) \
  Y(M5LcdWidth, PUSH M5.Lcd.width()) \
  Y(M5LcdHeight, PUSH M5.Lcd.height()) \
  Y(M5SetRot, M5.Lcd.setRotation((uint8_t)n0); DROP) \
  Y(M5SetBrightness, M5.Lcd.setBrightness(n0); DROP) \
  Y(M5SetCursor, M5.Lcd.setCursor(n1, n0); DROPn(2)) \
  Y(M5Fill, M5.Lcd.fillScreen(n0); DROP) \
  Y(M5Color, tos = M5.Lcd.color565((uint8_t)n2, (uint8_t)n1, (uint8_t)n0); NIPn(2)) \
  Y(M5Pixel, M5.Lcd.drawPixel((int32_t)n2, (int32_t)n1, (uint32_t)n0); DROPn(3)) \
  Y(M5Line, M5.Lcd.drawLine(n4, n3, n2, n1, n0); DROPn(5)) \
  Y(M5Rect, M5.Lcd.drawRect(n4, n3, n2, n1, n0); DROPn(5)) \
  Y(M5FillRect, M5.Lcd.fillRect(n4, n3, n2, n1, n0); DROPn(5)) \
  Y(M5Print, M5.Lcd.print(c0); DROP) \
  Y(M5DrawStr, M5.Lcd.drawString(c3, n2, n1, n0); DROPn(4)) \
  Y(M5DrawNum, M5.Lcd.drawNumber(n2, n1, n0); DROPn(3)) \
  Y(M5TextSize, M5.Lcd.setTextSize(n0); DROP) \
  Y(M5TextColor, M5.Lcd.setTextColor(n0); DROP) \
  Y(M5TextFgBg, M5.Lcd.setTextColor(n1, n0); DROPn(2)) \
  Y(M5update, M5.update())
