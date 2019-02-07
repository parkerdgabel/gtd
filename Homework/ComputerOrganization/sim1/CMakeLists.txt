cmake_minimum_required(VERSION 3.13)
project(sim1 C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(sim1
        sim1.c
        sim1.h
        test_13_carryOut.c
        test_15_subtract1.c)
