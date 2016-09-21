#! /bin/bash


cd Into*Broadway*
BROADWAY=`pwd`
cd - > /dev/null

cd Into*Accomp*
ACCOMP=`pwd`
cd - > /dev/null

echo BROADWAY is $BROADWAY
echo ACCOMP is $ACCOMP

function copy_both()
{
	number=$1

	voiced=`ls "$BROADWAY/$number"*`
	echo cp "$voiced" merged
	     cp "$voiced" merged

	file=`ls "$ACCOMP/$number"*`
	base=`basename "$voiced" .wma`
	annotated="$base instrumental.wma"
	
	echo cp "$file" merged/"$annotated"
	     cp "$file" merged/"$annotated"
}

mkdir -p merged

export n=1

while (( n < 10 )); do

	copy_both 0$n

	(( n = n + 1 ))
done

while (( n < 39 )); do

	copy_both $n

	(( n = n + 1 ))
done
