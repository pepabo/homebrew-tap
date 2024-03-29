# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ControlControls < Formula
  desc "control-controls control controls of AWS Security Hub across all regions."
  homepage "https://github.com/pepabo/control-controls"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pepabo/control-controls/releases/download/v0.6.6/control-controls_v0.6.6_darwin_arm64.zip"
      sha256 "f0b29b7b263022cb51f1554849d2a9609ecbbe3b2aaaea2895dcf7a146a4925c"

      def install
        bin.install 'control-controls'
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'bash')
        (bash_completion/'control-controls').write output
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'zsh')
        (zsh_completion/'_control-controls').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pepabo/control-controls/releases/download/v0.6.6/control-controls_v0.6.6_darwin_amd64.zip"
      sha256 "21eda711b9302f709d4021bd14ad6baf8c2ba8654e51edb2f6dc40e1c575761d"

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
      url "https://github.com/pepabo/control-controls/releases/download/v0.6.6/control-controls_v0.6.6_linux_amd64.tar.gz"
      sha256 "3d7e0669bf7d8781f5e8cad98644c7f9af5a1f81be4125d642cc90431d5b1972"

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
