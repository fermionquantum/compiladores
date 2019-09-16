#!/bin/bash
set -x

sed -E -e "/TEST|test/d" > corrected.c

sed -e 's/FOR/for/' > corrected.c
sed -e 's/WHILE/while/' > corrected.c
sed -e 's/TYPEDEF/typedef/' > corrected.c 
sed -e 's/SWITCH/switch/' > corrected.c
sed -e 's/ELSE/else/' > corrected.c
sed -e 's/IF/if/' aux.c > corrected.c
sed -e 's/UNION/union/' > corrected.c
sed -e 's/FLOAT/float/' > corrected.c
sed -e 's/BREAK/break/' > corrected.c
sed -e 's/CONTINUE/continue/' > corrected.c 
sed -e 's/INT/int/' > corrected.c
sed -e 's/GOTO/goto/' > corrected.c
sed -e 's/VOID/void/' > corrected.c
sed -e 's/CHAR/char/' > corrected.c 
sed -e 's/STRUCT/struct/' > corrected.c
sed -e 's/LONG/long/' > corrected.c
sed -e 's/ENUM/enum/' > corrected.c
sed -e 's/CASE/case/' corrected.c 
sed -e 's/RETURN/return/' > corrected.c


flex -i -o scanner.c scanner.l
gcc -g -o scanner_test scanner_test.c scanner.c
./scanner_test < corrected.c > tokens.txt


sed -E - n "/T_ID\>|T_STR\>|T_NUM\>/p" > tokens.txt > selected.txt

