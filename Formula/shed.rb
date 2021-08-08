# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shed < Formula
  desc "Easily manage Go tool dependencies"
  homepage ""
  version "0.5.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cszatmary/shed/releases/download/v0.5.0/shed_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "4390caa6445b5af362ef0d871f9a702d91d73e78e523b4c47d279a55a37a77b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cszatmary/shed/releases/download/v0.5.0/shed_0.5.0_Darwin_arm64.tar.gz"
      sha256 "640f24328bc52280de6f6436e4e7ac9957c0202f4b979c09d7313675db568dc9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cszatmary/shed/releases/download/v0.5.0/shed_0.5.0_Linux_x86_64.tar.gz"
      sha256 "537d2e3d44db33ddcf73d9ab46dc9e0de56349e0e4a7b7a9d41a662c6219a084"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cszatmary/shed/releases/download/v0.5.0/shed_0.5.0_Linux_armv6.tar.gz"
      sha256 "f288dd06644551fd3edf002309893c201155b49764d850edc7c823b55aa3f00f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cszatmary/shed/releases/download/v0.5.0/shed_0.5.0_Linux_arm64.tar.gz"
      sha256 "5e42972fec760e77e3d385f653d825be401419371cc16bf09cc42ab7fc226863"
    end
  end

  def install
    bin.install "shed"
    bash_completion.install "completions/shed.bash"
    zsh_completion.install "completions/_shed"
  end

  test do
    system "#{bin}/shed --version"
  end
end
