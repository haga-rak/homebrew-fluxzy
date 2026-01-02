class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.32.1.37789"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.32.1.37789/fluxzy-cli-1.32.1.37789-osx-x64.tar.gz"
      sha256 "d02374888cbdcb5d2dc0376c7e53ebe58138943dbf58680ed61b31286a181ad6"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.32.1.37789/fluxzy-cli-1.32.1.37789-osx-arm64.tar.gz"
      sha256 "73e00a129108afe60841a8fb8ccdb83492d636f2316d62f056d57d4869b94806"
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
