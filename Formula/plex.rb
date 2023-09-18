class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "449d504846c18db3c122f926d3b11af807f2d7e5cd3ebb357e3a87d8e745df84"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Install Python dependencies, click, "plexapi",
    system "pip3", "install", "click", "plexapi", "keyrings.cryptfile", "pyperclip"
    # Install the script
    bin.install "plex" => "plex"
  end

  test do
    system false
  end
end
