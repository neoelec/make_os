TARGET		:= kernel2.img

ASRCS		:= boot2.asm
ASRCS		+= $(TARGET:.img=.asm)

include ../make_os.mk
