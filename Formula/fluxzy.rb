class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.37.2.44521"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.37.2.44521/fluxzy-cli-1.37.2.44521-osx-x64.tar.gz"
      sha256 "06f6aaaac6eb456ee312498fc6727796fa78859df260d5d50340beb1578f7129"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.37.2.44521/fluxzy-cli-1.37.2.44521-osx-arm64.tar.gz"
      sha256 "5faea04c9a9340bc6958af7a1e2690bf5570b082dfe111d1be5d27d37cdec0e4"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"fluxzy"
  end

  test do
    assert_match "fluxzy", shell_output("#{bin}/fluxzy --version")
  end
end
