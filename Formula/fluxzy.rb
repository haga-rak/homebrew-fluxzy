class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.35.20.1"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.35.20.1/fluxzy-cli-1.35.20.1-osx-x64.tar.gz"
      sha256 "60630a5073f2ba4a4db9a931cc3673e1f754c0a7e2d7ea415ae683874836b70e"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.35.20.1/fluxzy-cli-1.35.20.1-osx-arm64.tar.gz"
      sha256 "c1c284b404057c4886856d3b4650c39e5c75a9206cd781baea623d8550858b1e"
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
