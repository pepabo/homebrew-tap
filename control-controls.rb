# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ControlControls < Formula
  desc "control-controls control controls of AWS Security Hub across all regions."
  homepage "https://github.com/pepabo/control-controls"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pepabo/control-controls/releases/download/v0.6.3/control-controls_v0.6.3_darwin_arm64.zip"
      sha256 "c86098301ae589b39c7ed3ad93aae8b9ac34367cb3b53610dfb75c9a150cf7f6"

      def install
        bin.install 'control-controls'
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'bash')
        (bash_completion/'control-controls').write output
        output = Utils.safe_popen_read("#{bin}/control-controls", 'completion', 'zsh')
        (zsh_completion/'_control-controls').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pepabo/control-controls/releases/download/v0.6.3/control-controls_v0.6.3_darwin_amd64.zip"
      sha256 "6edf862c1f21a8a982ef23054d6d2c9c7ed56b56d9c2b27e03e3a52fe0d2c739"

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
      url "https://github.com/pepabo/control-controls/releases/download/v0.6.3/control-controls_v0.6.3_linux_amd64.tar.gz"
      sha256 "d41db1d037f8a0dbf0fc80996ea9cad7bb7e399758fee2a16a42cdcbacd9c772"

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
