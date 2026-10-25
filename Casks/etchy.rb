cask "etchy" do
  version "0.1.2"
  sha256 "af78beb81cc871fef4096e520a1a4ec9bf720311e02583664ccc77225872d8db"

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
