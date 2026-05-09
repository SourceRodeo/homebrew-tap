# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/sourcerodeo/special"
  version "0.10.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sourcerodeo/special/releases/download/v0.10.0/special-cli-aarch64-apple-darwin.tar.xz"
    sha256 "c8469d900ff07e84003d226dbb95b11721a43bc79a1bf501f6eb79bcd45e49ec"
  elsif OS.mac?
    url "https://github.com/sourcerodeo/special/releases/download/v0.10.0/special-cli-x86_64-apple-darwin.tar.xz"
    sha256 "9df4bd52eb142b5430ea0c51f1e7425d855624f19c7292640c5d378a35dea6af"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/sourcerodeo/special/releases/download/v0.10.0/special-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "7a43a8c328ae472821dd69f14bfe1996cf4b0177f330507c023333074eab969a"
  elsif OS.linux?
    url "https://github.com/sourcerodeo/special/releases/download/v0.10.0/special-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "b1e28a64d64cd54a2e37bad4c41711e3fa57d848c2481c32bb7948ad47e28f37"
  end

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
