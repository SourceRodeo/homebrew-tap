# typed: false
# frozen_string_literal: true

class Projector < Formula
  desc "Private context sync and restore CLI"
  homepage "https://github.com/SourceRodeo/projector"
  version "0.2.3"

  archive = on_system_conditional(
    macos: on_arch_conditional(
      arm: "projector-cli-aarch64-apple-darwin.tar.xz",
      intel: "projector-cli-x86_64-apple-darwin.tar.xz",
    ),
    linux: on_arch_conditional(
      arm: "projector-cli-aarch64-unknown-linux-gnu.tar.xz",
      intel: "projector-cli-x86_64-unknown-linux-gnu.tar.xz",
    ),
  )
  url "https://github.com/SourceRodeo/projector/releases/download/v0.2.3/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "ed38e7897c1112c1e50bcb9ec0ac6f07a873f76d8ccce64309aae0cd38dfc656",
      intel: "3666cb07e5a9c77a06b308a6b853f27d2562e4c2336fa54a35d412e42e8b7a25",
    ),
    linux: on_arch_conditional(
      arm: "304c2a0b11a918ef45deff7fac5a5482d8b673201bd08b5b5a032bff648938ad",
      intel: "2cf8bb9d92a02995065ee614d231000a3993795fd3c9c5763499f86387edaab7",
    ),
  )

  def install
    bin.install "projector"
  end

  test do
    system "#{bin}/projector", "--help"
  end
end
