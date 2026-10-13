CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -Wpedantic -Iinclude
TARGET := build/covid-stats

.PHONY: all run clean

all: $(TARGET)

$(TARGET): src/main.cpp $(wildcard include/*.h)
	mkdir -p build
	$(CXX) $(CXXFLAGS) src/main.cpp -o $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -rf build
