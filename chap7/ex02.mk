TARGET		:= kernel_5_User_Tasks.img

ASRCS		:= boot_5_User_Tasks.asm
ASRCS		+= $(TARGET:.img=.asm)

include ../make_os.mk
