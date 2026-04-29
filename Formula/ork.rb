class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.3/ork_darwin_arm64.tar.gz"
      sha256 "863b94bddb4aef766198863f12ce7222de1d008147a95b0be6ff1dc213d3be51"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.3/ork_darwin_amd64.tar.gz"
      sha256 "ebe080ae18d3505ed55cddeb7050c14e536f081cf1a8f0d99227d5c586b5cd46"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.3/ork_linux_arm64.tar.gz"
      sha256 "158bcacec5ff5713c80d9b39cfdd6ef0f5571f25bd3f223bc8ce9083211488b3"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.3/ork_linux_amd64.tar.gz"
      sha256 "dccb0088ee42d472f6e777b2accd7edd3de61c9befc377c63a5299f85531101a"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
