---
title: "lua"
slug: "getting-started-with-lua"
category: "languages"
ordinal: 1200
---

### Getting started
First install lua using [homebrew][1]

    $ brew install lua

Then install [luarocks][2] to install packages for lua

    $ brew install luarocks

Then install [busted][3] testing framework for lua

    $ luarocks install busted
    
Then run your test

    $ busted bob_test.lua 
    
There are many great free online resources for Lua including:
 
  1. [lua.org][8]
  2. A highly recommended detailed and authoritative introduction to all aspects of Lua programming by Lua’s chief architect: [Programming in Lua (2nd edition), by Roberto Ierusalimschy][6] 
  3. For an official definition of the Lua language, consult the [Lua 5.1 Reference Manual][7], by R. Ierusalimschy, L. H. de Figueiredo, W. Celes. 
  4. [Lua Style Guide][4]
  5. [Learn Lua in 15 minutes][5] 

[1]: http://brew.sh/
[2]: http://luarocks.org/
[3]: http://olivinelabs.com/busted/
[4]: https://github.com/Olivine-Labs/lua-style-guide
[5]: http://tylerneylon.com/a/learn-lua/
[6]: www.lua.org/pil/
[7]: www.lua.org/manual/5.1/
[8]: www.lua.org