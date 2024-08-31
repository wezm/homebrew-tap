# typed: false
# frozen_string_literal: true

class Rsspls < Formula
  desc "Generate RSS feeds from web pages"
  homepage "https://github.com/wezm/rsspls"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.intel? || Hardware::CPU.arm?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-universal-apple-darwin.tar.gz"
      sha256 "f2ce6c795e0a30548d40664c464dd0f08a3bd501014d1945360f6b993720b0a8"

      def install
        bin.install "rsspls"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b95bdecee0f0e39609bf0cb60843fb0a55765b954b93effab1fb3bad274e9dba"

      def install
        bin.install "rsspls"
      end
    elsif Hardware::CPU.arm?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c5b5b04c6a93bf81581c5f249d9c4e7fd5ccfea2e7ede540b1fcb9ed7b35dbe"

      def install
        bin.install "rsspls"
      end
    end
  end
end
