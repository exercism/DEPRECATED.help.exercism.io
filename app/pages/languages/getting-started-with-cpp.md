---
title: "C++"
slug: "getting-started-with-cpp"
category: "languages"
ordinal: 310
---
# Submitting Your Work for Peer Review

**Important!**  Currently exercism only supports submitting a single
file for each exercise (see [issue 1165](https://github.com/exercism/exercism.io/issues/1165)).
Since C++ can mix implementation between the header file (`.h`) and the
source file (`.cpp`), put your entire implementation in one or the other
and submit that one file for each exercise.

When using a `.cpp` file for the implementation, it is helpful to reviewers
if the contents of the `.h` file appear in the `.cpp` file at the top
as a comment or `#if` disabled block.

# Learning C++ From Ground Zero

C++ is a language with a broad, expressive syntax that supports several
different programming styles: procedural, object-oriented, functional,
and generic as well as combinations of all of those together in the same
program.  This language track attempts to introduce problems in
gradually increasing difficulty.  However, elements of the language
syntax are best introduced in a form other than as a series of exercises.

In general, exercism assumes you already know the syntax and mechanisms
of a language in a particular track.  However, knowing the syntax of a
language is merely the first step in gaining expertise in a language.
Exercism allows you to practice solving problems and share discussion
with other programmers who have solved the same problem.  It is from
the shared discussion that we gain expertise and insight into becoming
better programmers.

If you are brand new to the C++ language, you should spend time learning
the basics of the language first.  Here are a few resources that can
help you get started:

* [Learn C++](http://www.learncpp.com/)
* [C++ Koans](https://github.com/torbjoernk/CppKoans)

[Coliru](http://coliru.stacked-crooked.com/) is a simple web form
interface to a C++ compiler that will let you try out small programs.
Sometimes this can be an easier way to perform a quick experiment than
building something locally in an integrated development environment.

# Test-Driven Development in C++

Exercism assumes that you are familiar with the concept of test-driven
development.  Each exercise comes with a series of tests that are already
written for you.  You progress through the exercise one test at a time,
writing an implementation incrementally to satisfy the tests.

If you are new to test-driven development, it is strongly recommended
that you first work through the [Test-Driven Development in C++](https://github.com/boostcon/cppnow_presentations_2014/tree/master/files/test_driven)
workshop from [C++ Now! 2014](http://cppnow.org/).  The same tools used
in that workshop are used in the C++ language track on exercism.

# Prerequisites

The C++ language track requires that you have the following software
installed on your system:
* a modern C++11 compiler
* the CMake cross-platform build system
* the Boost libraries

Microsoft's Visual Studio IDE and Apple's Xcode IDEs combine the compiler
and the
native build system into a single IDE (integrated development environment).
Linux environments typically expose the compiler and native build system
as separate command-line tools.

## Prerequisite: A Modern C++11 Compiler

This language track assumes [C++11](http://en.wikipedia.org/wiki/C%2B%2B11),
the latest version of the ISO C++ standard that is
[widely supported](http://en.cppreference.com/w/cpp/compiler_support) on all
major platforms (Linux, Windows and MacOS).
[C++14](http://en.wikipedia.org/wiki/C%2B%2B14) has been recently ratified
as the most recent version of the ISO standard.  The language track will
be updated to C++14 once support is sufficiently mature in the development
environments across all major platforms.

Free compilers exist for C++11 on all major platforms, although the version
of the C++ compiler installed on your system may be an older version that
doesn't fully support C++11.  A comparison chart of
[C++ compiler support](http://en.cppreference.com/w/cpp/compiler_support)
and related [discussion](http://en.cppreference.com/w/Talk:cpp/compiler_support)
shows that most of the major features of C++11 are available on all major
platforms.

### Linux

Linux users will need gcc 4.8 or later or clang 3.4 or later for the compiler
and `make` will be needed for the native build.  Make is pre-installed on most
unix systems, but is available via `sudo apt-get install make` if not present.
Gcc 4.8 supports C++11 with the `-std=c++11` argument and can be installed and
set as the default compiler with the following recipe:

```bash
$ sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
$ sudo apt-get -qq -d update
$ sudo apt-get -qq install g++-4.8
$ # make g++ 4.8 the default g++ executable
$ sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 90
```

### MacOS

MacOS users can install gcc 4.8 with [Homebrew](http://brew.sh/) via
`brew install gcc`.

### Windows

Windows users can get
[Visual Studio Express 2013 for Windows Desktop](http://www.visualstudio.com/downloads/download-visual-studio-vs#d-express-windows-desktop),
a free download that will give you the Visual Studio 2013 IDE and the
latest version of the Microsoft Visual C++ compiler.

## Prerequisite: CMake

CMake is an open source cross-platform build system that generates build
scripts for your native build system (`make`, Visual Studio, Xcode, etc.).
Exercism's C++ track uses CMake to give you a ready-made build that:
* compiles the tests
* compiles your solution
* links the test executable
* automatically runs the tests as part of every build
* fails the build if the any tests fail

Using CMake allows exercism to provide a cross-platform build script that
can generate project files for integrated development environments like
Visual Studio and Xcode.  This allows you to focus on the problem and
not worry about setting up a build for each exercise.

Getting a portable build isn't easy and requires access to many kinds of
systems.  If you encounter any problems with the supplied CMake recipe,
please [report the issue](https://github.com/exercism/xcpp/issues) so we can
improve the CMake support.

[CMake 2.8.11 or later](http://www.cmake.org/) is required to use the provided build recipe.

## Prerequisite: Boost

The unit tests use Boost.Test, the unit testing framework included with
[Boost](http://www.boost.org/index.html).  You may find other libraries
in Boost useful to you as you work through the exercises.  In particular,
gcc 4.8 does not have a proper implementation of the standard regular
expression library, but you can find a compatible library in Boost.
You will need to download and install Boost.  As of this writing Boost
1.55 is the current version.  You will need a compiled version of the
boost libraries Boost.Test, Boost.DateTime and Boost.Regex, or you will
need to download from source and build the library yourself.

If you are having difficulties installing Boost for use with exercism,
[ask for help](https://github.com/exercism/xcpp/issues).

### Linux

Linux users can get pre-built packages with the following recipe:

```bash
$ sudo add-apt-repository -y ppa:boost-latest/ppa
$ sudo apt-get -qq -d update
$ sudo apt-get -qq install libboost1.55-all-dev
```

Note: These prepackaged Linux binaries are not compiled with gcc 4.8 and
some libraries may have issues as a result.  If a pre-built package is
unavailable for your linux distribution, try
[installing Boost from source](http://www.boost.org/doc/libs/release/more/getting_started/index.html).

### Windows

Windows users can download compiled binaries from [sourceforge](http://sourceforge.net/projects/boost/files/boost-binaries/1.55.0-build2/).
You must download the version appropriate for your compiler.  For recent
versions of Visual Studio, the direct links are provided below:

| Compiler | Download |
|----------|----------|
| Visual Studio Express 2013 for Windows Desktop (32-bit) | [boost_1_55_0-msvc-12.0-32.exe](http://sourceforge.net/projects/boost/files/boost-binaries/1.55.0-build2/boost_1_55_0-msvc-12.0-32.exe/download) |
| Visual Studio 2013 (32-bit) | [boost_1_55_0-msvc-12.0-32.exe](http://sourceforge.net/projects/boost/files/boost-binaries/1.55.0-build2/boost_1_55_0-msvc-12.0-32.exe/download) |
| Visual Studio 2012 (32-bit) | [boost_1_55_0-msvc-11.0-32.exe](http://sourceforge.net/projects/boost/files/boost-binaries/1.55.0-build2/boost_1_55_0-msvc-11.0-32.exe/download) |
| Visual Studio 2010 (32-bit) | [boost_1_55_0-msvc-10.0-32.exe](http://sourceforge.net/projects/boost/files/boost-binaries/1.55.0-build2/boost_1_55_0-msvc-10.0-32.exe/download) |

In this table, 32-bit refers to the kind of code generated by your
compiler and not the operating system.  Code compiled for 32-bit will run
on both 32-bit and 64-bit versions of Windows.  Code compiled for 64-bit
will only run on 64-bit versions of Windows.  The CMake recipes used in
exercism create 32-bit projects for Visual Studio, so download the
appropriate 32-bit version of Boost.

Once you download the compiled binaries, install them into a suitable
location.  The installed location will contain a libraries directory
named similarly to the install executable, such as `lib32-msvc-12.0`.
Rename this directory to `lib` so that CMake can find the precompiled
libraries.  If you don't rename the directory you will see an error
like this when you run CMake:

```
> cmake -DBOOST_INCLUDEDIR:PATH=D:/tmp/boost_1_55_0 ..
-- Building for: Visual Studio 12
-- The CXX compiler identification is MSVC 18.0.30723.0
-- Check for working CXX compiler using: Visual Studio 12
-- Check for working CXX compiler using: Visual Studio 12 -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
CMake Error at C:/Program Files (x86)/CMake 2.8/share/cmake-2.8/Modules/FindBoost.cmake:1106 (message):
  Unable to find the requested Boost libraries.

  Boost version: 1.55.0

  Boost include path: D:/tmp/boost_1_55_0

  The following Boost libraries could not be found:

          boost_unit_test_framework
          boost_date_time
          boost_regex

  No Boost libraries were found.  You may need to set BOOST_LIBRARYDIR to the
  directory containing Boost libraries or BOOST_ROOT to the location of
  Boost.
Call Stack (most recent call first):
  CMakeLists.txt:12 (find_package)


-- Configuring incomplete, errors occurred!
```

### MacOS

MacOS users can install boost with [Homebrew](http://brew.sh/) via
`brew install boost`.

### Building from Source

If all else fails you can download the source and build it yourself,
but you should prefer a prebuilt distribution to make things easier.
Bootstrap instructions are on the
[Boost getting started page](http://www.boost.org/doc/libs/release/more/getting_started/index.html).

# Working the Exercise

Each exercise supplies the unit tests and a CMake build recipe.  You
provide the implementation.
Each test file is meant to link against your implementation to provide a
console executable that runs the tests.  Running the test executable
prints messages for each failing test and reports a non-zero exit status
when tests fail.

Working through each exercise is a process of:
* Creating the initial build with CMake
* For each unit test:
 * Satisfy compile errors to make the test fail.
 * Implement just enough to make the test pass.
 * Refactor your implementation to enhance readability, reduce duplication, etc.
 * Uncomment the next test

## Creating the Initial Build with CMake

Each exercise will bring a `CMakeLists.txt` file along with the unit
tests.  It contains the canned CMake recipe to handle the build for you.
You should not need to edit this file.  The provided recipe assumes that
your implementation exists as a header file and a source file named after
the exercise.

For instance, the exercise `bob` expects an implementation in `bob.h`
and `bob.cpp`.  For exercises with dashes in their name, the source
files are assumed to use underscores, so `word-count` expects
`word_count.h` and `word_count.cpp`.  You may decide that your
impementation is sufficiently simple that it can live entirely in the
header, in which case you can omit the `cpp` file.

**Create your initial implementation files before running CMake.**  If
you do not have files `bob.h` and `bob.cpp` when running
CMake for exercise `bob`, then CMake will generate an error about files
not being found.  **These files can be empty, but they must exist.**

Using this recipe, CMake can generate a suitable project for your environment
by running `cmake -G` with a suitable generator and the location of the
directory for the exercise.  CMake will generate a build script appropriate
for your operating system.  To keep those generated files separate from
your exercise source code, it is common to create a directory called `build`
to hold these generated build files, as well as the compiled code.  This
will keep your exercise folder uncluttered and tidy.

Since you will be running CMake to create the build instructions for each
assignment, you might want to create a bash script (Linux/MacOS) or
batch file (Windows) for this command.

Once the build environment has been created by CMake, you can build your
code using the appropriate command for your environment:
* Linux with make: `make`
* Windows with Visual Studio 2013: Select Build / Build Solution from the menu.
* MacOS with Xcode: Select Build from the toolbar

Examples of running CMake for different environments are shown below.

### Linux with Make

The generator name for CMake is `Unix Makefiles`.
Assuming the current exercise is `bob` and we're in the exercise folder:

```
$ cp /dev/null bob.h
$ cp /dev/null bob.cpp
$ mkdir build
$ cd build
$ cmake -G "Unix Makefiles" ..
```

This example shows creating empty files for the implementation before
running CMake.

### Windows with Visual Studio 2013

The gneerator name for CMake is `Visual Studio 12`.  The same generator
supports all editions of Visual Studio 2013: Express, Professional,
Ultimate, etc.
Assuming the current exercise is `bob` and we're in the exercise folder:

```
> copy nul: bob.h
> copy nul: bob.cpp
> mkdir build
> cd build
> cmake -G "Visual Studio 12" ..
```

This example shows creating empty files for the implementation before
running CMake.

On Linux and MacOS boost packages install the headers and libraries to
a standard global location on the system.  On Windows, you unpack the
binaries wherever you like or build from source wherever you like and
there is no standard install location on the system.

If you get complaints from CMake about not being able to find Boost, you
need to supply additional arguments to tell CMake where to find it by
setting the `BOOST_INCLUDEDIR` variable on the command-line.  Here is an
example using the Visual Studio 2013 generator:

```
> cmake -G "Visual Studio 12" -DBOOST_INCLUDEDIR:PATH=D:/Code/boost/boost_1_55_0 ..
```

**Note:** Path locations passed to CMake always use slash (`/`) as the
directory separator, even on Windows.

#### Exercism.io Visual Studio Template

This is a Visual Studio template that comes pre-configured to work on the problems in as many languages as Visual Studio supports.

![Solution Explorer](/img/setup/visualstudio/SolutionExplorer.png)

1. Download the [Exercism.io Visual Studio Template](https://github.com/rprouse/Exercism.VisualStudio) from GitHub by clicking the Download Zip button on the page.
2. Unzip the template into your exercises directory, for example `C:\src\exercises`
2. Install the [Exercism CLI](http://help.exercism.io/installing-the-cli.html)
3. Open a command prompt to your exercise directory 
4. Add your API key to exercism `exercism configure --key=YOUR_API_KEY`
5. Configure your source directory in exercism `exercism configure --dir=C:\src\exercises`
6. [Fetch your first exercise](http://help.exercism.io/fetching-exercises.html) `exercism fetch cpp`
7. Open the Exercism solution in Visual Studio
8. Expand the Exercism.cpp project
9. Click on **Show All Files** in Solution Explorer (See below)
10. The exercise you just fetched will appear greyed out. Right click on the folder and **Include In Project**
11. Get coding...

![Add files](/img/setup/visualstudio/AddFiles.png)

In order for the C++ project to compile, **you must** set the environment variable `BOOST_ROOT` to the directory you installed boost to. On my system, `BOOST_ROOT=C:\Src\boost\boost_1_56_0`

The C++ project includes all of the exercises in one project, so you can ignore the CMake instructions above. `BOOST_TEST_MAIN` is in `Exercism.cpp`, so **you must delete** the `#define BOOST_TEST_MAIN` line from every exercise that you fetch. 

If you have a paid version of Visual Studio, you can run the tests within Visual Studio by installing the [Boost Unit Test Adapter](https://visualstudiogallery.msdn.microsoft.com/5f4ae1bd-b769-410e-8238-fb30beda987f) extension. It is still a bit flaky, but it generally works.

![Test Explorer](/img/setup/visualstudio/TestExplorer.png)

You can also run the test from the command line by running the `Exercism.cpp.exe` that is built by the project.

To keep things simple, code the entire problem in the `.h` file and don't use a `.cpp` file. This makes submission to exercism easier.

### MacOS with Xcode

The generator name for CMake is `Xcode`.
Assuming the current exercise is `bob` and we're in the exercise folder:

```
$ cp /dev/null bob.h
$ cp /dev/null bob.cpp
$ mkdir build
$ cd build
$ cmake -G Xcode ..
```

This example shows creating empty files for the implementation before
running CMake.

### MacOS with Make

The generator name for CMake is `Unix Makefiles`.
Assuming the current exercise is `bob` and we're in the exercise folder:

```
$ cp /dev/null bob.h
$ cp /dev/null bob.cpp
$ mkdir build
$ cd build
$ cmake -G "Unix Makefiles" ..
```

This example shows creating empty files for the implementation before
running CMake.

# Boost.Test Documentation

The Boost.Test documentation is being rewritten to improve usability
and is nearly complete.
Prefer the documentation rewrite to look up something if you're unfamiliar
with Boost.Test and want to know more.
* [Boost.Test documentation rewrite](http://user.xmission.com/~legalize/boost.test/)
* [Boost.Test 1.55 official documentation](http://www.boost.org/doc/libs/1_55_0/libs/test/doc/html/index.html)
