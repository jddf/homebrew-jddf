class JddfCodegen < Formula
  desc "A CLI tool which generates data structures (i.e. structs, classes, interfaces, etc.) from JDDF schemas"
  homepage "https://github.com/jddf/jddf-codegen"
  url "https://github.com/jddf/jddf-codegen/archive/v0.1.1.tar.gz"
  head "https://github.com/jddf/jddf-codegen.git"
  sha256 "fb56eb150ac542e94a8234638e2142007a6cd7e7d42378904d61201c1d465d62"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/jddf-codegen", "--help"
  end
end
