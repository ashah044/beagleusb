beagle-y :=  ringbuffer.o datamanager.o aoa.o beagleusb.o beagle-audio.o beagle-video.o input.o

obj-m += beagle.o

all:
	make -w -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm *~
