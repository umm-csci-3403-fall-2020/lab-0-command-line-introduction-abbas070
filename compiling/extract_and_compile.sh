#!/usr/bin/env bash

# CONSTANT

NUMBER=$1

# This step is extracting the file

tar -Zxf NthPrime.tgz

# This step goes into the NthPrime directory 

cd NthPrime

# Compiles the C program that was extracted 

gcc main.c nth_prime.c -o NthPrime

# Call the executable  NthPrime

./NthPrime "$NUMBER"
