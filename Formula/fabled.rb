class Fabled < Formula
  desc "FabledOS — hidden-daemon CLI for parallel AI software development"
  homepage "https://fabledos.com"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "08da424450f6444990a8a2fe3b7f881d394a2194309a3695aecef138f024e5f8"
    end
    on_intel do
      url "https://github.com/himudianda/fabled-releases/releases/download/v#{version}/fabled-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "167401e33061fa62ea90adf52e315052ed0e157a0750b59c84c1f94e6c9cdc9e"
    end
  end

  def install
    bin.install "fabled"
  end

  test do
    system "#{bin}/fabled", "--version"
  end
end
