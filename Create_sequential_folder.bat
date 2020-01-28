@echo off
 
set /p filename="フォルダ名を入力してください："
set /p number="フォルダ数を入力してください："
 
setlocal enabledelayedexpansion
 
for /l %%n in (1,1,%number%) do (
  set num=0%%n
  set num=!num:~-2,2!
  mkdir %filename%_!num!
)
 
endlocal
