# FOR MSVSS nmake only

TARGET = me7sum.exe
SOURCES = crc32.c inifile_prop.c me7sum.c utils.c inifile/inifile.c os/pgetopt.c

all: $(TARGET)
$(TARGET):$(SOURCES)
	cl /EHsc /Fe$@ /Tc $(CFLAGS) $(SOURCES)

clean:
	del $(TARGET) *.obj
