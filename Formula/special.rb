# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/sourcerodeo/special"
  version "0.11.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sourcerodeo/special/releases/download/v0.11.0/special-cli-aarch64-apple-darwin.tar.xz"
    sha256 "0743de2ce57fdba823be3a8c77377db60aa1b3811a1a22c58195eee0dceb45ef"
  elsif OS.mac?
    url "https://github.com/sourcerodeo/special/releases/download/v0.11.0/special-cli-x86_64-apple-darwin.tar.xz"
    sha256 "56de0a170779bc186ce3cd1d283130ac30d311ccda9af15b20bd1bb8afe155cb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/sourcerodeo/special/releases/download/v0.11.0/special-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "5a953d76a41963519713936913ceb161e2e199485041ccc70f1356bc1ec2bfa9"
  elsif OS.linux?
    url "https://github.com/sourcerodeo/special/releases/download/v0.11.0/special-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "32779aaa709b0d6758a276b8bce0e794a38d2efb3308e1673c9584f33e175300"
  end

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
