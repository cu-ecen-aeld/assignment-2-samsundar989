TARGET = writer

all: $(TARGET)

$(TARGET): $(TARGET).c
ifdef CROSS_COMPILE
	$(CROSS_COMPILE) -o $(TARGET) $(TARGET).c
else
	gcc -o $(TARGET) $(TARGET).c
endif

clean:
	$(RM) $(TARGET)