class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "ee53d86a8d8516bc21963aa0dffb1027035d549886dc6f4b8fa05fefa93accf3"
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
