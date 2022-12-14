class Cwlq < Formula
  desc 'cwlq is a tool/package for querying logs (of Amazon CloudWatch Logs) stored in various datasources.'
  version '0.1.0'
  homepage 'https://github.com/pepabo/cwlq'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.1.0/cwlq_v0.1.0_darwin_arm64.zip'
      sha256 '36213a86e769f4b515e025e3b7d05a1e6fe3b71abb3bc511530bf373f5bd2667'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.1.0/cwlq_v0.1.0_darwin_amd64.zip'
      sha256 '6e40719457c961f70384e9bc0f52a5b71cd116728d1e41c402ff476f6fb30c44'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.1.0/cwlq_v0.1.0_linux_arm64.tar.gz'
      sha256 'ca33c7486d56b61714a909cb6f433044fde1c5076db5bcf62836ebf29fbb63f3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/cwlq/releases/download/v0.1.0/cwlq_v0.1.0_linux_amd64.tar.gz'
      sha256 '73054a50fcd4b4516b830ff2d0509718010f91e742bccba2ee681966cc208572'
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
