class Fabled < Formula
  desc "FabledOS — hidden-daemon CLI for parallel AI software development"
  homepage "https://fabledos.com"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0f903dc493b02cabf3dc71efff34a5c9cc604bc2ab4c404e734c22ed6366228d"
    end
    on_intel do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5b8689939abac594b0bd1ec0da040cca788cba9541ad433bb6a3657d9568fb11"
    end
  end

  def install
    bin.install "fabled"
  end

  test do
    system "#{bin}/fabled", "--version"
  end
end
