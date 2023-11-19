# Neovim Dotfiles

NeoVIm is my go to IDE, yes IDE not text editor. For quick and dirty editing of text 

## Versions

This is now my 3rd version of this dotfile set.
Sometimes with dotfiles I like to
start fresh again as I've learned more.
This time I'm focusing more on simplicity.
Lua plugins will be attempted to be made by hand first for
the simplified version of what
I want so this doesn't become a confusing swiss army knife.
It's mostly the complicated stuff like whichkey, autocomplete,
fzf, etc that gets offloaded to plugins or external programs.
This is also the first version to **only** use the new LuaJIT,
so no more vimscript whatsoever, only Lua.

To view the older version,
the final commit of the previous version was:
`24bea0aedf0bc22b0e68afe4ec9a1aa048281979`.
If it's not here in this version of the repository,
then it should exist in the archive version of it.

## Documentation

Some light documentation for building this thing from
scratch is available in the `./doc` folder.
Below is a table of contents of sorts.

### Documentation Table of Contents

#### Basics

* [Plugins][lazy-plugs-me]
  * Here we explore the basics of the config structure &
    using the lazy plugin manager.
* [Built-in options][options-me]
  * Neovim by itself is highly configurable.
    This shows how to setup some of the built-in features.
* [Documentation on key-maps][keys-me]
  * Vim is rather infamous for it's key-maps and modal editing scheme.
    This guide covers on how to redefine them to your liking.
* [Documentation on configuring appearance][appearance-me]
  * Configuring appearance can be done through...
    * Plugins for complex color schemes.
    * Functions or plugins to alter appearance dynamically.
    * Which-key key bindings and menus to remind the user how to use the editor.
* [Documentation on configuring the status line][statusline-me]
  * The status line is the line at the bottom of the editor that
    shows information about the current buffer.
  * A plugin status line can show a little bit more information
    and be more customizable than the default one.
  * The first use of icons will occur in this configuration,
    which makes for much better glance-able information.

## References

* [Documentation on Lazy Plugins][lazy-plugs-me]
* [Documentation on options of built-in features][options-me]
* [Documentation on key-maps][keys-me]
* [Documentation on configuring appearance][appearance-me]
* [Documentation on configuring the status line][statusline-me]
* [NeoVim IDE Series Index by Shaik Zahid][neovim-ide-idx-zahid]
  * A lot of this is based on the tips in this series.


<!-- Hidden Reference Link Sources -->
[lazy-plugs-me]: ./doc/lazy-plugins.md "Documentation on Lazy Plugins"
[options-me]: ./doc/options.md "Documentation on options of built-in features"
[keys-me]: ./doc/keys.md "Documentation on key-maps"
[appearance-me]: ./doc/appearance.md "Documentation on configuring appearance"
[statusline-me]: ./doc/status-line.md "Documentation on configuring the status line"
[neovim-ide-idx-zahid]: https://medium.com/@shaikzahid0713/the-neovim-series-32163eb1f5d0 "NeoVim IDE Series by Shaik Zahid"
