cask "etchy" do
  version "0.2.0"
  sha256 "d412ec26bebedc1e028a53b3a16af27118ad405b1069d7aabbbe9be5caf05abb"

  url "https://github.com/Cimos/etchy/releases/download/v#{version}/etchy-viewer-v#{version}-macos-aarch64.dmg"
  name "etchy"
  desc "Visual and geometric diff viewer for PCB Gerber, drill and PDF revisions"
  homepage "https://cimos.github.io/etchy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "etchy.app"
  binary "#{appdir}/etchy.app/Contents/MacOS/etchy"

  caveats <<~EOS
    etchy is not code-signed yet. On first launch macOS will block it:
    open System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
