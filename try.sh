#!/bin/bash

LISTS=($(gh issue list --state all))
echo "size: ${#LISTS[*]}"
#注意index从0开始，以size-1结尾
for(( i=0;i<${#LISTS[*]};i++)) do {
    echo ${LISTS[i]}
}&
done;
