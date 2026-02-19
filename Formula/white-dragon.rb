class WhiteDragon < Formula
  desc "Lightweight macOS CLI tool for drag-and-drop from terminal"
  homepage "https://github.com/Dimfred/white-dragon"
  url "https://github.com/Dimfred/white-dragon/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "87437fadf94fa2ca900277be047b7107c47fc7ce5b0a023a0f8b2ae4e5430416"
  license "MIT"

  depends_on :macos
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "white-dragon", shell_output("#{bin}/white-dragon --help")
  end
end
