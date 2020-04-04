TARGET		:= kernel4.img

ASRCS		:= boot3.asm
ASRCS		+= $(TARGET:.img=.asm)

include ../make_os.mk
