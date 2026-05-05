# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/sourcerodeo/special"
  version "0.9.0"

  archive = on_system_conditional(
    macos: on_arch_conditional(
      arm: "special-cli-aarch64-apple-darwin.tar.xz",
      intel: "special-cli-x86_64-apple-darwin.tar.xz",
    ),
    linux: on_arch_conditional(
      arm: "special-cli-aarch64-unknown-linux-gnu.tar.xz",
      intel: "special-cli-x86_64-unknown-linux-gnu.tar.xz",
    ),
  )
  url "https://github.com/sourcerodeo/special/releases/download/v0.9.0/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "4bd76b98e0276d9d8d76fc913d24aafb4d0b547ec7d4cd26cb440a8680ad5e8d",
      intel: "20eb8096d0256b72821c64775610dec211ee578fe8cdf0bcb7c541b74f3c77ab",
    ),
    linux: on_arch_conditional(
      arm: "11a4f48c19dfd258f06fdaaa619d9d749518ea35763c2abf07a348547dc271d4",
      intel: "2dad33ffb2e519c5820ea29eb8180d482ff8285e5bba760376a43150ba53dde4",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
