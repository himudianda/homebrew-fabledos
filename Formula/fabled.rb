class Fabled < Formula
  desc "FabledOS — hidden-daemon CLI for parallel AI software development"
  homepage "https://fabledos.com"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/himudianda/fabledos-clients/releases/download/v#{version}/fabled-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "16950494bea0ea2d37d5f0a98a8bd30708761401f457cb1c6fa0f5fe246323de"
    end
    on_intel do
      url "https://github.com/himudianda/fabledos-clients/releases/download/v#{version}/fabled-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "84d8d316bc20d4a56f8d58be7323af3deed79c0a1587d2a3cf7b3ec27dad8607"
    end
  end

  def install
    bin.install "fabled"
  end

  test do
    system "#{bin}/fabled", "--version"
  end
end
