# typed: false
# frozen_string_literal: true

class Rsspls < Formula
  desc "Generate RSS feeds from web pages"
  homepage "https://github.com/wezm/rsspls"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.intel? || Hardware::CPU.arm?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-universal-apple-darwin.tar.gz"
      sha256 "8eb6c788f600301aac45a5ce582d507a29ddc1f4a517e5b81b3e232304bec5af"

      def install
        bin.install "rsspls"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "22a52d5f9a9e41bc5111277fca600884eeb68c522b58d8a657ac996c8fc72186"

      def install
        bin.install "rsspls"
      end
    # elsif Hardware::CPU.arm?
    #   fail "sorry there's no arm Linux build yet"
    end
  end
end
