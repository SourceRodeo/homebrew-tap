# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/sourcerodeo/special"
  version "0.11.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sourcerodeo/special/releases/download/v0.11.1/special-cli-aarch64-apple-darwin.tar.xz"
    sha256 "f2e5477e290ff735d71a800be75f8b51e0c9b6a6f04d4fe8856adc81cd80002b"
  elsif OS.mac?
    url "https://github.com/sourcerodeo/special/releases/download/v0.11.1/special-cli-x86_64-apple-darwin.tar.xz"
    sha256 "6e1c1fe85691d0d7fc929a41947b83a089d195df40eefd7ad3c36946a763a7cc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/sourcerodeo/special/releases/download/v0.11.1/special-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "1803aef1fc9efd93fc76ece205accfe7e739ad3b6449e695aca6b9c267bd5d28"
  elsif OS.linux?
    url "https://github.com/sourcerodeo/special/releases/download/v0.11.1/special-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "507181d37c32a6c68bff1292312e10144b524080c5ecd4400c01a2099fecfa16"
  end

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
