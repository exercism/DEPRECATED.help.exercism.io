# Exercism.io End-User Documentation

Markdown-driven static site.

Borrowed heavily from [lineman-docs](https://github.com/linemanjs/lineman-docs).

## Getting Started

1. Clone this repository.
2. [Install lineman.js](https://github.com/linemanjs/lineman#install) if you haven't already.
3. Run `npm install` to install required project dependencies.
4. Run `lineman run` while you work on writing markdown files. Visit the site on [localhost:8000](http://localhost:8000)

The documentation topics live in `app/pages/**/*.md`. Lineman regenerates the site on save, so you don't need to restart the server.

## Creating New Topics

Include metadata at the top of the file. The required fields are `slug`, and `category`.

The `category` value must match the name of the directory that the file lives in.

The `ordinal` value allows posts to be sorted.

```plain
---
title: "Ruby"
slug: "ruby"
category: "languages"
ordinal: 1
---
```

Below the metadata, the documentation can be added using GitHub flavored markdown.


## LICENSE

The MIT License (MIT)

Copyright (c) 2014 Katrina Owen, _@kytrinyx.com
