class Nanite < Formula
  desc "Manage local repositories in an AI-first workspace"
  homepage "https://github.com/icepuma/nanite"
  version "0.1.2"
  license "MIT"

  depends_on "fzf"
  uses_from_macos "git"

  on_macos do
    on_arm do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.2/nanite-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "7d762b6babc92a2177f180a336f2c19a1313883316ab2cab8ced26280e45fca4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.2/nanite-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91d17df23bbd403cb3794ad4d5917efa685ba5fb5442481f7a71867be49779fa"
    end

    on_intel do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.2/nanite-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b55f67de71d375d8b0b893e12d14581524a68c34b23f4fc5bea1757f4c7c07c7"
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
