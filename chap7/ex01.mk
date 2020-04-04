TARGET		:= kernel.img

ASRCS		:= boot.asm
ASRCS		+= $(TARGET:.img=.asm)

include ../make_os.mk
