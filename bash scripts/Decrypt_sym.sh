#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Syntax error."
    echo "3 arguments are required : key_value file_in file_out" 
    exit 1
fi

echo "*************************************"
echo "Input message in ascii  :"
cat "$2"
echo ""
echo "-------------------------------------"
echo "Input message hexdecimal:"
hexdump "$2"
echo "*************************************"
openssl enc -d -aes-128-ecb -k "$1" -nosalt  -in "$2"  -out "$3" 
echo "Decryption done..."
echo "*************************************"
echo "Result in ascii:"
cat "$3"
echo ""
echo "-------------------------------------"
echo "Result in hexdecimal:"
hexdump "$3" 
