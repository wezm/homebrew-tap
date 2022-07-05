# typed: false
# frozen_string_literal: true

class Rsspls < Formula
  desc "Generate RSS feeds from web pages"
  homepage "https://github.com/wezm/rsspls"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e9029a4a77783f179b8ada655a2ae0d683a2fa75755687f1aa61fcff722a88ee"

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
      sha256 "05f6760a40115fdd96aece8a1d029a988778b56dd03560891676ca22fb7122e0"

      def install
        bin.install "rsspls"
      end
    # elsif Hardware::CPU.arm?
    #   fail "sorry there's no arm Linux build yet"
    end
  end
end
