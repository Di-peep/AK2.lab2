cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 14)

project(MyLab2)

add_library(calculator
	calculator.h
	calculator.cpp
)

add_executable(Lab2
  main.cpp
)

target_link_libraries(Lab2 calculator)