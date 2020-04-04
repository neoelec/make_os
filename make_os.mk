MAKE_OS_PATH	:= $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

CAT		:= cat
RM		:= rm -rf

AS		:= nasm
ASFLAGS		:= -f bin

BOCHS		:= bochs
BOCHSFLAGS	:= -f $(MAKE_OS_PATH)/bochsrc \
		   -rc $(MAKE_OS_PATH)/bochscm
BOCHSFLAGS      += 'boot:floppy' 'floppya: 1_44=$(TARGET), status=inserted'


.SUFFIXES: .asm .bin

.asm.bin:
	$(AS) $(ASFLAGS) -o $@ $<

ABINS		:= $(ASRCS:.asm=.bin)
$(TARGET): $(ABINS) $(CBINS)
	$(CAT) $^ > $@

clean:
	$(RM) $(TARGET)
	$(RM) $(ABINS)
	$(RM) *.bak *~

test: $(TARGET)
	$(BOCHS) -f $(MAKE_OS_PATH)/bochsrc -rc $(MAKE_OS_PATH)/bochscmd $(BOCHSFLAGS)
