class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "ab455896dd7c969f8739e5f21c88fb57ab2d95c3296884d46cfb8c2e20606c0d"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Install Python dependencies, click, "plexapi",
    system "pip3", "install", "click", "plexapi"
    # Install the script
    bin.install "plex" => "plex"
  end

  test do
    system false
  end
end