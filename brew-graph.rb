require "formula"

class BrewGraph < Formula
  homepage "https://github.com/martido/brew-graph"
  url "https://github.com/martido/brew-graph/releases/download/2.2/brew-graph-2.2.zip"
  sha256 "379c5d5dbe40afe99d009b74636e300fc3f3af2b78aadace35891dab61e86a75"

  def install
    bin.install "brew-graph.rb"
    mv "#{bin}/brew-graph.rb", "#{bin}/brew-graph"
  end

  test do
    system "#{bin}/brew-graph --installed"
  end
end
