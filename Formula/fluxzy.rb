class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.36.55.6882"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.36.55.6882/fluxzy-cli-1.36.55.6882-osx-x64.tar.gz"
      sha256 "ea06003e1b988a95a995855ef157de1dfc32846cc653b1e0ecc5432c44ab9b5d"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.36.55.6882/fluxzy-cli-1.36.55.6882-osx-arm64.tar.gz"
      sha256 "d1c19345e52128cb34f36a39acbf12009523c6aee2477b67ab6ace8c3b9aae6a"
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
