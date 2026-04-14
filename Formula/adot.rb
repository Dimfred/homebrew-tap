class Adot < Formula
  desc "A minimal dotfile manager"
  homepage "https://github.com/Dimfred/adot"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dimfred/adot/releases/download/v0.1.13/macos-adot-v0.1.13-arm64"
      sha256 "14a6de53afcf0f1e561b92808742e4a055afef8f125af2153a4a587612101950"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Dimfred/adot/releases/download/v0.1.13/linux-adot-v0.1.13-x86_64"
      sha256 "e507ee9f3efbf62cb5a22e66ac176801434d3c4117ac3cb38af52150c68a6915"
    end
  end

  def install
    bin.install Dir["*"].first => "adot"
  end

  test do
    assert_match "adot", shell_output("#{bin}/adot --help")
  end
end
