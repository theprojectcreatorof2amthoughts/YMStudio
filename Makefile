GYXX = gy++
GYXXFLAGS = --xx-warn-all --xx-warn-extra -O2

all: YMStudio

YMStudio: main.ycpp 
	$(GYXX) main.ycpp  $(GYXXFLAGS) -o ymstudio.lef

clean: rm -f ymstudio.lef
