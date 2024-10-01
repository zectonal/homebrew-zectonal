class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.17.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.2/zc_0.17.2_macos.zip"
      sha256 "19f727fc1ab57fb0e86914ab9eb815a34a160e35e03c0f3e7126cab9784d1d01"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.2/zc_0.17.2_macos_x86.zip"
      sha256 "dff4942fb85b015f05e0416785e3319a63d0b5ca3d6903edb355d09d0f44bd9e"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end