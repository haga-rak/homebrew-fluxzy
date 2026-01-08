class Fluxzy < Formula
  desc "MITM engine for intercepting, recording, and altering HTTP/1.1, H2, and WebSocket traffic"
  homepage "https://www.fluxzy.io"
  license "EUPL-1.2"
  version "1.33.10.50221"

  on_macos do
    on_intel do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.33.10.50221/fluxzy-cli-1.33.10.50221-osx-x64.tar.gz"
      sha256 "f41cabab36bb4975ebcbbdffdc5993ba9fffc72c89ef35c99e5bf95ac00713d8"
    end

    on_arm do
      url "https://github.com/haga-rak/fluxzy.core/releases/download/v1.33.10.50221/fluxzy-cli-1.33.10.50221-osx-arm64.tar.gz"
      sha256 "80a2d17e412cfa568ef56b564e8e02bc6a951d6d07cedf97e8f32fcf8c4da13b"
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
