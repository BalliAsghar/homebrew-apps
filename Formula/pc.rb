class Pc < Formula
  desc "partial clone Git repository"
  homepage "https://github.com/BalliAsghar/partial-clone"
  url "https://github.com/BalliAsghar/partial-clone/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "34e973b1b278ecb03d5379f18602990cbf6901b425ab8eb4204c6e60fac2069b"
  license "MIT"

  def install
    bin.install "pc"
  end

  test do
    system "false"
  end
end
