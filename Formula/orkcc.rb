class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/orkcc_darwin_arm64.tar.gz"
      sha256 "1b55a5816ba3bda060ddf810929f0cdf7ee29f61f4273fcdf92baa709181ec26"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/orkcc_darwin_amd64.tar.gz"
      sha256 "691c9f3a14f27662ee2825d30ca06635eba233fe920277058e47993bb91a653b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/orkcc_linux_arm64.tar.gz"
      sha256 "61c7724ce87e1c328b3421aa7578ff8e4bf276e90b63de99a28eac1804a1fd70"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/orkcc_linux_amd64.tar.gz"
      sha256 "fbf5d4066004f78abc67fefba0b87ec2a4a31e4e3fac6ec1691c7919dd142f41"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
