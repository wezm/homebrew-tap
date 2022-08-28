# typed: false
# frozen_string_literal: true

class Rsspls < Formula
  desc "Generate RSS feeds from web pages"
  homepage "https://github.com/wezm/rsspls"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "13c8e682691c4b288b3209a17549c418805d6b71895b14299f9cd9298e1f068a"

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
      sha256 "0740d51dacea7d009b716896f2fb89592ae48763c0381537f0220f7bc156fa63"

      def install
        bin.install "rsspls"
      end
    # elsif Hardware::CPU.arm?
    #   fail "sorry there's no arm Linux build yet"
    end
  end
end
