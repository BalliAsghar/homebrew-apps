class pc < Formula
  desc "partial clone Git repository"
  homepage "https://github.com/BalliAsghar/partial-clone"
  url "https://github.com/BalliAsghar/partial-clone/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2240c1da5949b270b10a8e1905c08b24a7beaef8d9230af0197291e0bfc835cc"
  license "MIT"

  def install
    bin.install "pc"
  end

  test do
    system "false"
  end
end
