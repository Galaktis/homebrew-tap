# Homebrew formula for Galaktis/homebrew-tap (`brew install galaktis/tap/eridu`).
# A template: `.github/workflows/publish.yml` fills in the version and checksums from the
# published release and pushes the result to the tap as `Formula/eridu.rb`.
class Eridu < Formula
  desc "Epic of your Repository: a 3D Git history visualizer"
  homepage "https://eridu.galaktis.eu"
  version "0.1.1"
  license "MIT"

  on_macos do
    # One universal binary for Apple silicon and Intel.
    url "https://github.com/Galaktis/eridu/releases/download/v0.1.1/eridu-0.1.1-macos-universal.tar.gz"
    sha256 "8edb2ae45f806ddad8ac5a82af1ae11873529427f9536704d344520d8e009b7d"
  end

  on_linux do
    on_intel do
      url "https://github.com/Galaktis/eridu/releases/download/v0.1.1/eridu-0.1.1-linux-x86_64.tar.gz"
      sha256 "ba67ff12f660819729a3ecf1083c7fccecf39ea4a05354235004833802493ede"
    end
  end

  depends_on "git"

  def install
    bin.install "eridu"
  end

  test do
    assert_match "Usage: eridu", shell_output("#{bin}/eridu --help")
  end
end
