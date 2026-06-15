class MesCli < Formula
  desc "Enmotech MES CLI tools"
  homepage "https://github.com/enmotech/mes-cli"
  version "0.5.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.1/mes-0.5.1-macOS-arm64.zip"
    sha256 "4c7bd3632f629dc459617d356f05b215cc381509fc5e7eacf8f0d47fbdf1f873"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.1/mes-0.5.1-macOS-amd64.zip"
    sha256 "4d3182c6762b85d1e947c895b24fb41832d516775bbc9bf86034dfff8f40cf4b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.1/mes-0.5.1-linux-arm64.zip"
    sha256 "083435e5d9370d9108a618e804e3ff816aab44d576f3993fe1afe09d5f756ae9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://oss-emcsprod-public.oss-cn-beijing.aliyuncs.com/tools/mes/0.5.1/mes-0.5.1-linux-amd64.zip"
    sha256 "9d22a78f4e5203c79d9976877ccbf70e7e34150dd42898074ed73102a0618aa8"
  end

  def install
    bin.install "bin/mes"
    prefix.install "skills"
  end

  def test
    system "#{bin}/mes", "--version"
  end
end
