class Timetrack < Formula
  desc "CLI time-tracking tool"
  homepage "https://github.com/FR-SON/tt"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-darwin-arm64"
      sha256 "92fe9c4c5b5977480b228e34c340184457932ccbec7a795e1e898753a54be569"
    end
    on_intel do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-darwin-amd64"
      sha256 "bc156485283f9266d6dd4cd9cc963430728d0e949fdcc398f52b207503eb7fae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-linux-arm64"
      sha256 "c44e7d5b64479d55bd9e3ea76cf2a3ca679f74904da2d309e4d9026ce236502e"
    end
    on_intel do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-linux-amd64"
      sha256 "f3d43e9545310d762d234eb1b293def2fdac9ca51bd3f96981dd63fffa2dcacc"
    end
  end

  def install
    bin.install Dir["tt-*"].first => "tt"
  end

  test do
    assert_match "tt version #{version}", shell_output("#{bin}/tt version")
  end
end
