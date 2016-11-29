class PrefixChange < Formula
  desc "Rename prefix of iOS classes"
  homepage "https://github.com/ivanzoid/prefixChange"
  url "https://github.com/ivanzoid/prefixChange/archive/1.0.0.zip"
  sha256 ""

  def install
    bin.install "prefixChange"
  end

  test do
    system "#{bin}/prefixChange"
  end
end