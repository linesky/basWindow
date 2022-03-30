rm wwindows.o
rm wwindows.a
rm shm2
rm shm
gcc -o shm shm.c -lm -lrt
gcc -c -o wwindows.o wwindows.c -lrt
fbc -lib wwindows.o
fbc  shm2.bas -l rt
