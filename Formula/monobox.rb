class Monobox < Formula
  desc "Terminal UI for Docker and Podman containers"
  homepage "https://github.com/JoaoOliveira889/monobox"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JoaoOliveira889/monobox/releases/download/v0.0.6/monobox_0.0.6_darwin_arm64.tar.gz"
      sha256 "8602c23b79c0e9f311e5ea7cf8306e0e1d09a1ddfa5629c6dc3d397127be8a62"
    end
    on_intel do
      url "https://github.com/JoaoOliveira889/monobox/releases/download/v0.0.6/monobox_0.0.6_darwin_amd64.tar.gz"
      sha256 "ed1b9ede77aeaf4c07512ea8cf186602da12b886ccdc13370f56730abb57bcf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JoaoOliveira889/monobox/releases/download/v0.0.6/monobox_0.0.6_linux_arm64.tar.gz"
      sha256 "a8235f0106ffbdfce6a653a697b5fa43b574af35d4909eb5d1923e287063dec1"
    end
    on_intel do
      url "https://github.com/JoaoOliveira889/monobox/releases/download/v0.0.6/monobox_0.0.6_linux_amd64.tar.gz"
      sha256 "762b5fee13fbe3026440ead617ae3fc9668860b9e5095b810da4f7b99266ba60"
    end
  end

  def install
    bin.install "monobox"
  end

  test do
    system "#{bin}/monobox", "--version"
  end
end
