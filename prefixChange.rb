class PrefixChange < Formula
  desc "Rename prefix of iOS classes"
  homepage "https://github.com/ivanzoid/prefixChange"
  url "https://github.com/ivanzoid/prefixChange/archive/1.0.0.zip"
  sha256 "13a185ae1b1dd779c20011a44b423723c616c5aefda73b50f6845d57fbe73db4"

  def install
    bin.install "prefixChange"
  end

  test do
    system "#{bin}/prefixChange"
  end
end