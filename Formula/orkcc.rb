class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_darwin_arm64.tar.gz"
      sha256 "f7bebebd469c6b2ac7efc02b3389b547b4ef72bd99a7006eab372ec4de5d9b24"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_darwin_amd64.tar.gz"
      sha256 "7f4fb8e83e4d77a395277d414293e075b6cf46825c2ca57a5daddafa9b90b3f6"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_linux_arm64.tar.gz"
      sha256 "c33b261feb8605fb68b417e62f6c3489b70b479efb820c88f1d58b37501e0c9f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_linux_amd64.tar.gz"
      sha256 "a21136618b0f94b531737f29f99b227ab92af6a432ef65a8940f83c56e5a43a5"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
