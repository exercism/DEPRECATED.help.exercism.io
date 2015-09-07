---
title: "Rust"
slug: "getting-started-with-rust"
category: "languages"
ordinal: 1900
---

## Installation

Follow the ["Installing Rust" chapter in the Rust book](http://doc.rust-lang.org/stable/book/installing-rust.html).

## Writing the Code

Write your code in `src/lib.rs`

You'll be writing a *library crate*.  Code for a crate is stored within the `src/` subdirectory.  *Library crates* must contain at least a file named `lib.rs`.  For more details, check out the rustlang book [chapter on crates and modules](http://doc.rust-lang.org/stable/book/crates-and-modules.html)

If you were starting from scratch you could use `cargo new` to create the filestructure: e.g. `cargo new $projectname`. 
exercism has already created the projectname directory so you'll need to create `src/lib.rs` manually:

```bash
mkdir src
touch src/lib.rs
```

### Running Tests

To run the tests, all you need to do is run the following command:

```bash
$ cargo test
```

Only the first test is enabled by default.  After you are ready to pass the next test, remove the ignore flag from the next test (`#[ignore]`).  You can also remove the flag from all the tests at once if you prefer.

You should try to write as little code possible to get the tests to pass.  Let the test failures guide you to what should be written next.

## Recommended Learning Resources

* [The Rust Programming Language](http://doc.rust-lang.org/stable/book/) is a great resource for getting started with Rust as well as diving deeper into specific features of Rust.
* [Rust by Example](http://rustbyexample.com) shows you examples of the most common things you will be writing in Rust.
* The [Rust API Documentation](http://doc.rust-lang.org/std/) can be used to discover new methods and how they work.
* [#rust](http://chat.mibbit.com/?server=irc.mozilla.org&channel=%23rust) on irc.mozilla.org is the official Rust IRC channel.  Other channels include (but not limited to): [#rust-gamedev](http://chat.mibbit.com/?server=irc.mozilla.org&channel=%23rust-gamedev), [#rust-osdev](http://chat.mibbit.com/?server=irc.mozilla.org&channel=%23rust-osdev), and [#rust-webdev](http://chat.mibbit.com/?server=irc.mozilla.org&channel=%23rust-webdev).
* [Stack Overflow](http://stackoverflow.com/questions/tagged/rust) can be used to search for your problem and see if it has been answered already.  You can also ask and answer questions.
* The [Rust User Forum](http://users.rust-lang.org) is for general discussion about Rust.
* [/r/rust](http://www.reddit.com/r/rust/) is the official Rust subreddit.
