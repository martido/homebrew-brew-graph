require "formula"

class BrewGraph < Formula
  homepage "https://github.com/martido/brew-graph"
  url "https://github.com/martido/brew-graph/releases/download/v2.0/brew-graph-2.0.zip"
  sha1 "69f6dbf116da1595424cf8f88daa8debaa9e81b1"

  def install
    bin.install "brew-graph.rb"
    mv "#{bin}/brew-graph.rb", "#{bin}/brew-graph"
  end

  test do
    system "#{bin}/brew-graph --installed"
  end
end
