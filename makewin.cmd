SET PATH=%PATH%;c:\MinGW\bin
SET LIB_DIR=c:\MinGW\lib
SET COMPILER=c:\MinGW\bin\gcc.exe
SET COMPILE_OPTIONS=-c -DGAPING_SECURITY_HOLE -DWIN32 -DHAVE_HELP

call clear.cmd > nul 2> nul

"%COMPILER%" %COMPILE_OPTIONS% getopt.c
"%COMPILER%" %COMPILE_OPTIONS% doexec.c
"%COMPILER%" %COMPILE_OPTIONS% netcat.c
"%COMPILER%" getopt.o doexec.o netcat.o --output nc.exe -Wl,-L"%LIB_DIR%",-lkernel32,-luser32,-lwinmm,-lws2_32