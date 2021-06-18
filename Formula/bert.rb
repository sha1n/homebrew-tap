# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bert < Formula
  desc "CLI benchmarking tool"
  homepage "https://sha1n.github.io/bert/"
  version "2.3.6"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "http://github.com/sha1n/bert/releases/v2.3.6/bert_2.3.6_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "f790bf02c56ad356f120bb3d238b0df376476969523060202810e39ce44dd62f"
    end
    if Hardware::CPU.arm?
      url "http://github.com/sha1n/bert/releases/v2.3.6/bert_2.3.6_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "5877e3e4020285e226999a9d680a9a3f5cc40ba1d16be1e7c1b97a28c64cfa27"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://github.com/sha1n/bert/releases/v2.3.6/bert_2.3.6_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "e71e9695be881f5a0f7bcdadac621a02e0658c12ef452d490bfd71d213b12c73"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "http://github.com/sha1n/bert/releases/v2.3.6/bert_2.3.6_Linux_armv6.tar.gz", :using => CurlDownloadStrategy.
      sha256 "7e53ba2afe2f89f9c4c8b6b2cb0ab86d46c8a89259f8ee43e8ec4a721235ec94"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/sha1n/bert/releases/v2.3.6/bert_2.3.6_Linux_arm64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "420340ea8e5971f15b34f99e87d3a0c9a86a9ecc0bcd3863d9c5ac77581e6259"
    end
  end

  def install
    bin.install "bert"
  end

  test do
    system "#{bin}/bert --version"
  end
end
