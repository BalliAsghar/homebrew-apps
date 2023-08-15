class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v2.0.8.tar.gz"
  sha256 "44a9b09c7f9a5a6209bcf172c598f976cc3cc49fd281fab2638cec31c0ad0f70"
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
