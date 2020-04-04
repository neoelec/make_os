TARGET		:= kernel_paging.img

ASRCS		:= boot_paging.asm setup.asm
ASRCS		+= $(TARGET:.img=.asm)
ASRCS		+= user_program1.asm \
		   user_program2.asm \
		   user_program3.asm \
		   user_program4.asm \
		   user_program5.asm

include ../make_os.mk
