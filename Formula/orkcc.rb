class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/iAlexeze/orkestra"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm   do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.3/orkcc_darwin_arm64.tar.gz"
      sha256 "9c0d5dc7153344e5645b1e00890a85be8d52a92fb3549c204669aab5ea7920af"
    end
    on_intel do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.3/orkcc_darwin_amd64.tar.gz"
      sha256 "a3e54573cdbeef707d75131d264971adbbe45c7926cdddd7d735140433a7724a"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.3/orkcc_linux_arm64.tar.gz"
      sha256 "5ba0f8a796063562c6fbd7c368e839015dd21d0ea2541eab2d879540b7c92823"
    end
    on_intel do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.3/orkcc_linux_amd64.tar.gz"
      sha256 "05a545fa6211337b98ddce51a3327e121904513bd0c43885905a5688a6c35019"
    end
  end

  def install
    bin.install "orkcc"
  end

  test do
    system "#{bin}/orkcc", "--help"
  end
end
