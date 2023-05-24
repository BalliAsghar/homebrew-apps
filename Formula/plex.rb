class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "d654db24cb0d97b31c06deec34fb867fd7524e254b257be492aa26dabe68db39"
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
