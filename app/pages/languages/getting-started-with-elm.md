---
title: "Elm"
slug: "getting-started-with-elm"
category: "languages"
ordinal: 800
---

Download and install a recent Elm Platform for your OS from [elm-lang.org/install](http://elm-lang.org/install).

## MacOS

```bash
$ npm install --global elm
$ elm-package install -y
```

## Running Tests
First, execute the following:
```bash
$ elm-reactor
```
Then go to `localhost:8000` in your browser and navigate to your test file.

## Making Your First Elm Module

To create a module that can be loaded with `import BobExample exposing (responseFor)`, put this code in `BobExample.elm`:

```elm
module BobExample where

responseFor : String -> String
responseFor statement = undefined
```
