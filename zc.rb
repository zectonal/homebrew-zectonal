class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.15.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.2/zc_0.15.2_macos.zip"
      sha256 "3ea31452bb29fbaebfd606de671968ed3acf86faf8a2ef47a0fe63890e173e8f"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.2/zc_0.15.2_macos_x86.zip"
      sha256 "c02be7205f04483f2a221fc25c9da189c41fec0d2fb2720d4107d83b6918c339"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end