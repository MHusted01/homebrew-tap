class Reachmap < Formula
  desc "Shows which services on a host can be reached, from where, and why"
  homepage "https://github.com/MHusted01/reachmap"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.5.0/reachmap-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2e93f115fc52aaf423b490d86d2bb45f1407bcd27edc7fb1fd15d79ff97de338"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.5.0/reachmap-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "028e74ecf53fda32ae9a1d80c3e8b250e892f42d35172878aa65691c1cc63372"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.5.0/reachmap-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "933f677883fe7eaed0228066c0b8661e6af97182eecf9479f9c8257a2f089697"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.5.0/reachmap-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9849fbfbf6385ff1f794b32f3a708c35e87107c6e6c98507edf00c3d24f625d"
    end
  end

  def install
    bin.install "reachmap"
  end

  test do
    assert_equal "reachmap #{version}", shell_output("#{bin}/reachmap --version").strip
  end
end
