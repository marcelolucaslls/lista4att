#!/bin/bash

arq=$arq

sed -E 's/[[:digit:]]*\.[[:digit:]]*\.[[:digit':]]*\.[[:digit:]]/**!!CEN-SU-RA-DO!!**./g' < ${arq} > "${arq}-saida.txt"
