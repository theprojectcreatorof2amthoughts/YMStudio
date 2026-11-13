GYXX ?= gy++
GYXXFLAGS ?= --xx-warn-all --xx-warn-extra -O2
TARGET := ymstudio.lef
MODULES := $(wildcard msc/*.hlypp) $(wildcard msc/*.yaq)

.PHONY: all clean rebuild

all: $(TARGET)

$(TARGET): main.ycpp $(MODULES)
	$(GYXX) main.ycpp $(GYXXFLAGS) -o $(TARGET)

rebuild: clean all

clean:
	rm -f $(TARGET) $(TARGET).gypp.c
