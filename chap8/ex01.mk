TARGET		:= bootA20.img

ASRCS		+= $(TARGET:.img=.asm)

include ../make_os.mk
