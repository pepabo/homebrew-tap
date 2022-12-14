class Cwlq < Formula
  desc 'cwlq is a tool/package for querying logs (of Amazon CloudWatch Logs) stored in various datasources.'
  version '0.1.0'
  homepage 'https://github.com/pepabo/cwlq'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.1.0/cwlq_v0.1.0_darwin_arm64.zip'
      sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.1.0/cwlq_v0.1.0_darwin_amd64.zip'
      sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.1.0/cwlq_v0.1.0_linux_arm64.tar.gz'
      sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.1.0/cwlq_v0.1.0_linux_amd64.tar.gz'
      sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
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
