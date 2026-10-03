cask "etchy" do
  version "0.1.1"
  sha256 "b951fa961c5bf29fe1e2d3296bcd515b12eddcc162dae7fcfc74a597efc40cef"

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
