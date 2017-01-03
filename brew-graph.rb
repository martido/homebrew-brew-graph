require "formula"

class BrewGraph < Formula
  homepage "https://github.com/martido/brew-graph"
  url "https://github.com/martido/brew-graph/releases/download/2.1/brew-graph-2.1.zip"
  sha256 "b27ac760d2b0527dc5d1d25dfe2a9ae95e163208c9df18a69cca3ac06e87b0e1"

  def install
    bin.install "brew-graph.rb"
    mv "#{bin}/brew-graph.rb", "#{bin}/brew-graph"
  end

  test do
    system "#{bin}/brew-graph --installed"
  end
end
