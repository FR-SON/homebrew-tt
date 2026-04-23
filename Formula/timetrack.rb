class Timetrack < Formula
  desc "CLI time-tracking tool"
  homepage "https://github.com/FR-SON/tt"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-darwin-arm64"
      sha256 "34ab5959d188ec1b5c5e98d71c1b1b762559130c76a47cfb44f21aa0c39d94c0"
    end
    on_intel do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-darwin-amd64"
      sha256 "294db33c77fb15b7f17981477685e29b9222b62280f372a8b8309faf54039fe7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-linux-arm64"
      sha256 "75ddf1ff460793276673ce6bdc78092760195a19f26068c27f6d5095585367f1"
    end
    on_intel do
      url "https://github.com/FR-SON/tt/releases/download/v#{version}/tt-linux-amd64"
      sha256 "4714331ece259e27342fba2d968af6b9237d5ff7ea39eb690a7675e72d884adc"
    end
  end

  def install
    bin.install Dir["tt-*"].first => "tt"
  end

  test do
    assert_match "tt version #{version}", shell_output("#{bin}/tt version")
  end
end
