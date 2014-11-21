require "formula"

class BrewGraph < Formula
  homepage "https://github.com/martido/brew-graph"
  url "https://github.com/martido/homebrew-brew-graph/releases/download/v1.0/brew-graph-1.0.zip"
  sha1 "0ee1cf73d0e11f5f81ec061ed1c1982842926240"

  def install
    bin.install "brew-graph.rb"
    mv "#{bin}/brew-graph.rb", "#{bin}/brew-graph"
  end

  test do
    system "#{bin}/brew-graph"
  end
end
