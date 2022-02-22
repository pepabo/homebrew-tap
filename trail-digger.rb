# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrailDigger < Formula
  desc "trail-digger is a tool for digging trail log files of AWS CloudTrail."
  homepage "https://github.com/pepabo/trail-digger"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pepabo/trail-digger/releases/download/v0.2.0/trail-digger_v0.2.0_darwin_arm64.zip"
      sha256 "27a5a6e53f294a64ccc932406cdbd2a8004c63f321c3901c75d31b235f14b5b7"

      def install
        bin.install 'trail-digger'
        output = Utils.safe_popen_read("#{bin}/trail-digger", 'completion', 'bash')
        (bash_completion/'trail-digger').write output
        output = Utils.safe_popen_read("#{bin}/trail-digger", 'completion', 'zsh')
        (zsh_completion/'_trail-digger').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pepabo/trail-digger/releases/download/v0.2.0/trail-digger_v0.2.0_darwin_amd64.zip"
      sha256 "6d50f8f2e5725ecd5ce4c515d03b3dc0167374bfd34b691b377a4c568aa8309e"

      def install
        bin.install 'trail-digger'
        output = Utils.safe_popen_read("#{bin}/trail-digger", 'completion', 'bash')
        (bash_completion/'trail-digger').write output
        output = Utils.safe_popen_read("#{bin}/trail-digger", 'completion', 'zsh')
        (zsh_completion/'_trail-digger').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pepabo/trail-digger/releases/download/v0.2.0/trail-digger_v0.2.0_linux_amd64.tar.gz"
      sha256 "c3997aaa95c96513060e85d94e3d4479e49388375ca491ed2727e6c27b888104"

      def install
        bin.install 'trail-digger'
        output = Utils.safe_popen_read("#{bin}/trail-digger", 'completion', 'bash')
        (bash_completion/'trail-digger').write output
        output = Utils.safe_popen_read("#{bin}/trail-digger", 'completion', 'zsh')
        (zsh_completion/'_trail-digger').write output
      end
    end
  end
end
