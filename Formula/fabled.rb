class Fabled < Formula
  desc "FabledOS — hidden-daemon CLI for parallel AI software development"
  homepage "https://fabledos.com"
  version "0.7.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "22a659b9497fdd1c9d0b191b2e2e93385fe1e0f73dfdf7bb969865886ea57829"
    end
    on_intel do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fa5e7cdddd72335e84f92273f1523af95163eac9ca605969de7345fff4b78ccf"
    end
  end

  def install
    bin.install "fabled"
  end

  test do
    system "#{bin}/fabled", "--version"
  end
end
