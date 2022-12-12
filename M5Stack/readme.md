# ESP32forth for M5Stack
Note that this version is different from my other attempt, M5forth. M5forth is a from the ground up porting of ESP32forth to the M5Stack Faces kit with keyboard.
ESP32forth for M5Stack is entirely different and a less disruptive approach used, by implementing all the M5Stack support solely within the userwords.h file.
This version is more appropriate if you have any M5Stack Core/Core2/Fire device and wish to use ESP32forth on it together with the bells and whistles that come
with using an M5Stack. This version does NOT depend on the Faces kit at all. Use of the display is central to this version, with much of the new Forth words
added being for display support, however, it is not essential to enable the display to use these extensions.

## Tested Models
I have tested this software only on the M5Stack Gray device.
