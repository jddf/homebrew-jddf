class JddfInfer < Formula
  desc "A CLI tool that infers JDDF schemas from example JSON values"
  homepage "https://github.com/jddf/jddf-infer"
  url "https://github.com/jddf/jddf-infer/archive/v0.1.0.tar.gz"
  head "https://github.com/jddf/jddf-infer.git"
  sha256 "44561d8a041d15787448cd5564febea2d6c7079e6ea4ec5d70382bb58fb3d1b1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/jddf-infer", "--help"
  end
end
