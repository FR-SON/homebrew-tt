class Timetrack < Formula
  desc "CLI time-tracking tool"
  homepage "https://github.com/FR-SON/tt"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-darwin-arm64"
      sha256 "82bf75b6e3ef5969dab00b974b7a992d84679b6f1b15f73bed3933576885ae93"
    end
    on_intel do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-darwin-amd64"
      sha256 "45845a8b99e45044fabca7ca23f5b5b1a380c6cd16b5f7459e3be621e32b1ca2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-linux-arm64"
      sha256 "f79e52ccc23d63ef89c3a446caf4d984b8d01ed90de3a4af2f8963eec43bbeb7"
    end
    on_intel do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-linux-amd64"
      sha256 "19e7be8efd4bae247a02e59606f02a8c54fc09d4171717a6f875813b8805a900"
    end
  end

  def install
    bin.install Dir["tt-*"].first => "tt"
  end

  test do
    assert_match "tt version #{version}", shell_output("#{bin}/tt version")
  end
end
