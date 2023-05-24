class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "cb27c5ef7384cff289891497bd6a54f5f6ad01ba441b07bd5d1d5e93d1b2fb15"
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
