class Reachmap < Formula
  desc "Shows which services on a host can be reached, from where, and why"
  homepage "https://github.com/MHusted01/reachmap"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.4.0/reachmap-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "13683a4f80be28f9c281df613e18b01a2ee4e780b5e741d85bba648844ce72bc"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.4.0/reachmap-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "b12ae3491cc377c2540cb9d68a31dbca67e88e26b2422f1958e7f1b18913ee01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.4.0/reachmap-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e31c7b5536e4aaf332d9bb4478b7cede3ca9d296cac84551bd5f3fbb099d5a65"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.4.0/reachmap-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e9dffa76e52fd8ccb44290deadd1f1e8fac610c7c435cc18b5eaa53c8f0ba4f"
    end
  end

  def install
    bin.install "reachmap"
  end

  test do
    assert_equal "reachmap #{version}", shell_output("#{bin}/reachmap --version").strip
  end
end
