#/bin/bash

a=10
b=20
echo `expr $a + $b`
echo `expr $a - $b`
echo `expr $a \* $b`
c=10.5
d=11.5
e= `echo $c + $d |bc`
echo "$e"