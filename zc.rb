class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.15.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.5/zc_0.15.5_macos.zip"
      sha256 "a15971f69b90a4ddd8fb9abd0e3b363df2328aa34f48ca44a5ada4984e0f114c"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.5/zc_0.15.5_macos_x86.zip"
      sha256 "da91afbda64296642e9a16089dd6eb1f90029aa5a871b70c5f7fb52ed00898d3"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end