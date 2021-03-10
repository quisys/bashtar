#!/bin/bash

checkinput() {
read -s -N 1 -p "bashtar!
quit with ^C. --help for help" note
case $note in
	1)
		play "e"
		;;
	2)
		play "a"
		;;
	3)
		play "d"
		;;
	4)
		play "g"
		;;
	5)
		play "b"
		;;
	6)
		play "high-e"
		;;
	q)
		play "f"
		;;
	w)
		play "a-sharp"
		;;
	e)
		play "d-sharp"
		;;
	r)
		play "g-sharp"
		;;
	t)
		play "c"
		;;
	y)
		play "f-on-high-e"
		;;
	a)
		play "f-sharp"
		;;
	s)
		play "b-on-a"
		;;
	d)
		play "e-on-d"
		;;
	f)
		play "a-on-g"
		;;
	g)
		play "c-sharp"
		;;
	h)
		play "f-sharp-on-high-e"
		;;
	z)
		play "g-on-e"
		;;
	x)
		play "c-on-a"
		;;
	c)
		play "f-on-d"
		;;
	v)
		play "a-sharp-on-g"
		;;
	b)
		play "d-on-b"
		;;
	n)
		play "g-on-high-e"
		;;
esac
}

play() {
aplay sounds/$1.wav >/dev/null 2>&1 &
}

if [ -z $1]
then
while true
do
	clear
	checkinput
done
elif [ $1 == "--help" ] || [ $1 == "-h"]
then
	echo "bashtar is a program that plays guitar sounds on keypresses.
keys are similar to a guitar; 1 plays an open e, 2 plays an open a and so on.
q plays an f on the e string, w plays an a sharp and so on.
basically, the first 6 numbers are open strings and the alpha keys are the fretboard.

example: open b string = 5, first fret = t, second = g, third = b"
else
	echo "$1: option not recognized"
fi

