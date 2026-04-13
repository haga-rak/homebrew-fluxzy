class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.35.25.62495"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.35.25.62495/fluxzy-cli-1.35.25.62495-osx-x64.tar.gz"
      sha256 "a182f0c689ab92c0f9d9cb7a5b9032d55f1faa4418e6f9cdf9de073bfd31ca06"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.35.25.62495/fluxzy-cli-1.35.25.62495-osx-arm64.tar.gz"
      sha256 "ba8d9617e9136dce76b60d8bcda5ccc7d28861ec0752a4fb94b046c6dc3d418d"
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
