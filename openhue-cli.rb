# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpenhueCli < Formula
  desc "OpenHue CLI is a command-line interface for interacting with Philips Hue smart lighting systems"
  homepage "https://github.com/openhue/homebrew-cli"
  version "0.15"
  license "Apache License 2.0"

  on_macos do
    url "https://github.com/openhue/openhue-cli/releases/download/0.15/openhue_Darwin_all.tar.gz"
    sha256 "18e1c67e41105ab3166b290d001ec9a50309e13cc5d832e8fe753a99f33b4fa1"

    def install
      bin.install "openhue"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openhue/openhue-cli/releases/download/0.15/openhue_Linux_arm64.tar.gz"
      sha256 "ed649f81fbb7ba245ef4d923457edcacc7f4f4d0f9fa7ef2e62e84a737256fd2"

      def install
        bin.install "openhue"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/openhue/openhue-cli/releases/download/0.15/openhue_Linux_x86_64.tar.gz"
      sha256 "d9530c304d52f13b4646b10cd0540171ef0861242b72f87f2f54ef038e19d1e4"

      def install
        bin.install "openhue"
      end
    end
  end
end
