---
title: "Skipping Exercises"
slug: "skipping-exercises"
category: "process"
ordinal: 8
---

After you've fetched a exercise and you want to skip it, issue the command:

```bash
exercism skip <LANGUAGE> <SLUG>
```
Language here is the track name & slug is the name of the exercise you want to skip. For example, if you want to skip hello-world in Swift language:

```bash
exercism skip swift hello-world
```

Now lets say you are ready to work on a skipped exercise, and you want to restore it, issue the command:

```bash
exercism restore
```

If you want to explore more such options, use the command:

```bash
exercism help
```

It will give you a list of all the commands available on cli.