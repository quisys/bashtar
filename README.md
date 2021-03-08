# bashtar
Simple guitar in bash

# dependencies
`bash`

ALSA (or pulseaudio) and `alsa-utils` (usually, see here)

# installation
## \*nix
`git clone https://github.com/quisys/bashtar`

`cd bashtar`

`./bashtar.sh`

## mac compatibility

for this program to work on a Mac, it requires `aplay` to point to `sox`

`sudo ln -s /usr/bin/sox /usr/bin/aplay`

# usage

```
keys are similar to a guitar; 1 plays an open e, 2 plays an open a and so on.
q plays an f on the e string, w plays an a sharp and so on.
basically, the first 6 numbers are open strings and the alpha keys are the fretboard.

example: open b string = 5, first fret = t, second = g, third = b
```
