require "formula"

class BrewGraph < Formula
  homepage "https://github.com/martido/brew-graph"
  url "https://github.com/martido/brew-graph/releases/download/v2.0.1/brew-graph-2.0.1.zip"
  sha256 "ce7b25791af84d4e35f108ded542e311b8393d48ef52d31311cd4b327a6640af"

  def install
    bin.install "brew-graph.rb"
    mv "#{bin}/brew-graph.rb", "#{bin}/brew-graph"
  end

  test do
    system "#{bin}/brew-graph --installed"
  end
end
