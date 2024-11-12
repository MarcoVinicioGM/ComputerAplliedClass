!/bin/bash

contador=1
while [ $contador -le 10 ];
do
    date
    sleep 2
    ((contador++))
done

