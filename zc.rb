class Zc < Formula
  desc "command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.1/zc_0.15.1_macos.zip"
  sha256 "f18471e6ae9f78d34c2f2ccba27a3a7c175615c99b3f3b5ea150d5c2b6f9cacc" 
  version "0.15.1"

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end
