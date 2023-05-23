class Plex < Formula
  desc "Download Media from Plex"
  homepage "https://github.com/BalliAsghar/DownPlex"
  url "https://github.com/BalliAsghar/DownPlex/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "b508f2ce7ee7a755236276c70896531162c8745d75766081ebef0c43bb396a0e"
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