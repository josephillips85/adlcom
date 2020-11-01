# AdLcom
A AdLib Driver for serial port.

This is a AdLib TSR Program for MS-DOS Forked from the project AdLipt instead of using LPT port is using COM port to send the Register and value to a serial port.

## Hardware Requirements
 - OPL2Board https://www.tindie.com/products/cheerful/opl2-audio-board/
 - Arduino Nano
 - MAX232L https://www.amazon.com/gp/product/B01N42QW8X/ref=ppx_yo_dt_b_asin_title_o03_s01?ie=UTF8&psc=1
 - 386 Computer
 - Memory Manager JEMM or QEMM or EMM386

## Download

Download the driver from [the Github releases tab][2].

[2]: https://github.com/josephillips85/adlcom/releases/latest

## Wiring instructions

Before usage you should follow the instructions from

https://github.com/DhrBaksteen/ArduinoOPL2


Connect the Arduino to the OPL2Board and Connect the MAX232 with this wiring guide.<br />

MAX232 PIN          Arduino\
VCC "<------------->" 3.3V\
TX  "<------------->" TX\
RX  "<------------->" RX\
GND "<------------->" GND



## Usage

Load the TSR with the command:

    ADLCOM

assuming the  board is plugged into COM1. It will use about a
kilobyte of RAM. It can be loaded into high memory using the DOS `LH`
command.

The TSR can be unloaded with the command:

    ADLCOM UNLOAD

### JEMM

Load ADLCOM using the command:

    JLOAD JADLCOM.DLL

### Options


- **`COM1`/`COM2`/`COM3`/`COM4`** Select printer port.

- **`BLASTER=220`** Enable Sound Blaster FM emulation. ADLiPT will
  intercept the Sound Blaster FM ports in addition to the standard
  AdLib ports. (It won't however fake enough of a Sound Blaster to
  pass installation checks, so this won't be very useful if you don't
  have a Sound Blaster.)

- **`NOPATCH`** Disable runtime patching. Without runtime patching the
  TSR will be much slower, but the I/O timing will be much more
  regular, which might help with software that's very timing
  sensitive.


## Source code

This program compiles with OpenWatcom, use the `build.sh` script.
You'll also need Python 3 and [the Ragel state machine
compiler][Ragel].

[Ragel]: https://www.colm.net/open-source/ragel/

## Donations

Who want to donate to this project. please doit via Paypal to
https://www.paypal.com/paypalme2/josephillips85

## Copying

Copyright © 2020 Jose Phillips\
Copyright © 2020 Peter De Wachter (pdewacht@gmail.com)

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.
