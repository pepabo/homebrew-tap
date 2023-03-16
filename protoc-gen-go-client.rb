class ProtocGenGoClient < Formula
  desc 'protoc-gen-go-client is a protoc plugin that generates a client that compiles gRPC clients for multiple services.'
  version '0.0.1'
  homepage 'https://github.com/pepabo/protoc-gen-go-client'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/pepabo/protoc-gen-go-client/releases/download/v0.0.1/protoc-gen-go-client_v0.0.1_darwin_arm64.zip'
      sha256 '921c864c66a0976bae0908be861b3976cd9765726f73fb65ecd575ff41465f65'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/protoc-gen-go-client/releases/download/v0.0.1/protoc-gen-go-client_v0.0.1_darwin_amd64.zip'
      sha256 '8631b04e71c0dd07a8988c1399a45907221fa2b28b9f3855dbf149c78d1c6d1e'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/pepabo/protoc-gen-go-client/releases/download/v0.0.1/protoc-gen-go-client_v0.0.1_linux_amd64.tar.gz'
      sha256 '0f879827782628a008fb27fcee0c0f3a9f0cc26aaae499b3ddd93df39918b90b'
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
