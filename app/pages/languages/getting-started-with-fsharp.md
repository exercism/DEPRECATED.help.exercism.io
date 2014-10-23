---
title: "F#"
slug: "getting-started-with-fsharp"
category: "languages"
ordinal: 600
---

[F#](http://www.tryfsharp.org/Explore) is a strongly-typed, functional language that is part of Microsoft's .NET language stack.

## Installing F&#35;

#### Windows
Install [Visual Studio Express for Windows Desktop](http://www.visualstudio.com/downloads/download-visual-studio-vs#d-express-windows-desktop).

Install the [F# tools for Visual Studio](http://www.microsoft.com/en-us/download/details.aspx?id=41654).

#### Mac and Linux
The [F# Foundation](http://fsharp.org/) has detailed instructions on different options to install F# on [Mac](http://fsharp.org/use/mac/) and [Linux](http://fsharp.org/use/linux/).

#### In Browser
You can also create and share F# scripts in your browser at [Try F#](http://www.tryfsharp.org/Create). Silverlight plugin is required.

Can also try it out at [.NET Fiddle](https://dotnetfiddle.net/) which has the option of letting you bring in [NuGet](https://www.nuget.org/) packages.

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
