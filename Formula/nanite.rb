class Nanite < Formula
  desc "Manage local repositories in an AI-first workspace"
  homepage "https://github.com/icepuma/nanite"
  license "MIT"

  depends_on "fzf"
  uses_from_macos "git"

  on_macos do
    on_arm do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.6/nanite-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "cfebc20c5faf44c3da7b284efa2e4685aa08e815c0c120475146380c1985858c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.6/nanite-v0.1.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b1660c807a08f228487f68b461c6ee3cdec63e50bd2f57370a61dd2b1d9f2b63"
    end

    on_intel do
      url "https://github.com/icepuma/nanite/releases/download/v0.1.6/nanite-v0.1.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee6be92461da1ad80524990e0466b4a117b9a263c8fe763c9d8cb7c2e4561cd2"
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
