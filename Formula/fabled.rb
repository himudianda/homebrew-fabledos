class Fabled < Formula
  desc "FabledOS — hidden-daemon CLI for parallel AI software development"
  homepage "https://fabledos.com"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a914057448f4ba33ea9fc6d67d7f8834b7ef2a852048cad0bf485514136002d9"
    end
    on_intel do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5b4214664e3e45e8337b608ec3d014a7691e307219ad7d3b2caec0083461aaca"
    end
  end

  def install
    bin.install "fabled"
  end

  test do
    system "#{bin}/fabled", "--version"
  end
end
