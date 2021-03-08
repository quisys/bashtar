#!/bin/bash

checkinput() {
read -s -N 1 -p "bashtar!
quit with ^C. --help for help" note
	if [ $note == 1 ]
	then
		play-e
	elif [ $note == 2 ]
	then
		play-a
	elif [ $note == 3 ]
	then
		play-d
	elif [ $note == 4 ]
	then
		play-g
	elif [ $note == 5 ]
	then
		play-b
	elif [ $note == 6 ]
	then
		play-high-e
	elif [ $note == q ]
	then
		play-f
	elif [ $note == w ]
	then
		play-a-sharp
	elif [ $note == e ]
	then
		play-d-sharp
	elif [ $note == r ]
	then
		play-g-sharp
	elif [ $note == t ]
	then
		play-c
	elif [ $note == y ]
	then
		play-f-on-high-e
	elif [ $note == a ]
	then
		play-f-sharp
	elif [ $note == s ]
	then
		play-b-on-a
	elif [ $note == d ]
	then
		play-e-on-d
	elif [ $note == f ]
	then
		play-a-on-g
	elif [ $note == g ]
	then
		play-c-sharp
	elif [ $note == h ]
	then
		play-f-sharp-on-high-e
	elif [ $note == z ]
	then
		play-g-on-e
	elif [ $note == x ]
	then
		play-c-on-a
	elif [ $note == c ]
	then
		play-f-on-d
	elif [ $note == v ]
	then
		play-a-sharp-on-g
	elif [ $note == b ]
	then
		play-d-on-b
	elif [ $note == n ]
	then
		play-g-on-high-e
	fi
}

play-e() {
aplay sounds/e.wav >/dev/null 2>&1 &
}

play-a() {
aplay sounds/a.wav >/dev/null 2>&1 &
}

play-d() {
aplay sounds/d.wav >/dev/null 2>&1 &
}

play-g() {
aplay sounds/g.wav >/dev/null 2>&1 &
}

play-b() {
aplay sounds/b.wav >/dev/null 2>&1 &
}

play-high-e() {
aplay sounds/high-e.wav >/dev/null 2>&1 &
}

play-f() {
aplay sounds/f.wav >/dev/null 2>&1 &
}

play-a-sharp() {
aplay sounds/a-sharp.wav >/dev/null 2>&1 &
}

play-d-sharp() {
aplay sounds/d-sharp.wav >/dev/null 2>&1 &
}

play-g-sharp() {
aplay sounds/g-sharp.wav >/dev/null 2>&1 &
}

play-c() {
aplay sounds/c.wav >/dev/null 2>&1 &
}

play-f-on-high-e() {
aplay sounds/f-on-high-e.wav >/dev/null 2>&1 &
}

play-f-sharp() {
aplay sounds/f-sharp.wav >/dev/null 2>&1 &
}

play-b-on-a() {
aplay sounds/b-on-a.wav >/dev/null 2>&1 &
}

play-e-on-d() {
aplay sounds/e-on-d.wav >/dev/null 2>&1 &
}

play-a-on-g() {
aplay sounds/a-on-g.wav >/dev/null 2>&1 &
}

play-c-sharp() {
aplay sounds/c-sharp.wav >/dev/null 2>&1 &
}

play-f-sharp-on-high-e() {
aplay sounds/f-sharp-on-high-e.wav >/dev/null 2>&1 &
}

play-g-on-e() {
aplay sounds/g-on-e.wav >/dev/null 2>&1 &
}

play-c-on-a() {
aplay sounds/c-on-a.wav >/dev/null 2>&1 &
}

play-f-on-d() {
aplay sounds/f-on-d.wav >/dev/null 2>&1 &
}

play-a-sharp-on-g() {
aplay sounds/a-sharp-on-g.wav >/dev/null 2>&1 &
}

play-d-on-b() {
aplay sounds/d-on-b.wav >/dev/null 2>&1 &
}

play-g-on-high-e() {
aplay sounds/g-on-high-e.wav >/dev/null 2>&1 &
}

if [ -z $1 ]
then
while true
do
	clear
	checkinput
done
elif [ $1 == "--help" ] || [ $1 == "-h" ]
then
	echo "bashtar is a program that plays guitar sounds on keypresses.
keys are similar to a guitar; 1 plays an open e, 2 plays an open a and so on.
q plays an f on the e string, w plays an a sharp and so on.
basically, the first 6 numbers are open strings and the alpha keys are the fretboard.

example: open b string = 5, first fret = t, second = g, third = b"
else
	echo "$1: option not recognized"
fi
