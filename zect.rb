class Zect < Formula
  desc "zect data quality monitoring and AI-derived root cause analysis"
  homepage "https://www.zectonal.com"
  url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.0/zect_0.15.0_macos.zip"
  sha256 "9db7d2d35fb8ab4c7bf72a0022f1e8884a723a757fa1a25687caf28efb8625a4"
  version "0.15.0"

  def install
    bin.install "zect"
  end

  service do
    run [opt_bin/"zect", "run"]
    keep_alive true
    working_dir var
    log_path var/"log/zect.log"
    error_log_path var/"log/zect.error.log"
  end
  def caveats
    <<~EOS
      To completely remove Zect and all its data, run:
        brew uninstall zect
        rm -rf #{var}/log/zect*
        rm -rf ~/.config/zect
    EOS
  end
  def post_uninstall
    rm_rf var/"log/zect*"
    rm_rf "~/.config/zect"
  end
  test do
    system "#{bin}/zect", "--version"
  end
end