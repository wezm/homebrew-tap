# typed: false
# frozen_string_literal: true

class Rsspls < Formula
  desc "Generate RSS feeds from web pages"
  homepage "https://github.com/wezm/rsspls"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c2944f42dade7e2d16f1a556c8988b51cd6aaa86af8a30efaf330cca2a8f4207"

      def install
        bin.install "rsspls"
      end
    # elsif Hardware::CPU.arm?
    #   fail "sorry there's no arm mac build yet. See issue #9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "257def8cf893751c65c40b591564efab9c3c37ea9ec22d7665a354aa8a30ecaf"

      def install
        bin.install "rsspls"
      end
    # elsif Hardware::CPU.arm?
    #   fail "sorry there's no arm Linux build yet"
    end
  end
end
