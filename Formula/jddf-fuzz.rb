class JddfFuzz < Formula
  desc "A CLI tool that generates random JSON values from a JDDF schema"
  homepage "https://github.com/jddf/jddf-fuzz"
  url "https://github.com/jddf/jddf-fuzz/archive/v0.1.0.tar.gz"
  head "https://github.com/jddf/jddf-fuzz.git"
  sha256 "051f4010485c5708a9db55834b47169f2b0916c42483c380b8ae0d2bde3973c0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/jddf-fuzz", "--help"
  end
end
