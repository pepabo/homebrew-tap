# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ControlControls < Formula
  desc "control-controls control controls of AWS Security Hub across all regions."
  homepage "https://github.com/pepabo/control-controls"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pepabo/control-controls/releases/download/v0.1.1/control-controls_v0.1.1_darwin_arm64.zip"
      sha256 "5e26737559f15d8263da819fff05e4d7c1de19f5bf371b7bcceed4b56754ad6b"

      def install
        bin.install 'control-controls'
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'bash')
        (bash_completion/'control-controls').write output
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'zsh')
        (zsh_completion/'_control-controls').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pepabo/control-controls/releases/download/v0.1.1/control-controls_v0.1.1_darwin_amd64.zip"
      sha256 "4ad8d421ae635e3162b1031fb8a08921643e6bd9e4db157c8892ba93ea3572ed"

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
      url "https://github.com/pepabo/control-controls/releases/download/v0.1.1/control-controls_v0.1.1_linux_amd64.tar.gz"
      sha256 "56039ee5d91aca84a3abefc50871ba16144d627ef227c384047d08169aee433d"

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
