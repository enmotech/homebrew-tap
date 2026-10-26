class MesCli < Formula
  desc "Enmotech MES CLI tools"
  homepage "https://github.com/enmotech/mes-cli"
  version "0.5.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.4/mes-0.5.4-macOS-arm64.zip"
    sha256 "1fb40943b400a26fa192ebf1954e16b4b2d95a85773d20c98b40f41b780755e6"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.4/mes-0.5.4-macOS-amd64.zip"
    sha256 "0a2f27a97a4d463357310c46177c421928b78c373da90086d51422d1ef4ddd73"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.4/mes-0.5.4-linux-arm64.zip"
    sha256 "226de576918170c53355a6e91b204fa43cd8959387b88a5d1e467a1d4b5434b8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.4/mes-0.5.4-linux-amd64.zip"
    sha256 "e60d87fb1097612c9a02bd73e97778d07c5a8a8dc73c7491f74ec67beec16172"
  end

  def install
    bin.install "bin/mes"
    prefix.install "skills"
  end

  def test
    system "#{bin}/mes", "--version"
  end
end
