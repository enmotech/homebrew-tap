class Moclaw < Formula
  desc "CLI for MoClaw — AI-native ticket management platform with agent orchestration"
  homepage "https://github.com/enmotech/moclaw"
  version "2.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/enmotech/moclaw/releases/download/v2.1.0/moclaw_v2.1.0_darwin_amd64.tar.gz"
      sha256 "258f5e74ea8b159c43fd06a9871d39ab2dac0035549edf82326999e6d1eae155"
    end

    on_arm do
      url "https://github.com/enmotech/moclaw/releases/download/v2.1.0/moclaw_v2.1.0_darwin_arm64.tar.gz"
      sha256 "01b8b2f84eca92d24b8ae887cb3ea0a23517a58ee1700631c3d095059cf2f68d"
    end
  end

  def install
    bin.install "moclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/moclaw version 2>&1", 0)
  end
end
