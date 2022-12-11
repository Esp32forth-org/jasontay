( FizzBuzz program )
: fizz DUP 3 MOD 0= IF ." Fizz" SWAP 1+ SWAP THEN ;
: buzz DUP 5 MOD 0= IF ." Buzz" SWAP 1+ SWAP THEN ;
: fb 100 0 DO 0 I fizz buzz SWAP 0= IF . ELSE DROP THEN 32 EMIT LOOP ;