class Cwlq < Formula
  desc 'cwlq is a tool/package for querying logs (of Amazon CloudWatch Logs) stored in various datasources.'
  version '0.6.1'
  homepage 'https://github.com/pepabo/cwlq'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.6.1/cwlq_v0.6.1_darwin_arm64.zip'
      sha256 'ce3288215bf892bb075ee160b17981915342764adeb645c1beeff059dc73c9bc'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.6.1/cwlq_v0.6.1_darwin_amd64.zip'
      sha256 '4e704abd9d32fe476fe25d96de0957adeee3416ff00bedd436ef7feca1d24fbb'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.6.1/cwlq_v0.6.1_linux_arm64.tar.gz'
      sha256 'a223ea5fc77a4ef4316cbc6840f84707030165b224eba2d5ec4e83118707a0e7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.6.1/cwlq_v0.6.1_linux_amd64.tar.gz'
      sha256 '0e5f85b7996e30544aa0da095d654a625155b3ce2c8d21f5385f49660f165cf2'
    end
  end

  head do
    url 'https://github.com/pepabo/cwlq.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'cwlq'
  end
end
