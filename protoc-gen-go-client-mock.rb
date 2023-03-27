class ProtocGenGoClientMock < Formula
  desc 'protoc-gen-go-client-mock is a protoc plugin that generates a mock of client that bundles gRPC Clients for multiple services.'
  version '0.1.0'
  homepage 'https://github.com/pepabo/protoc-gen-go-client-mock'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/pepabo/protoc-gen-go-client-mock/releases/download/v0.1.0/protoc-gen-go-client-mock_v0.1.0_darwin_arm64.zip'
      sha256 'b6aba45d74651ecf36737b4b0ccd663a2aec7a2012e385224cefedc4efffb358'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/protoc-gen-go-client-mock/releases/download/v0.1.0/protoc-gen-go-client-mock_v0.1.0_darwin_amd64.zip'
      sha256 'd8f8bfed6c8db2910a2ae2e7f4d2406a69ef99e87dc92c3c16aa65c72ac9af20'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/protoc-gen-go-client-mock/releases/download/v0.1.0/protoc-gen-go-client-mock_v0.1.0_linux_amd64.tar.gz'
      sha256 'ef11ef83079cef8324ae44ec4304033fdbcc5c90ef19dc8ae901db3af07db67e'
    end
  end

  head do
    url 'https://github.com/pepabo/protoc-gen-go-client-mock.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'protoc-gen-go-client-mock'
  end
end
