#!/bin/bash

rm "$3"
echo "*************************************"
echo Input message in ascii  :
cat "$2"
echo ""
echo "-------------------------------------"
echo Input message hexdecimal:
hexdump "$2"
echo "*************************************"
openssl rsautl -encrypt -inkey "$1" -pubin -in "$2" -out "$3"

echo "Encryption done..."
echo "*************************************"
echo "Result in ascii:"
cat "$3"
echo ""
echo "-------------------------------------"
echo "Result in hexdecimal:"
hexdump "$3" 


