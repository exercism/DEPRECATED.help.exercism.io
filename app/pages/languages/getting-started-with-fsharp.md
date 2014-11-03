---
title: "F#"
slug: "getting-started-with-fsharp"
category: "languages"
ordinal: 600
---

[F#](http://www.tryfsharp.org/Explore) is a strongly-typed, functional language that is part of Microsoft's .NET language stack.

## Installing F&#35;

#### Mac and Linux
The [F# Foundation](http://fsharp.org/) has detailed instructions on different options to install F# on [Mac](http://fsharp.org/use/mac/) and [Linux](http://fsharp.org/use/linux/).

#### In Browser
You can also create and share F# scripts in your browser at [Try F#](http://www.tryfsharp.org/Create). Silverlight plugin is required.

Can also try it out at [.NET Fiddle](https://dotnetfiddle.net/) which has the option of letting you bring in [NuGet](https://www.nuget.org/) packages.

#### Windows
Install [Visual Studio Express for Windows Desktop](http://www.visualstudio.com/downloads/download-visual-studio-vs#d-express-windows-desktop).

Install the [F# tools for Visual Studio](http://www.microsoft.com/en-us/download/details.aspx?id=41654).

You can either start by creating your own project for working with the Exercism problems or if you have a **paid version** of Visual Studio you can download a Visual Studio solution that is already set up to work on the problems in as many languages as Visual Studio supports.

![Solution Explorer](/img/setup/visualstudio/SolutionExplorer.png)

The following instructions are for using the Visual Studio template with a **paid version** of Visual Studio.

By default, Visual Studio does not allow you to organize F# files by folder. This is a problem because Exercism fetches the exercises to sub-folders. To get around this, install the Visual [F# Power Tools extension](http://fsprojects.github.io/VisualFSharpPowerTools/) which enables folder organization and makes writing F# code much easier in Visual Studio.

1. Download the [Exercism.io Visual Studio Template](https://github.com/rprouse/Exercism.VisualStudio) from GitHub by clicking the Download Zip button on the page.
2. Unzip the template into your exercises directory, for example `C:\src\exercises`
2. Install the [Exercism CLI](http://help.exercism.io/installing-the-cli.html)
3. Open a command prompt to your exercise directory 
4. Add your API key to exercism `exercism configure --key=YOUR_API_KEY`
5. Configure your source directory in exercism `exercism configure --dir=C:\src\exercises`
6. [Fetch your first exercise](http://help.exercism.io/fetching-exercises.html) `exercism fetch fsharp`
7. Open the Exercism solution in Visual Studio
8. Expand the Exercism.FSharp project
9. Right click on the project and select **F# Power Tools | New Folder**. Enter the name for the **existing** exercise folder. 
10. Right click on the folder and select **Add | Existing item...** and select the problem files in the folder.
11. Get coding...

The NUnit NuGet package is included in the project, so you will not need to install it.

Install the [NUnit Visual Studio Test Adapter](https://visualstudiogallery.msdn.microsoft.com/6ab922d0-21c0-4f06-ab5f-4ecd1fe7175d). This will allow you to run the tests from within Visual Studio. If you have ReSharper installed, you can also [run the tests using ReSharper](https://www.jetbrains.com/resharper/features/unit_testing.html).

![Test Explorer](/img/setup/visualstudio/TestExplorer.png)

You can also run the tests from the command line by installing [NUnit 2.6.3](http://www.nunit.org/). See the instructions for C#.

## Running Tests
After installing Visual Studio Express for Windows Desktop and the F# tools run Visual Studio and it will display a start screen.

Click on "New Project" and you should see an entry for Visual F# and click on "Class Library".

![New Project](/img/setup/fsharp/newProject.png)

Install [NUnit](http://nunit.org/index.php?p=download) via NuGet package manager with the NUnit.Runners package. This will add the reference to the project.

![NuGet Package Manager](/img/setup/fsharp/manageNugetPackages.png)

![Installing NUnit](/img/setup/fsharp/installingNunit.png)

Drag and drop the test file of your chosen exercise into the project in Visual Studio. You can create your own Example file (or drag and drop the one included) and give the exercise a try.

Compile the project (Build -> Build Solution or F7) to generate the DLL file.

If you installed the NUnit runner through NuGet, the runner will be located in the ```\packages\NUnit.Runners(version number)\tools``` folder where your project is.

If you installed NUnit manually the runner will be in the ```Program Files (x86)\NUnit(version number)\bin``` folder.

Once you have been able to compile the code it will create a DLL in the ```\bin\Debug``` folder of your project. In the NUnit runner, select "Open Project" and select the DLL that was created from compiling. This will load all the tests and allow you to run them.

Now you can have fun learning F# and run your code against the tests!

## Linting
F# projects (.fsproj) can be linted for further code analysis via a third party tool - [FSharpLint](https://github.com/fsprojects/FSharpLint).

To use this, just follow the directions from the wiki page to use the [command line tool](https://github.com/duckmatt/FSharpLint/wiki/Console-Application).

## Recommended Learning Resources

Exercism provides exercises and feedback but can be difficult to jump into for those learning F# for the first time. These resources can help you get started:

* [StackOverflow - F#](http://stackoverflow.com/questions/tagged/f%23)
* [F# For Fun and Profit](http://fsharpforfunandprofit.com/)
* [Try F#](http://www.tryfsharp.org/Learn)
* [F# Foundation](http://fsharp.org/)
