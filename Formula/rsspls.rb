# typed: false
# frozen_string_literal: true

class Rsspls < Formula
  desc "Generate RSS feeds from web pages"
  homepage "https://github.com/wezm/rsspls"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.intel? || Hardware::CPU.arm?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-universal-apple-darwin.tar.gz"
      sha256 "6800be3c157218c887f0ee3fbc388c2cd13407922f3af8608a796b188f5c9c59"

      def install
        bin.install "rsspls"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7be304ef7bdd85f45faa16000cea8f2e212cb4c8ac873c3ad804999e183af474"

      def install
        bin.install "rsspls"
      end
    # elsif Hardware::CPU.arm?
    #   fail "sorry there's no arm Linux build yet"
    end
  end
end
