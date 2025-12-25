class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.31.32.55597"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.31.32.55597/fluxzy-cli-1.31.32.55597-osx-x64.tar.gz"
      sha256 "056dfb52a7242e446abaf22a95922f5badbe979efcde2776f03579e251d8b8e8"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.31.32.55597/fluxzy-cli-1.31.32.55597-osx-arm64.tar.gz"
      sha256 "a1795b00b4245509b2d5888cbd55210d37840310bcc9bf6b1d48e1672440772b"
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
