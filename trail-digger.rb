# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrailDigger < Formula
  desc "trail-digger is a tool for digging trail log files of AWS CloudTrail."
  homepage "https://github.com/pepabo/trail-digger"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pepabo/trail-digger/releases/download/v0.2.1/trail-digger_v0.2.1_darwin_arm64.zip"
      sha256 "32362c18690b8899b6b9c6541a9fd3b5f3ba011d6f5be286d05c837b8a77daad"

      def install
        bin.install 'trail-digger'
        output = Utils.safe_popen_read("#{bin}/trail-digger", 'completion', 'bash')
        (bash_completion/'trail-digger').write output
        output = Utils.safe_popen_read("#{bin}/trail-digger", 'completion', 'zsh')
        (zsh_completion/'_trail-digger').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pepabo/trail-digger/releases/download/v0.2.1/trail-digger_v0.2.1_darwin_amd64.zip"
      sha256 "056946f050d8455c1dc33f196dfe64c6545b30353837ee3f30e883ee426f3aa7"

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
      url "https://github.com/pepabo/trail-digger/releases/download/v0.2.1/trail-digger_v0.2.1_linux_amd64.tar.gz"
      sha256 "38a774c5dfcc0874e193b964a0344711106cd707ca921f41ff0efa2b94d91401"

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
