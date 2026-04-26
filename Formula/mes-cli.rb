class MesCli < Formula
  desc "Enmotech MES CLI tools"
  homepage "https://github.com/enmotech/mes-cli"
  version "0.4.9"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/enmotech/mes-cli/releases/download/v0.4.9/mes-0.4.9-macOS-arm64.zip"
    sha256 "846113eb7135c8ea86d870a419a6e032490bda2a9df0261e9db4ed423019e3fc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/enmotech/mes-cli/releases/download/v0.4.9/mes-0.4.9-macOS-amd64.zip"
    sha256 "fadbd499da639904e19ab6f002a1fb2e24a204d8ca9c01a34e6453401e6a3c9d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/enmotech/mes-cli/releases/download/v0.4.9/mes-0.4.9-linux-arm64.zip"
    sha256 "e0c8da1ba7bc5257545d2c8ea7573a5fd0bb71f918b46dfee70ae812e6ebfa67"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/enmotech/mes-cli/releases/download/v0.4.9/mes-0.4.9-linux-amd64.zip"
    sha256 "282a5878514aff2a30ac92075dd04033f35f06d585465c3aed2d9abb01b89c57"
  end

  def install
    bin.install "bin/mes"
  end

  def test
    system "#{bin}/mes", "--version"
  end
end
