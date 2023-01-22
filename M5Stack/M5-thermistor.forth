\ M5Stack running ESP32forth with M5Stack userwords.h
m5begin
m5pwrbegin
\ Clear the screen to grey
128 128 128 m5color m5fill
5 m5textsize
0 0 0 m5color 128 128 128 m5color m5textfgbg
: ctr 128 128 128 m5color m5fill 501 0 DO I 100 100 m5drawnum loop ;
ms-ticks ctr ms-ticks swap - s>f 1000e f/ f.

m5begin
m5pwrbegin
0 m5fill
5 m5textsize
0 load
\ Average 10 adc readings from pin 35
: DECADC 10 0 DO 35 adc LOOP 9 0 DO + LOOP 10 / ;
: GetCelcius DECADC S>F 4096e F/ 3.3e F* 3.3e FOVER F- F/ 10e3 F* 10e3 F/ FLN 3850e F/ 298.15e 1/F F+ 1/F 273.15e F- F>S ;
: UPD 0 m5fill 30 0 DO GetCelcius 100 100 m5drawnum 1000 ms LOOP ;
