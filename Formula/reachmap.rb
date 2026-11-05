class Reachmap < Formula
  desc "Shows which services on a host can be reached, from where, and why"
  homepage "https://github.com/MHusted01/reachmap"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.1.0/reachmap-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a28160c5d78d9a91a07ae8e83df77621cf9a101ceedc7cde39b717829d5dcfef"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.1.0/reachmap-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ef812dec57eb3a914bb9c04d02bb130c21a478d616b6e02dbc93b1bcc4776172"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.1.0/reachmap-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a063b3c9bcaba9ff01132ec5761580b4748c0d0a29ace71afef9e55ade87ad61"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.1.0/reachmap-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "429a2f0405ebfb510ecb60019a66f99542a4a0b60e1cd4f0eb0cfcf484aa74eb"
    end
  end

  def install
    bin.install "reachmap"
  end

  test do
    assert_equal "reachmap #{version}", shell_output("#{bin}/reachmap --version").strip
  end
end
