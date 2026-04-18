class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.35.26.32388"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.35.26.32388/fluxzy-cli-1.35.26.32388-osx-x64.tar.gz"
      sha256 "4d9547206e3b647c03dd6b314a251632afd60f4d66c13e8b2d3d0396eb79bfe3"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.35.26.32388/fluxzy-cli-1.35.26.32388-osx-arm64.tar.gz"
      sha256 "596f3b6ec638790168149269bd185bbe8b644ee05cce03299ba3c42e2b49cee9"
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
