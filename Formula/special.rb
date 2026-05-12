# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/sourcerodeo/special"
  version "0.10.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sourcerodeo/special/releases/download/v0.10.1/special-cli-aarch64-apple-darwin.tar.xz"
    sha256 "9691e528cc85f5a4bff48e51caf8b9127ce858f7e2777b7c464e94fb984ac91e"
  elsif OS.mac?
    url "https://github.com/sourcerodeo/special/releases/download/v0.10.1/special-cli-x86_64-apple-darwin.tar.xz"
    sha256 "7ef990f2e732002ee27472071c88faeffe4c4e39f56e1218562909ef86888660"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/sourcerodeo/special/releases/download/v0.10.1/special-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "7c3a4ad4c36017cead93b2928f9c8a98b1671e90d158b8ed6f7bdf22b9112a8c"
  elsif OS.linux?
    url "https://github.com/sourcerodeo/special/releases/download/v0.10.1/special-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "da2e3ce8f8217dec84716c602d1155e874e90a001291d494358ef3af9e832b04"
  end

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
