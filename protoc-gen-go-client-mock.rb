class ProtocGenGoClientMock < Formula
  desc 'protoc-gen-go-client-mock is a protoc plugin that generates a mock of client that bundles gRPC Clients for multiple services.'
  version '0.3.0'
  homepage 'https://github.com/pepabo/protoc-gen-go-client-mock'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/pepabo/protoc-gen-go-client-mock/releases/download/v0.3.0/protoc-gen-go-client-mock_v0.3.0_darwin_arm64.zip'
      sha256 'acc1e9583becef84b4fc69599ebed2159358c30c8d0ca99f08c5045d29dc38e8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/protoc-gen-go-client-mock/releases/download/v0.3.0/protoc-gen-go-client-mock_v0.3.0_darwin_amd64.zip'
      sha256 '07176dcffa383bc47a507699c399838f064bcc56e19f4fa2443a5377d7e7e5a8'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/protoc-gen-go-client-mock/releases/download/v0.3.0/protoc-gen-go-client-mock_v0.3.0_linux_amd64.tar.gz'
      sha256 '957143bad032aeb5863e6f460b90c61742cfa0d2fae65ab26178bdfbd2f568fa'
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
