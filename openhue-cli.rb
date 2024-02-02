# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpenhueCli < Formula
  desc "OpenHue CLI is a command-line interface for interacting with Philips Hue smart lighting systems"
  homepage "https://github.com/openhue/homebrew-cli"
  version "0.14"
  license "Apache License 2.0"

  on_macos do
    url "https://github.com/openhue/openhue-cli/releases/download/0.14/openhue_Darwin_all.tar.gz"
    sha256 "194e4e48e95b40a1e0527001bd91170acf06188a11eb6a147ead2877b6689f70"

    def install
      bin.install "openhue"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/openhue/openhue-cli/releases/download/0.14/openhue_Linux_x86_64.tar.gz"
      sha256 "9306263fd5e6365c617c436b1a61e304fd68e79d69efa2a66e623ce9ff404cf2"

      def install
        bin.install "openhue"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openhue/openhue-cli/releases/download/0.14/openhue_Linux_arm64.tar.gz"
      sha256 "24867515cd87d8c8ae184e52f690e9d1eaf12b603ebb49bd8d62af5e6b94c89c"

      def install
        bin.install "openhue"
      end
    end
  end
end
