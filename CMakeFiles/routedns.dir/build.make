# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jonwinters/code/dnslog

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jonwinters/code/dnslog

# Include any dependencies generated for this target.
include CMakeFiles/routedns.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/routedns.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/routedns.dir/flags.make

CMakeFiles/routedns.dir/routedns.cpp.o: CMakeFiles/routedns.dir/flags.make
CMakeFiles/routedns.dir/routedns.cpp.o: routedns.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonwinters/code/dnslog/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/routedns.dir/routedns.cpp.o"
	/usr/bin/clang++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routedns.dir/routedns.cpp.o -c /home/jonwinters/code/dnslog/routedns.cpp

CMakeFiles/routedns.dir/routedns.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routedns.dir/routedns.cpp.i"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonwinters/code/dnslog/routedns.cpp > CMakeFiles/routedns.dir/routedns.cpp.i

CMakeFiles/routedns.dir/routedns.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routedns.dir/routedns.cpp.s"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonwinters/code/dnslog/routedns.cpp -o CMakeFiles/routedns.dir/routedns.cpp.s

CMakeFiles/routedns.dir/routedns.cpp.o.requires:

.PHONY : CMakeFiles/routedns.dir/routedns.cpp.o.requires

CMakeFiles/routedns.dir/routedns.cpp.o.provides: CMakeFiles/routedns.dir/routedns.cpp.o.requires
	$(MAKE) -f CMakeFiles/routedns.dir/build.make CMakeFiles/routedns.dir/routedns.cpp.o.provides.build
.PHONY : CMakeFiles/routedns.dir/routedns.cpp.o.provides

CMakeFiles/routedns.dir/routedns.cpp.o.provides.build: CMakeFiles/routedns.dir/routedns.cpp.o


CMakeFiles/routedns.dir/parsedns.cpp.o: CMakeFiles/routedns.dir/flags.make
CMakeFiles/routedns.dir/parsedns.cpp.o: parsedns.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonwinters/code/dnslog/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/routedns.dir/parsedns.cpp.o"
	/usr/bin/clang++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routedns.dir/parsedns.cpp.o -c /home/jonwinters/code/dnslog/parsedns.cpp

CMakeFiles/routedns.dir/parsedns.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routedns.dir/parsedns.cpp.i"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonwinters/code/dnslog/parsedns.cpp > CMakeFiles/routedns.dir/parsedns.cpp.i

CMakeFiles/routedns.dir/parsedns.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routedns.dir/parsedns.cpp.s"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonwinters/code/dnslog/parsedns.cpp -o CMakeFiles/routedns.dir/parsedns.cpp.s

CMakeFiles/routedns.dir/parsedns.cpp.o.requires:

.PHONY : CMakeFiles/routedns.dir/parsedns.cpp.o.requires

CMakeFiles/routedns.dir/parsedns.cpp.o.provides: CMakeFiles/routedns.dir/parsedns.cpp.o.requires
	$(MAKE) -f CMakeFiles/routedns.dir/build.make CMakeFiles/routedns.dir/parsedns.cpp.o.provides.build
.PHONY : CMakeFiles/routedns.dir/parsedns.cpp.o.provides

CMakeFiles/routedns.dir/parsedns.cpp.o.provides.build: CMakeFiles/routedns.dir/parsedns.cpp.o


# Object files for target routedns
routedns_OBJECTS = \
"CMakeFiles/routedns.dir/routedns.cpp.o" \
"CMakeFiles/routedns.dir/parsedns.cpp.o"

# External object files for target routedns
routedns_EXTERNAL_OBJECTS =

routedns: CMakeFiles/routedns.dir/routedns.cpp.o
routedns: CMakeFiles/routedns.dir/parsedns.cpp.o
routedns: CMakeFiles/routedns.dir/build.make
routedns: CMakeFiles/routedns.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jonwinters/code/dnslog/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable routedns"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/routedns.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/routedns.dir/build: routedns

.PHONY : CMakeFiles/routedns.dir/build

CMakeFiles/routedns.dir/requires: CMakeFiles/routedns.dir/routedns.cpp.o.requires
CMakeFiles/routedns.dir/requires: CMakeFiles/routedns.dir/parsedns.cpp.o.requires

.PHONY : CMakeFiles/routedns.dir/requires

CMakeFiles/routedns.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/routedns.dir/cmake_clean.cmake
.PHONY : CMakeFiles/routedns.dir/clean

CMakeFiles/routedns.dir/depend:
	cd /home/jonwinters/code/dnslog && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jonwinters/code/dnslog /home/jonwinters/code/dnslog /home/jonwinters/code/dnslog /home/jonwinters/code/dnslog /home/jonwinters/code/dnslog/CMakeFiles/routedns.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/routedns.dir/depend

