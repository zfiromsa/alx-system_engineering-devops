#!/bin/bash

# Infinite for loop with break
# i=0
# for (( ; ; ))
# do
#         echo "Iteration: ${i}"
#         (( i++ ))
#         if [[ i -gt 10 ]]
#         then
#                 break;
#         fi
# done
# echo "Done!"

# For loop with continue statement
for i in {1..100}
do
        if [[ $i%11 -ne 0 ]]
        then
                continue
        fi
        echo $i
done