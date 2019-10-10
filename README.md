**Attention:** This tap repository is **deprecated**. [brew-graph][1] is now available as an external command. The command is equivalent to this version, but there's no need to install a formula. To switch to the new version:

    brew untap martido/homebrew-brew-graph
    brew uninstall brew-graph
    brew tap martido/homebrew-graph

**There will be no future updates of brew-graph via this tap repository.**

# homebrew-brew-graph

A Homebrew formula for the [brew-graph][1] script.

Tap and install in one command with

    brew install martido/brew-graph/brew-graph

Alternatively, in two steps

    brew tap martido/brew-graph
    brew install brew-graph

The command will be available as `brew graph` and `brew-graph`.

[1]: https://github.com/martido/homebrew-graph
