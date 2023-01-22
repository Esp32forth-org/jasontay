# ESP32forth for M5Stack
Note that this version is different from my other attempt, M5forth. M5forth is a from the ground up porting of ESP32forth to the M5Stack Faces kit with keyboard.
ESP32forth for M5Stack is entirely different and a less disruptive approach used, by implementing all the M5Stack support solely within the userwords.h file.
This version is more appropriate if you have any M5Stack Core/Core2/Fire device and wish to use ESP32forth on it together with the bells and whistles that come
with using an M5Stack. This version does NOT depend on the Faces kit at all. Use of the display is central to this version, with much of the new Forth words
added being for display support, however, it is not essential to enable the display to use these extensions.

## Prerequisites
You must have the M5Stack boards support added to your Arduino IDE. You can find out how to do this in
[the official m5-docs](https://docs.m5stack.com/en/quick_start/arduino)

## Tested Models
I have tested this software only on the M5Stack Gray device with ESP32forth v7.0.6.19.

## Documentation
### M5begin
Syntax: M5begin ( -- )

Initialises all the on-board peripherals and systems on an M5, this includes buttons, gyros, accelerometers, etc. It also actually initialises the LCD,
so there is actually no need to call M5LcdBegin if you have called *M5begin*.

### M5Pwrbegin
Syntax: M5PwrBegin ( -- )

Initialises on-board management.

### M5BtnA
Syntax: M5BtnA ( -- n)

Reads the state of Button A (left-most button) on the M5Stack face and return the value on the stack.

### M5BtnB
Syntax: M5BtnB ( -- n)

Reads the state of Button B (middle button) on the M5Stack face and return the value on the stack.

### M5BtnC
Syntax: M5BtnC ( -- n)

Reads the state of Button C (right-most button) on the M5Stack face and return the value on the stack.

### M5LcdBegin
Syntax: M5LcdBegin ( -- )

Activates power for and initialises only the LCD and makes it ready for use.

### M5LcdSleep
Syntax: M5LcdSleep ( -- )

Puts the display into power saving mode.

### M5LcdWake
Syntax: M5LcdWake ( -- )

Awakens the display from power saving mode.

### M5LcdWidth
Syntax: M5LcdWidth ( -- n)

Returns the width of the display in pixels in the current rotation setting.

### M5LcdHeight
Syntax: M5LcdHeight ( -- n)

Returns the height of the display in pixels in the current rotation setting.

### M5SetRot
Syntax: M5SetRot (n -- )

Sets the display rotation or orientation in increments of 90 degrees, i.e., 0-3 for 0, 90, 180 and 270 clockwise and 4-7 for anticlockwise.
Must be set before activating the display.

### M5SetBrightness
Syntax: M5SetBrightness (n -- )

Sets the backlight brightness in values from 0 (fully turned off) to 255 (full brightness).

### M5SetCursor
Syntax: M5SetCursor (x y -- )

Sets the current cursor position at (x, y).

### M5Color
Syntax: M5Color (red green blue -- n)

Takes 3 separate byte values from 0 - 255 for each of red, green and blue channels and encodes them into a packed 16-bit RGB 5-6-5 format
for use in the drawing commands.

### M5Fill
Syntax: M5Fill (color -- )

Fills the entire display in the colour specified.

### M5Pixel
Syntax: M5Pixel (x y color -- )

Draws a single pixel at location (x, y) on the LCD subject to the active display rotation settings with in the colour specified.

### M5Line
Syntax: M5Line (x1 y1 x2 y2 color -- )

Draws a line from (x1, y1) to (x2, y2) in the colour specified.

### M5Rect
Syntax: M5Rect (x y w h color -- )

Draws a wireframe rectangle with starting corner in (x, y) of (width, height) dimensions in the colour specified.

### M5FillRect
Syntax: M5FillRect (x y w h color -- )

Draws a filled rectangle with starting corner in (x, y) of (width, height) dimensions in the colour specified.

### M5Print
Synctax: M5Print (z -- )

Draws text at the currently selected text drawing settings (foreground, background color, size, and cursor position). Use z" strings.

### M5DrawStr
Syntax: M5DrawStr (z x y f -- )

Draw zero terminated string (z) at position (x, y) using font number (f).

### M5DrawNum
Syntax: M5DrawNum (n x y -- )

Draw integer value (n) at position (x, y).

### M5TextSize
Syntax: M5TextSize (n -- )

Set the currently active text size to n.

### M5TextColor
Syntax: M5TextColor (n -- )

Set the active text color to 16-bit value n. Hint: use M5Color to turn 3 separate R, G, & B values into a packed color value.

### M5TextFgBg
Syntax: M5TextFgBg (n n -- )

Similar to M5TextColor above, but allows setting of foreground and background fill color settings to text drawing routines via a pair of packed color values.

### M5Update
Syntax: M5Update ( -- )

Runs housekeeping functions to keep all peripherals properly updated and running. Execute this word periodically to ensure the device
UI remains responsive.
