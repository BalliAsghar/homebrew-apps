class Killport < Formula
  desc "Kill a process running on a specific port"
  homepage "https://github.com/BalliAsghar/killport"
  url "https://github.com/BalliAsghar/killport/archive/refs/tags/v2.1.1.tar.gz"
  sha256 "548a9c26f07cd6b18090ee8bd82e23fa3f74b7b576c027a76294877d8682625d"
  license "MIT"

  def install
    bin.install "killport"
  end

  test do
    assert_match "Invalid port number: abc", shell_output("#{bin}/killport abc 2>&1", 1)
  end
end
