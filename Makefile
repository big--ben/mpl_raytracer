CC=g++
CFLAGS=-c -Wall -I../boost_1_53_0
LDFLAGS=
SOURCES=src/main.cpp src/raytrace_mpl.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@