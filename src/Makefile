CC=clang
OBJCOPY=arm-none-eabi-objcopy
CFLAGS=-target arm-none-eabi -mcpu=cortex-m7
b10: main.c
	$(CC) -o "Ben 10" main.c
	$(OBJCOPY) -O binary "Ben 10"
	tar cvf b10.tar "Ben 10"

fetch:
	wget -P include https://raw.githubusercontent.com/Omega-Numworks/Omega-External/master/api/extapp_api.h

prepare:
	rm -rf include

flash:
	dfu-util -i 0 -a 0 -s 0x90200000 -D b10.tar

clean:
	rm b10 b10.tar
