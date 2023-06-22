class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v2.0.4.tar.gz"
  sha256 "d9ed21713c3e14c735d5cb192b939e53f3832c4e87266f53f7e356f771114ca0"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Install Python dependencies, click, "plexapi",
    system "pip3", "install", "click", "plexapi", "keyrings.cryptfile"
    # Install the script
    bin.install "plex" => "plex"
  end

  test do
    system false
  end
end
