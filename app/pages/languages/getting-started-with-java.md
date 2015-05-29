---
title: "Java"
slug: "getting-started-with-java"
category: "languages"
ordinal: 900
---

## Installation

You will need:

* Java 8
* Gradle

### Java

If typing `java -version` on the command-line returns `command not found` or
similar, then go to
[java.com](https://www.java.com/en/download/help/index_installing.xml), which
will tell you how to install Java on your system.

If Java is already installed, you will see something like the following,
perhaps with some extra details about builds and virtual machines:

    java version "1.8.0"

### Gradle

Gradle is a popular build tool. Among other features, you can list libraries on which your code depends and Gradle will download them for you. Some assignments in this track have such external dependencies.

On Mac OS X you can install Gradle using homebrew:

    brew install gradle

On Windows you will need to visit the [Gradle](http://gradle.org/installation)
website and follow the instructions there.

* Download the latest version (big green button)
* Unpack the ZIP file, which will contain a folder (e.g. gradle-2.2.1)
* Copy the folder to a convenient location
* Add that location + `\bin` to your `PATH`

Verify that it has been installed correctly by running:

    gradle -version

You should see a version number as well as some extra information about build
time and dependencies.

## Running Tests

Change directories to the downloaded exercism problem, and then run

    gradle test

## IDE integration

If you prefer to work on the assignments using Eclipse or IntelliJ IDEA, Gradle makes that straight-forward to setup.

For Eclipse,

    gradle eclipse

generates the `.project` file and `.settings/` directory. In Eclipse, import this project into your workspace: File > Import > Existing Projects Into Workspace.

For IntelliJ,

    gradle intellij

generates the `<project-name>.iml` file and `.idea/` directory. In IntelliJ, open this project: File > Open.

Both IDEs have plugins that provide additional support for Gradle.

* [Gradle Integration for Eclipse (4.4)](https://marketplace.eclipse.org/content/gradle-integration-eclipse-44)
* [Gradle support in IntelliJ IDEA](https://www.jetbrains.com/idea/help/gradle.html)