class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_darwin_arm64.tar.gz"
      sha256 "9ac92ec6888c53ea4d5e7d18a20ea204e4592914efd1808b199282f3e58739b2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_darwin_amd64.tar.gz"
      sha256 "33f68344aba4d125c54e955019fbe0b72ac328d8cc8e1cdf4ce2269b3fd66b3a"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_linux_arm64.tar.gz"
      sha256 "f0a732d29c7fe6f8466ddc8d2c6755833e0a8d92b2705e2de3edea3aebe12c4e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_linux_amd64.tar.gz"
      sha256 "0f5ef0483aeb150cf671dc083774176b952bbee1775ccf6899472cf961938063"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
