class Killport < Formula
  desc "Kill a process running on a specific port"
  homepage "https://github.com/BalliAsghar/killport"
  url "https://github.com/BalliAsghar/killport/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "52883eca3cca97b46e0413c21f879ad02a2f3369e3fea1e458ab1c267ba3dea8"
  license "MIT"

  def install
    bin.install "killport"
  end

  test do
    assert_match "Invalid port number: abc", shell_output("#{bin}/killport abc 2>&1", 1)
  end
end
