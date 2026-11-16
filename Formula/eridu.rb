# Homebrew formula for Galaktis/homebrew-tap (`brew install galaktis/tap/eridu`).
# A template: `.github/workflows/publish.yml` fills in the version and checksums from the
# published release and pushes the result to the tap as `Formula/eridu.rb`.
class Eridu < Formula
  desc "Epic of your Repository: a 3D Git history visualizer"
  homepage "https://eridu.galaktis.eu"
  version "0.1.2"
  license "MIT"

  on_macos do
    # One universal binary for Apple silicon and Intel.
    url "https://github.com/Galaktis/eridu/releases/download/v0.1.2/eridu-0.1.2-macos-universal.tar.gz"
    sha256 "f68fc78c0264c37cc6e67a06d147d987a215aa0aa6a1eac3c31f2bc0e32ead82"
  end

  on_linux do
    on_intel do
      url "https://github.com/Galaktis/eridu/releases/download/v0.1.2/eridu-0.1.2-linux-x86_64.tar.gz"
      sha256 "31da70e970a6c5e903f456387b8cb3f8f2b7bac33d785b75fb4d949a9e76ac1e"
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
