# typed: false
# frozen_string_literal: true

class Rsspls < Formula
  desc "Generate RSS feeds from web pages"
  homepage "https://github.com/wezm/rsspls"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.intel? || Hardware::CPU.arm?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-universal-apple-darwin.tar.gz"
      sha256 "3898ac570855b932217eddb7b6a50aa2eac31138043db0a92a9d5f1467568bca"

      def install
        bin.install "rsspls"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20e7fce366f72f02b12f380a119814a6e208684d855f5c32868528b61f31137e"

      def install
        bin.install "rsspls"
      end
    # elsif Hardware::CPU.arm?
    #   fail "sorry there's no arm Linux build yet"
    end
  end
end
