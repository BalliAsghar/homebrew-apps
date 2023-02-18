class Killport < Formula
  desc "Kill a process running on a specific port"
  homepage "https://github.com/BalliAsghar/killport"
  url "https://github.com/BalliAsghar/killport/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "9acb69c258d10626cb250be43830e0c846177270"
  license "MIT"

  def install
    bin.install "killport.sh" => "killport"
  end

  test do
    assert_match "Invalid port number: abc", shell_output("#{bin}/killport abc 2>&1", 1)
  end
end
