KVERS = $(shell uname -r)

obj-m += hello.o



build:kernel_modules

kernel_modules:
	make -C /lib/modules/$(KVERS)/build M=S(CURDIR) modules


clean:
	make -C /lib/modules/$(KVERS)/build M=S(CURDIR) clean
