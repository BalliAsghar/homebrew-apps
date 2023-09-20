class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "445725aeb79e735101d9f8874affccb5985d94620b4ba0e6db1b282a424d0828"
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
