# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ControlControls < Formula
  desc "control-controls control controls of AWS Security Hub across all regions."
  homepage "https://github.com/pepabo/control-controls"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pepabo/control-controls/releases/download/v0.4.0/control-controls_v0.4.0_darwin_arm64.zip"
      sha256 "8891735337bb1c6a65a2c001fc623604a137f4432b66b11e6642402428580343"

      def install
        bin.install 'control-controls'
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'bash')
        (bash_completion/'control-controls').write output
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'zsh')
        (zsh_completion/'_control-controls').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pepabo/control-controls/releases/download/v0.4.0/control-controls_v0.4.0_darwin_amd64.zip"
      sha256 "9af5d90762fea9455cb2f970983e078a4074e264e2e104f2d23561c588fb7613"

      def install
        bin.install 'control-controls'
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'bash')
        (bash_completion/'control-controls').write output
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'zsh')
        (zsh_completion/'_control-controls').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pepabo/control-controls/releases/download/v0.4.0/control-controls_v0.4.0_linux_amd64.tar.gz"
      sha256 "dbc5003a4616da38f1731b9f3a04818d98aae6017d6d81eb09cb82e9d4756c8f"

      def install
        bin.install 'control-controls'
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'bash')
        (bash_completion/'control-controls').write output
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'zsh')
        (zsh_completion/'_control-controls').write output
      end
    end
  end
end
