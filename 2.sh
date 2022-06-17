#!/bin/bash

awk '{downl[$1]+=$3} END {for (m in downl) print m, nomes[m]}' < downloads.txt
