class Timetrack < Formula
  desc "CLI time-tracking tool"
  homepage "https://github.com/FR-SON/tt"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-darwin-arm64"
      sha256 "c2611e51247f1cb085b64630a5b8e2ce2feb1665378e5d4b31d023d9a9c96270"
    end
    on_intel do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-darwin-amd64"
      sha256 "5526805340895fc284dd657ffe5c7ac9ca511f5781f6d3e5fd2ba96101f5363c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-linux-arm64"
      sha256 "d3801a550ad84cb40e2eddb32ce001fa589037b8855c42d044eb23cf6deb731b"
    end
    on_intel do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-linux-amd64"
      sha256 "21b58eeabea140ade6b412e04cb85559ef4ec5aac9534be790509e32b912d299"
    end
  end

  def install
    bin.install Dir["tt-*"].first => "tt"
  end

  test do
    assert_match "tt version #{version}", shell_output("#{bin}/tt version")
  end
end
