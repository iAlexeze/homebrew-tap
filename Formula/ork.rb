class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_arm64.tar.gz"
      sha256 "cbf0bdeb9a0b2ca1916e2844daf88b5f9f8bb39107b14833c2946f020b90d331"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_amd64.tar.gz"
      sha256 "a2103d167458d4eb748b29d2d5363e0c7ba9271a4e7aea4f9d2fcae958bff844"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_arm64.tar.gz"
      sha256 "206fb44d59f4bfd86024dd36216b6a12a7a7728c25dd0cdbde32a7cd8fd541b6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_amd64.tar.gz"
      sha256 "05f6fedde7134f835f56644dafc6d5da637269d547bc1e63043378e4f8e41ab6"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
