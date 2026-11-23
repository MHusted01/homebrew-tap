class Reachmap < Formula
  desc "Shows which services on a host can be reached, from where, and why"
  homepage "https://github.com/MHusted01/reachmap"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.6.0/reachmap-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "15046713b5b4ceb004397868ecb85d36f50d75301e14510ed188dab706ccf669"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.6.0/reachmap-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "0537d6e687810c7885b8fb8649e3aa326a4930b915a5846bbe0ebc33b5bd7ee3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.6.0/reachmap-0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9eff00b11d1224b0a8968e5a1b95eee5def1861b50838ffff6352ada457c8939"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.6.0/reachmap-0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da07edd7a8be9d3d4f89ba4376750a11f9467ec17fba04da11881ebe6611828a"
    end
  end

  def install
    bin.install "reachmap"
  end

  test do
    assert_equal "reachmap #{version}", shell_output("#{bin}/reachmap --version").strip
  end
end
