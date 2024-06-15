echo -n "Enter Number: "
read n

i=1
c=1

while [ $i -le $n ]; do
	i=$((i+1))
	r=$((n%i))
	if [ $r -eq 0 ]; then
		c=$((c+1))
	fi
done

if [ $c -eq 2 ]; then
	echo "$n is prime"
else
	echo "$n is not prime"
fi
