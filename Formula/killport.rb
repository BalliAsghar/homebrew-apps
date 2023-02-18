class Killport < Formula
  desc "Kill a process running on a specific port"
  homepage "https://github.com/BalliAsghar/killport"
  url "https://github.com/BalliAsghar/killport/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "a9dd7a977a241c2d8b2706146ab36997e76eae47aef4221c3f9a601a05004c90"
  license "MIT"

  def install
    bin.install "killport"
  end

  test do
    assert_match "Invalid port number: abc", shell_output("#{bin}/killport abc 2>&1", 1)
  end
end
