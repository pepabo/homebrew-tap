class ProtocGenGoClient < Formula
  desc 'protoc-gen-go-client is a protoc plugin that generates a client that compiles gRPC clients for multiple services.'
  version '0.3.0'
  homepage 'https://github.com/pepabo/protoc-gen-go-client'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/pepabo/protoc-gen-go-client/releases/download/v0.3.0/protoc-gen-go-client_v0.3.0_darwin_arm64.zip'
      sha256 '99d26e1284c1974a08ac8daed9f339c0a1261b401ff6769b1ffdeb4705be7d7b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/protoc-gen-go-client/releases/download/v0.3.0/protoc-gen-go-client_v0.3.0_darwin_amd64.zip'
      sha256 'aa99a0308024dc0118b06edc1bd31aacc9332d18cc56fb314ad38e5893257cbe'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/protoc-gen-go-client/releases/download/v0.3.0/protoc-gen-go-client_v0.3.0_linux_amd64.tar.gz'
      sha256 'af9f9965182f65090a4fe2ec2e21f800f5ca0b9ab155ff0b33df12730ba61bf6'
    end
  end

  head do
    url 'https://github.com/pepabo/protoc-gen-go-client.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'protoc-gen-go-client'
  end
end
