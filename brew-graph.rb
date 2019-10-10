require "formula"

class BrewGraph < Formula
  homepage "https://github.com/martido/brew-graph"
  url "https://github.com/martido/homebrew-graph/releases/download/2.2.1/brew-graph-2.2.1.zip"
  sha256 "84becabfe46f59655e810214e777bffd82f0e7b41263c2c08bdc43527a881b04"

  def install
    bin.install "brew-graph.rb"
    mv "#{bin}/brew-graph.rb", "#{bin}/brew-graph"
  end

  def caveats
    <<~EOS
    
      \e[#{31}m**************************** PLEASE NOTE *****************************\e[0m
      brew-graph is now available as an external command.
      The command is equivalent to this version,
      but there's no need to install a formula.
      
      To switch to the new version:

        brew untap martido/homebrew-brew-graph
        brew uninstall brew-graph
        brew tap martido/homebrew-graph

      \e[#{31}mThere will be no future updates of brew-graph via this tap repository.\e[0m

    EOS
  end

  test do
    system "#{bin}/brew-graph --installed"
  end
end
