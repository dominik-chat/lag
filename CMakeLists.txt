#
# Copyright (c) 2025 Dominik Chat
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

cmake_minimum_required(VERSION 3.20)
project(lag)

add_library(liblag STATIC)

add_subdirectory(datastruct)
#add_subdirectory(test)

target_include_directories(liblag PRIVATE ${CMAKE_CURRENT_LIST_DIR}/include)
