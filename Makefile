CXX = g++

RM = del /Q /F

CXXFLAGS = -Wall -Wextra  -c

all: lab2

lab2: calculator.a calculator.o main.o 
	$(CXX) calculator.a calculator.o main.o -o $@

calculator.a: calculator.o
	ar cr $@  calculator.o

calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) calculator.cpp -o $@

main.o: main.cpp calculator.h
	$(CXX) $(CXXFLAGS) main.cpp -o $@

clean:
	$(RM) *.o lab2.exe *.a