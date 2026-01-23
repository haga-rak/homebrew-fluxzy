class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.34.1.16860"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.34.1.16860/fluxzy-cli-1.34.1.16860-osx-x64.tar.gz"
      sha256 "c66d9b57c4e0be190a640641e1c45eda992a338bb48722de3bcb4e28d06fd758"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.34.1.16860/fluxzy-cli-1.34.1.16860-osx-arm64.tar.gz"
      sha256 "25e950123139d34dca544c139387c6ec1778c816b6aa223ee89d41e2ae2b6fa9"
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
