class MesCli < Formula
  desc "Enmotech MES CLI tools"
  homepage "https://github.com/enmotech/mes-cli"
  version "0.5.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.3/mes-0.5.3-macOS-arm64.zip"
    sha256 "e785aec7c4d41803b97a5403f4c05e68d1530d409cfa2fcd3d82e7ad0bfcb35d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.3/mes-0.5.3-macOS-amd64.zip"
    sha256 "9ac2b228c0b2e6c150609bf4036d28f4cb209fb8b5a29ee3211fdc79e90449d5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.3/mes-0.5.3-linux-arm64.zip"
    sha256 "3dae7138ae69ffa85414697bc2122f68ef2f2f2b9aa8fdacf7716baf61b15f94"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.3/mes-0.5.3-linux-amd64.zip"
    sha256 "58208b161c11725267ba031abde60efb64bb984b3f7f0d9e338970e7dd157ca1"
  end

  def install
    bin.install "bin/mes"
    prefix.install "skills"
  end

  def test
    system "#{bin}/mes", "--version"
  end
end
