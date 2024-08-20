class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.15.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.4/zc_0.15.4_macos.zip"
      sha256 "3b4d9296520628925050f76521870072395424da0f407748f9246c6560ba4b29"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.4/zc_0.15.4_macos_x86.zip"
      sha256 "1b129a29535966ebf032f638b56ade88276e352eb768de45f75cd83553d6d077"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end