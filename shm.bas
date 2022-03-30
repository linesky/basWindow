#include once "wwindows.bi"
dim shared c as string
dim shared fbfb as integer
public sub endbrs()
	dim n as integer
	for n=0 to wcount-1
		if n<wcount then win(n).shms[flagend]=1
	next
	sleep 3000 
	endX fbfb
	exitWindow()
end sub
public sub brss()
	endbrs()
end sub
dim sub1 as sub()
dim sub2 as sub()
dim z as zstring ptr
dim wc as integer ptr
dim w1 as windows
dim ww1 as integer
dim s as string
dim zz as zstring *1024
dim zzz as zstring ptr
dim keys as string
dim xx as integer
dim yy as integer
dim nn as integer
dim tt as integer
dim application as zstring ptr=@"./shm2 "
dim initss as zstring ptr=@"load.ini"
dim i as integer
sub1=procptr(brss)
sub2=procptr(endbrs)
setBreak @sub1
setEnds @sub2
fbfb=startwin()
ww1=loadinit(initss)
	if ww1<>-1 then
		for nn=0 to wcount-1
			do
				if win(nn).shms[flagrefresh]=1 then goto waiting
				if inkey=chr(27) then goto waiting
			loop
		next
		waiting:
		windowsRefresh()
		do
			if inkey=chr(27) then goto endss
			tt=0
			for nn=0 to wcount-1
				if win(nn).shms[flaginput]=0 then
					win(nn).shms[flaginput]=-1
					tt=1
					exit for
				end if
			next
			if tt=1 then goto endss
				i=redrawCursor()
				if i<>zorder(wcount-1) then
							if i<>-1 then
								moveTop(i)
								windowRefresh(i)
							end if
						else
							if i<>-1 then
									win(zorder(wcount-1)).shms[flagoutput+1]=mouseX-win(zorder(wcount-1)).x
									win(zorder(wcount-1)).shms[flagoutput+2]=mouseY-win(zorder(wcount-1)).y
									win(zorder(wcount-1)).shms[flagoutput]=0
							end if
							
						end if

		loop
	end if 
endss:
endbrs()
