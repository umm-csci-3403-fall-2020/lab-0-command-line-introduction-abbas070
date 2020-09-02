#!/usr/bin/env bash

# CONSTANT

number=$1

# This step is extracting the file

tar -xzf NthPrime.tgz

# This step goes into the NthPrime directory 

cd NthPrime || exit

# Compiles the C program that was extracted 

gcc main.c nth_prime.c -o NthPrime

# Call the executable  NthPrime

./NthPrime "$number"
