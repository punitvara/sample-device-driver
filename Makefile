ARCH=arm
COMPILER=arm-linux-gnueabi
obj-m := pru-spi.o
KERNELDIR := /home/vc/Desktop/beagle-gsoc/kernel_BBB/bb-kernel/KERNEL
PWD := $(shell pwd)
default:
    $(MAKE) -C $(KERNELDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(COMPILER) modules

clean:
    $(MAKE) -C $(KERNELDIR) M=$(PWD) ARCH=$(ARCH) clean
