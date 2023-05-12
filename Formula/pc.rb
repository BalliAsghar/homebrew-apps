class pc < Formula
  desc "partial clone Git repository"
  homepage "https://github.com/BalliAsghar/partial-clone"
  url "https://github.com/BalliAsghar/partial-clone/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "6bbad940c1729913e658d07758b93a564b03d327ec8dcf1cf75281291b2d41c3"
  license "MIT"

  def install
    bin.install "pc"
  end

  test do
    system "false"
  end
end
