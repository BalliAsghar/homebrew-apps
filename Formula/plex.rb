class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v2.0.6.tar.gz"
  sha256 "760f44e65df5ea0ef77975483dc2cc619f96f29cc3c67bc19aa768679501af89"
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
