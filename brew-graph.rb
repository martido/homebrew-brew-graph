require "formula"

class BrewGraph < Formula
  homepage "https://github.com/martido/brew-graph"
  url "https://github.com/martido/brew-graph/releases/download/v2.0.1/brew-graph-2.0.1.zip"
  sha1 "5a63e3c728cbca13da217e65827ac414c4778872"

  def install
    bin.install "brew-graph.rb"
    mv "#{bin}/brew-graph.rb", "#{bin}/brew-graph"
  end

  test do
    system "#{bin}/brew-graph --installed"
  end
end
