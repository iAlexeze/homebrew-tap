class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.2/orkcc_darwin_arm64.tar.gz"
      sha256 "d5b4ab5429738de4438c09c55595d1e345087856d47170035a07d0cf83d10caa"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.2/orkcc_darwin_amd64.tar.gz"
      sha256 "b0e5b859d5db32c197fc24a55657177840bb3d7b2630f15faeba73dbe7e319ac"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.2/orkcc_linux_arm64.tar.gz"
      sha256 "25686c30ef37fb38193bd6e7ed56d9449015d6f50ecaa2ae6794a435a24b6579"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.2/orkcc_linux_amd64.tar.gz"
      sha256 "039a7029e83b0315a340b510f39536428f8bf58ee8364aa3f8c5f002a286d304"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
