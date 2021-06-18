class Bert < Formula
  BERT_VERSION = "v2.3.5".freeze
  BERT_BUILD = "4fc18e7914ab4373a3d71233c12bbf12e513d408".freeze
  BERT_SHA256 = "7418bb86fdc30f2a9b7cc08e2c6b97dbd08387efaed26c8322a27d58f8e4e843".freeze

  desc "CLI benchmarking tool"
  homepage "https://sha1n.github.io/bert/"
  url "https://github.com/sha1n/bert/archive/refs/tags/#{BERT_VERSION}.tar.gz"
  sha256 BERT_SHA256.to_s
  license "MIT"

  depends_on "go" => :build
  depends_on "make" => :build

  def install
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    ENV["VERSION"] = BERT_VERSION
    ENV["BUILD"] = BERT_BUILD

    system "make", "go-build-current"
    bin.install "bin/bert" => "bert"
  end

  test do
    system "bert", "--version"
  end
end
