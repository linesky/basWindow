#inclib "wwindows"
extern "C"
	declare sub addsControls cdecl(x as integer,y as integer,w as integer,h as integer,captions as zstring ptr,r as integer,g as integer,b as integer)
end extern
dim z as zstring ptr
z=@"hello world...\n"
addsControls(25,50,45,16,z,100,100,100)
print z

