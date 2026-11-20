class Reachmap < Formula
  desc "Shows which services on a host can be reached, from where, and why"
  homepage "https://github.com/MHusted01/reachmap"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.3.0/reachmap-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "5b3ffdfe7482e4c14e111da18bddc6fb296d8528c6ff1a397992e447d24b0424"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.3.0/reachmap-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "25d963beb9f6a8ef18ab696a3890a106ac16329424be69889c34db6a617b6e87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.3.0/reachmap-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8077d29d4f4944bfd0c56130c6bfda18487414daa4f2df18ee38488b7511a14"
    end
    on_intel do
      url "https://github.com/MHusted01/reachmap/releases/download/v0.3.0/reachmap-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a2e78ab45e9a8df643857ef2a819d6e595073d56a60b3256b00720b239c8f3b0"
    end
  end

  def install
    bin.install "reachmap"
  end

  test do
    assert_equal "reachmap #{version}", shell_output("#{bin}/reachmap --version").strip
  end
end
