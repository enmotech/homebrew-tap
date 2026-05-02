class MesCli < Formula
  desc "Enmotech MES CLI tools"
  homepage "https://github.com/enmotech/mes-cli"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.0/mes-0.5.0-macOS-arm64.zip"
    sha256 "96b28f8306bef3ffa818a6444339807100007a718898670d2aa11dbf0e1f6635"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.0/mes-0.5.0-macOS-amd64.zip"
    sha256 "ae649aff6d0f21afd84a89f4b7f96f985a1fd1645a6710881de2349da3ccc7cd"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.0/mes-0.5.0-linux-arm64.zip"
    sha256 "95062007f41cde0c50570652e8b46b13a69f37afaf03692daae96281340a59f1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.0/mes-0.5.0-linux-amd64.zip"
    sha256 "10e9190e51253e6b8ab4facab3167c2eaf3f74feddc3bea92158d09d4e3b9b7c"
  end

  def install
    bin.install "bin/mes"
    prefix.install "skills"
  end

  def test
    system "#{bin}/mes", "--version"
  end
end
