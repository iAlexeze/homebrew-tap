class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/orkcc_darwin_arm64.tar.gz"
      sha256 "2566d83b6a19ed28ea602f39f9f4be1841a4168cb67e7975b952d06410579521"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/orkcc_darwin_amd64.tar.gz"
      sha256 "b6ad89a2b1e6ec4ee9b8f7507ee9c60768c14319441e29a1ae905e3488527a75"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/orkcc_linux_arm64.tar.gz"
      sha256 "818aa1786ce76bb8216ec2c3fa4bcb9976488892d9b0304ec0d3a3370b2642da"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/orkcc_linux_amd64.tar.gz"
      sha256 "550bab47b041b61f1b446f88f459c62b764db40a66bc5ea5d8b4eb3849e9c661"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
