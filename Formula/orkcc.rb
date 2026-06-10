class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.5"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.5/orkcc_darwin_arm64.tar.gz"
      sha256 "ca35bb1468a90cda9999b4ff43f986efb8db302147e109601e3951ab9a34846e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.5/orkcc_darwin_amd64.tar.gz"
      sha256 "498ad638c6d1d5fad3a6cfbd40e56bc86f06eb36505ba18452915334c683869c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.5/orkcc_linux_arm64.tar.gz"
      sha256 "6d9dbba683f602ce8fd0971169f75508de91c098628e164ac16f7b779e04280f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.5/orkcc_linux_amd64.tar.gz"
      sha256 "1d1f3a48cb7026451eb55f76242915b88a0e90095dd55b539cc0f858c6a48857"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
