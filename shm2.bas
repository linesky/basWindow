#include once "wwindows.bi"
dim shared c as string
public sub endbrs()
	'save log
	open c for output as #1
		print #1,c
	close
end sub
public sub brss()
	endbrs()
	end
end sub
dim sub1 as sub()
dim sub2 as sub()
dim z as zstring ptr
dim wc as integer ptr
dim w1 as windows
dim s as string
dim zz as zstring *1024
dim zzz as zstring ptr
dim xx as integer
dim yy as integer
sub1=procptr(brss)
sub2=procptr(endbrs)
z=@"Exit"
s=command
if len(s)<3 then goto endss
zz=s
zzz=@zz
c=s+".txt"
setBreak @sub1
setEnds @sub2
wc=getwindows(@zz)
if getNULL()=wc then goto endss
w1.dc=wc+shmhead
addsControls(25,50,45,16,z,100,100,100)
addsControls(80,50,45,16,z,100,100,100)
drawLabelsControls w1.dc
wc[flagoutput]=-1
wc[flagrefresh]=1
do
	if wc[flagend]=1 then goto endss
	if wc[flagoutput]=0 then
		xx=wc[flagoutput+1]
		yy=wc[flagoutput+2]
		wc[flagoutput]=-1
		if scanInsides(xx,yy)<>-1 then
			wc[flaginput]=0
		end if		

	end if

loop
endss:
endbrs()
