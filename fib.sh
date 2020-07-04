function fib {
fib=( 0 1 )
in1=0
in2=1
loop=$1
while [[ $loop -gt 0 ]]
do
for number in fib
do
let number=${fib[in1]}+${fib[in2]}
fib+=($number)
let in1=$in1+1
let in2=$in2+1
done
let loop=$loop-1
done
echo ${fib[*]:0:$1}
}
