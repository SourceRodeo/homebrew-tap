# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/sourcerodeo/special"
  version "0.9.1"

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
  url "https://github.com/sourcerodeo/special/releases/download/v0.9.1/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "a5d67f44d2476e9702485dcf9eea9d38bec06984965438372e35db782c954acb",
      intel: "7cab660e0289a8ff80820d2ce9a6aa3f4f5940827f35f18591d5505cb7ed70c7",
    ),
    linux: on_arch_conditional(
      arm: "841e56134cec1ec0ae6776d01179c59d79d070169c27ef5fd03f231e5a3b8f46",
      intel: "b09b2469f0148e36557c74e7470f184e6d87ac57fb81e815324167b8dbc8b244",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
