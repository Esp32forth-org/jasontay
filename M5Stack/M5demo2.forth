\ M5Stack graphics words demo
M5begin
: burst
231 0 DO 0 0 319 I DUP 0 0 m5color m5line 10 +LOOP
231 0 DO 319 0 0 I DUP 0 SWAP 0 m5color m5line 10 +LOOP
311 0 DO 160 239 I 0 128 DUP I 1 RSHIFT m5color m5line 10 +LOOP ;

\ sloline deliberately draws horizontal lines spaced every 10 pixels on the LCD
\ pixel, by pixel using Forth words to function as a benchmark.
: sloline 231 0 DO I 320 0 DO DUP I SWAP oc @ m5pixel LOOP DROP 10 +LOOP ;
\ Create a variable to store a fixed colour that we will use repeatedly
VARIABLE oc
255 128 64 m5color oc !
\ Create a word to clear the screen
: cls 0 m5fill ;
\ This demo will showcase the drawing routines above until the 'C' button is pressed.
: demo
  BEGIN
    cls
	burst
	2000 ms
	m5update
	cls
	sloline
	2000 ms
	m5update
	M5BtnC
  UNTIL
  ." Demo ended." CR
  cls
;