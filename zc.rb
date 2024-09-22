class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.16.0/zc_0.16.0_macos.zip"
      sha256 "ffbede9b9ace07a20ca9dbfcdc7e440659b86b36271ffa19164c40d62bc3a164"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.16.0/zc_0.16.0_macos_x86.zip"
      sha256 "ed0d292294bb0209b408ca1aac38a8677f3b7106813dac3b0f5137d4d94992bf"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end