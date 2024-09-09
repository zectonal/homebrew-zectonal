class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.15.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.6/zc_0.15.6_macos.zip"
      sha256 "006ee159b0ad6244e35661938506a4ee6945f4aedb5f86f63eae1237e9382a05"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.6/zc_0.15.6_macos_x86.zip"
      sha256 "d040f8f99179a62f07d7662076bdeff627555f13820e45cc28d11b22ef68b01b"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end