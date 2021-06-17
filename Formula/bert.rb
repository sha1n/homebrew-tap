class Bert < Formula
  desc "CLI benchmarking tool"
  homepage "https://sha1n.github.io/bert/"
  url "https://github.com/sha1n/bert/archive/refs/tags/v2.3.4.tar.gz"
  sha256 "6ddf9d3a13ba5593ff6b28d1abb35f49d7cfcc064833a4407e6ce50a477c55ee"
  license "MIT"

  depends_on "go" => :build
  depends_on "make" => :build

  def install
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    system make go-build-current
    bin.install "bin/bert" => "bert"
  end

  test do
    system "false"
  end
end
