class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.16.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.16.2/zc_0.16.2_macos.zip"
      sha256 "333fd0106b6c530b2bc756f00266f631fbd8ff4fac95d66a0734c51640fa3a7b"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.16.2/zc_0.16.2_macos_x86.zip"
      sha256 "877f4e3f22f3e3ef53c765adb71cf12cd1f9d3abea2011a498da52f6d2d31fca"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end