class Killport < Formula
  desc "Kill a process running on a specific port"
  homepage "https://github.com/BalliAsghar/killport"
  url "https://github.com/BalliAsghar/killport/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "1686f8b58f3cf318fae39f85ff2e1c7d04a3d4d0fd6a863767a8205224b0585a"
  license "MIT"

  def install
    bin.install "killport"
  end

  test do
    assert_match "Invalid port number: abc", shell_output("#{bin}/killport abc 2>&1", 1)
  end
end
