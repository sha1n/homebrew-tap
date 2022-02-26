# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hako < Formula
  desc "CLI benchmarking tool"
  homepage "https://sha1n.github.io/hako/"
  version "0.6.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sha1n/hako/releases/download/v0.6.7/hako_0.6.7_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "8151d5618849ce99dde5b9ef471504fdf0d680b53eb02b74082cf807a1a09a01"

      def install
        bin.install "hako"
        bash_completion.install "completions/hako.bash" => "hako"
        fish_completion.install "completions/hako.fish" => "hako"
        zsh_completion.install "completions/_hako" => "_hako"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sha1n/hako/releases/download/v0.6.7/hako_0.6.7_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "7b32c23d67077d159ea86a05759d5651cfd99f65531bca1444ff3835c58f2023"

      def install
        bin.install "hako"
        bash_completion.install "completions/hako.bash" => "hako"
        fish_completion.install "completions/hako.fish" => "hako"
        zsh_completion.install "completions/_hako" => "_hako"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sha1n/hako/releases/download/v0.6.7/hako_0.6.7_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a2d0c24df16d0bb9f3029dfada1ff65e2819685cc5a14083988495620834da52"

      def install
        bin.install "hako"
        bash_completion.install "completions/hako.bash" => "hako"
        fish_completion.install "completions/hako.fish" => "hako"
        zsh_completion.install "completions/_hako" => "_hako"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sha1n/hako/releases/download/v0.6.7/hako_0.6.7_Linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "f2ddb51c62bda93cb11147341aaf3df1eef226c00a63435b0682673a59d6abe7"

      def install
        bin.install "hako"
        bash_completion.install "completions/hako.bash" => "hako"
        fish_completion.install "completions/hako.fish" => "hako"
        zsh_completion.install "completions/_hako" => "_hako"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sha1n/hako/releases/download/v0.6.7/hako_0.6.7_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d37035d09534d000317e933bbcf8062287eac2a48dbfeba3a03555d4d97b2c91"

      def install
        bin.install "hako"
        bash_completion.install "completions/hako.bash" => "hako"
        fish_completion.install "completions/hako.fish" => "hako"
        zsh_completion.install "completions/_hako" => "_hako"
      end
    end
  end

  test do
    system "#{bin}/hako --version"
  end
end
