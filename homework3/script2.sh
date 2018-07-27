#!/bin/bash

## fidn all files in the current folder and get their names
## then search inside each file for its own name 
grep `find . -type f -exec basename "{}" ';'` . -R
