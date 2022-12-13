\ M5Stack graphics words demo
M5begin
: burst
231 0 DO 0 0 319 I DUP 0 0 m5color m5line 10 +LOOP
231 0 DO 319 0 0 I DUP 0 SWAP 0 m5color m5line 10 +LOOP
311 0 DO 160 239 I 0 128 DUP I 1 RSHIFT m5color m5line 10 +LOOP ;
: sloline 231 0 DO I 320 0 DO DUP I SWAP oc @ m5pixel LOOP DROP 10 +LOOP ;
VARIABLE oc
255 128 64 m5color oc !
: demo
  10 0 DO
    0 m5fill
	burst
	2000 ms
	0 m5fill
	sloline
	2000 ms
  LOOP
;