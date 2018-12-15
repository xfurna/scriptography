@echo off

set argC=0
for %%x in (%*) do Set /A argC+=1

if %argC% EQU 6 py main.py %1 %2 %3 %4 %5 %6
if %argC% NEQ 6 echo %ERROR!!ERROR!!
