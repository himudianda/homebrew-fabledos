class Fabled < Formula
  desc "FabledOS — hidden-daemon CLI for parallel AI software development"
  homepage "https://fabledos.com"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6cdb7fdc1f1868ab30890cdbf2dcb7884a332f5c6291ebbb4f660064fe67c594"
    end
    on_intel do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4ea9768cc8403d8c5d0d71c52c856a043f1b2d21525962b708129d4eaa0b77eb"
    end
  end

  def install
    bin.install "fabled"
  end

  test do
    system "#{bin}/fabled", "--version"
  end
end
