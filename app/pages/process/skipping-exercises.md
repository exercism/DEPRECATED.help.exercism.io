---
title: "Skipping Exercises"
slug: "skipping-exercises"
category: "process"
ordinal: 8
---

After you've fetched an exercise and you want to skip it, issue the command:

```bash
exercism skip <TRACK_ID> <SLUG>
```
TRACK_ID here is a url-safe identifier for a language track & SLUG is a url-safe identifier for an exercise. For example, if you want to skip hello-world in Swift language:

```bash
exercism skip swift hello-world
```

Now lets say you are ready to work on a skipped exercise, and you want to restore it, issue the command:

```bash
exercism fetch <TRACK_ID> <SLUG>
```

If you want to explore more such options, use the command:

```bash
exercism help
```

It will give you a list of all the commands available on cli.