class Killport < Formula
  desc "Kill a process running on a specific port"
  homepage "https://github.com/BalliAsghar/killport"
  url "https://github.com/BalliAsghar/killport/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "a156d6ef69eaf0355d70c704f4660ed53f9201b4"
  license "MIT"

  def install
    bin.install "killport"
  end

  test do
    assert_match "Invalid port number: abc", shell_output("#{bin}/killport abc 2>&1", 1)
  end
end
