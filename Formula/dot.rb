# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dot < Formula
  desc "A CLI for managing dotfiles."
  homepage ""
  version "0.1.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cszatmary/dot/releases/download/v0.1.0/dot_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "49c423c75aa614ac75e90a446c5669f047c096b5857549b1c242dba116e04591"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cszatmary/dot/releases/download/v0.1.0/dot_0.1.0_Darwin_arm64.tar.gz"
    sha256 "1fb32d241963030b3c2879b1b3c0cb66d153b3e2758c63924375e82df53fe658"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cszatmary/dot/releases/download/v0.1.0/dot_0.1.0_Linux_x86_64.tar.gz"
    sha256 "762693a066096c52ce8b131dd18a610e61cecac2e60f386e6105fabd07fd80ae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cszatmary/dot/releases/download/v0.1.0/dot_0.1.0_Linux_armv6.tar.gz"
    sha256 "3f6eb55175d48b32f6a79cea9f7129c9f1c33e4fd03b28883e8ba1a8d4157eaf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cszatmary/dot/releases/download/v0.1.0/dot_0.1.0_Linux_arm64.tar.gz"
    sha256 "e45700b0e3c38a38f1eda32b39be0c83260fdaac3b4df25e5b964118e43ec6f1"
  end

  def install
    bin.install "dot"
    bash_completion.install "completions/dot.bash"
    zsh_completion.install "completions/_dot"
  end

  test do
    system "#{bin}/dot --version"
  end
end
