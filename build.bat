@echo off
cd include
..\bin\tasm32.exe /jlocals /m9 /ml /q /W-ALN main.asm,include.obj

cd ..\arc_mod
..\bin\tasm32 /jlocals /m9 /ml /q /W-ALN arc_mod.asm

cd ..\arc_pack
..\bin\tasm32.exe /jlocals /m9 /ml /q /W-ALN mod_pack.asm

cd ..\arc_conv
call compile.bat

rem Added by dsp2003

copy arc_conv.exe ..\arc_conv.exe
copy arc_conv.dat ..\arc_conv.dat

cd ..\text_conv
call compile.bat

copy text_conv.exe ..\text_conv.exe

cd ..
call clean.bat