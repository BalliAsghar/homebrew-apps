class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://example.com/plex-1.0.0.tar.gz"
  sha256 "eafee04534133aeffac35cdc65724a6491a4427196a42c230e6dc618812a99a0"
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