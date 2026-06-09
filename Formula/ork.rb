class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.4/ork_darwin_arm64.tar.gz"
      sha256 "69c9f116081b20b5c59203d165eafff134bca64f24254afbd2dceb018e22e255"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.4/ork_darwin_amd64.tar.gz"
      sha256 "7654664d972d9db36261b1e61eb0b1fa5961b2d6f128094a5160698df0403d09"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.4/ork_linux_arm64.tar.gz"
      sha256 "85dc4fd51e5cb5a25cfc0ef911925296cf532fcb75bb2a6678bcbea571207fcf"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.4/ork_linux_amd64.tar.gz"
      sha256 "223b71ba4fbb1748895d2a0ef89d763944c5a9a22c3689868011b4d8e4273d46"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
