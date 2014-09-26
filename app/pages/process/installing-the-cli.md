---
title: "Installing the CLI"
slug: "installing-the-cli"
category: "process"
ordinal: 1
---

You access the exercises via the command line using a stand-alone binary.

You can install it without installing any particular programming language or environment.

## Installing the CLI

### OS X or Linux

You can install the CLI with the following command [view source](http://cli.exercism.io/install):

```bash
$ curl -s http://cli.exercism.io/install | sh
```

Or, download the [latest release](http://github.com/exercism/cli/releases/latest) for your operating system and architecture (32-bit or 64-bit), and place the binary [in your PATH](/understanding-path.html).

To determine your processor architecture, try `uname -m`.

### Windows

What follows are instructions that work for installing exercism on Windows 7. Instructions for other versions of Windows may differ slightly, but the principle will be the same.

**NOTE:** You will need Admin privileges for some of the steps detailed below. If you don't have them, get someone with those privileges to do the install for you.

#### Downloading the appropriate files
If you don't already have 7-Zip installed, download and install it from http://www.7-zip.org/
Download the appropriate exercism Windows patch release (`exercism-windows-32bit.tgz` for 32-bit machines or `exercism-windows-64bit.tgz` for 64-bit machines) from [here](https://github.com/exercism/cli/releases/latest)

#### Extracting the executable file
1. Open the downloaded `exercism-windows-*.tgz` file using 7-Zip
1. Within 7-Zip:
	1. Double click on the `*.tar` file
	1. Select `exercism.exe` and click on "Extract"
	1. Click on the ellipsis `...` next to the "Copy to" selection box and navigate to the folder where you want exercism placed (you can create a new folder or two where you are during this process if you like by clicking on "Make New Folder" and giving it an appropriate name) then click on "OK"
1. Exit 7-Zip

#### Adding the executable's directory to PATH
1. **WARNING:** You are about to update your "PATH" user or system variable. You must carefully follow the instructions below, as deleting any existing paths could have serious implications for your Windows installation. This is not difficult, just make sure you don't rush through this stage and miss a step.
1. Open the Windows Control Panel by clicking on "Start" and selecting "Control Panel" from the list on the right
1. Select "System"
1. Select "Advanced system settings"
1. Select "Environment Variables..."
1. At this point you have the option of making exercism available just for the current user or for every user:
	1. **Only for the current user:** In the upper list, "User variables for \<your username\>", find and select "PATH" and click on "Edit...". If you can't find "PATH", click on "New..." and type "PATH" into "Variable name"
	1. **For every user:** In the lower list, "System variables", find and select "Path" and click on "Edit..."
1. **WARNING:** If you are adding a path to a previously existing list:
	1. **DO NOT** start typing, as the current "PATH"/"Path" value is selected and will be deleted when you type. If this warning is too late, **YOU MUST** click on "Cancel" and go back to the previous step
	1. Press the "End" key to take you to the end of the value
	1. type in a semi-colon ";"
1. Type in the path to where you have placed `exercism.exe` (you can paste in the location if you open the exercism folder in Explorer, click in the location bar at the top and copy the text)
1. **NOTE:** If you can't remember where you have placed the file, search for "exercism.exe" in Explorer, open the folder by right-clicking on `exercism.exe` and clicking on "Open file location", then follow the instructions in the previous step to copy and paste the location into the PATH value

#### Running exercism
1. Open a command line interface (CLI) by clicking on "Start", typing "cmd" into the search bar and pressing enter
1. In the resulting window type in "exercism" and press Enter
1. If all is well you should be shown information on how to use exercism

### More information
See the [CLI site](http://cli.exercism.io/).


<a class="secondary-button" href="fetching-exercises.html">Fetching Exercises</a>
