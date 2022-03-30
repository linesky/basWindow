#include once "wwindows.bi"
dim z as zstring ptr
dim wc as integer ptr
dim w1 as windows
dim s as string
dim zz as zstring *1024
dim zzz as zstring ptr
z=@"Exit"
s=command
if len(s)<3 then goto endss
zz=s
zzz=@zz
wc=getwindows(@zz)
wc[flagoutput]=-1
wc[flagrefresh]=1
if getNULL()=wc then goto endss
w1.dc=wc+shmhead
iline 0,0,100,100,w1.dc,0,0,0
iline 0,100,100,0,w1.dc,0,0,0
wc[flagoutput]=-1
wc[flagrefresh]=1
do
	if wc[flagend]=1 then goto endss
loop
endss:
