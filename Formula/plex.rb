class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v3.0.2.tar.gz"
  sha256 "fdb9dbcb87d4a99e4da8c2431d33dd099ea49ee9aa43f2e52b8ab89450aa3b55"
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
