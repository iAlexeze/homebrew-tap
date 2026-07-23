class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.12"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.12/ork_darwin_arm64.tar.gz"
      sha256 "9cf5b06f8a0253ba42e450a07b54613ca619da054dbb3e09ac3f21406839266d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.12/ork_darwin_amd64.tar.gz"
      sha256 "8ea867c48a0a5016850ee23cee7be27a3c8ad031370df2d67cd930a24297e41e"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.12/ork_linux_arm64.tar.gz"
      sha256 "1e7caff9a76e9f27c6ad870dca7e08532ce4a3981709a9aabedc3eb286bd1d48"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.12/ork_linux_amd64.tar.gz"
      sha256 "ed50140bed375a3cb740281c71f03f349aa6d03f13575c213af7fd2d91313112"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
