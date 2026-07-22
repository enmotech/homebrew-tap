class MesCli < Formula
  desc "Enmotech MES CLI tools"
  homepage "https://github.com/enmotech/mes-cli"
  version "0.5.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.2/mes-0.5.2-macOS-arm64.zip"
    sha256 "c044ee816168a62de82e0b63e626ba2112f5f895bc0aff3c4d4af80a0401ae1e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.2/mes-0.5.2-macOS-amd64.zip"
    sha256 "04f19c797cad2d388c738de981e69f4be5b0197d05d421441d4a3e6fae4761ea"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.2/mes-0.5.2-linux-arm64.zip"
    sha256 "8c4d7f9ec02c0aab0851ef40d057b921a57937e44e8afad722738514c1810ef0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.2/mes-0.5.2-linux-amd64.zip"
    sha256 "30dc970970c8c70b06c6b132e15a6399116435d9d8ffd398df37956d92a91d54"
  end

  def install
    bin.install "bin/mes"
    prefix.install "skills"
  end

  def test
    system "#{bin}/mes", "--version"
  end
end
