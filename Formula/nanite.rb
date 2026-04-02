class Nanite < Formula
  desc "Manage local repositories in an AI-first workspace"
  homepage "https://github.com/icepuma/nanite"
  license "MIT"

  depends_on "fzf"
  uses_from_macos "git"

  on_macos do
    on_arm do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.3/nanite-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "3fd873e53906080bfcf044bb674382e026671400cc08864735a2b53c3fadff44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.3/nanite-v0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f64132668c2bd2e5369c4014a0d6be78c95ee33408d909f73429b93e4c7a8ed"
    end

    on_intel do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.3/nanite-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bcc68cf2bc0f17e4a2a177515e27163dfc4c77f4765d80758ca047bcb71c4a62"
    end
  end

  def install
    bin.install "nanite"
    doc.install "README.md"
  end

  test do
    assert_match "nanite #{version}", shell_output("#{bin}/nanite --version")
  end
end
