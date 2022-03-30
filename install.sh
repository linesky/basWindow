rm wwindows.o
rm wwindows.a
rm shm2
rm shm
gcc -c -o wwindows.o wwindows.c -lrt
fbc -lib wwindows.o
fbc  shm2.bas -l rt
fbc  shm.bas -l rt
