# ADCOMPATCH

ADCOMPATCH can patch games to directly support the Adlib Over Serial. After
patching, configure the game for an AdLib sound card (in case this
isn't auto-detected).

Caveats:

- Patching can break sound card support (including support for
  non-AdLib cards).
- Patched games might only work on the computer where the patch was
  done. This is because the patch hardcodes the parallel port I/O
  address, which I believe might vary from computer to computer.
- Required 16650 UART Chip

Pros compared to the ADLiPT TSR:

- No need for 386 CPU
- Can work with protected mode games

Cons:

- Patches need to be written for each game by hand
- At this moment required run SERINIT to initialize the com port
## Compressed EXEs

DOS software often shipped with compressed EXEs. Such EXEs need to be
unpacked before they can be patched. ADCOMPATCH will detect the more
common compression schemes and warn about them ("This file might be
compressed"). If you see such a warning, you should try decompressing
it and running ADCOMPATCH again. I recommend [Ben Castricum's
UNP](http://unp.bencastricum.nl/) decompressor, it will handle pretty
much all formats.


## Source Code

To compile a DOS executable using OpenWatcom, use the `build.sh`
script. To compile with GCC, use the `buildunix.sh` script.

You'll also need Python 3, the NASM assembler and [the Ragel state
machine compiler][Ragel].

[Ragel]: https://www.colm.net/open-source/ragel/


## Copying

Copyright © 2020-2023 Jose Phillips
Copyright © 2017-2020 Peter De Wachter (pdewacht@gmail.com)

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
