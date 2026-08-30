cask "claudebar" do
  version "1.6.1"
  sha256 "00640c79a5e8e44248fc1bbde707b3b2e62eb53064146d692b06a385faeb3c3a"

  url "https://github.com/sagaway3105/claude-bar/releases/download/v#{version}/ClaudeBar-v#{version}.zip"
  name "ClaudeBar"
  desc "Claude plan usage in the menu bar"
  homepage "https://github.com/sagaway3105/claude-bar"

  livecheck do
    url "https://raw.githubusercontent.com/sagaway3105/claude-bar/main/docs/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "ClaudeBar.app"

  zap trash: [
    "~/Library/Caches/com.atsushisagae.ClaudeBar",
    "~/Library/HTTPStorages/com.atsushisagae.ClaudeBar",
    "~/Library/Preferences/com.atsushisagae.ClaudeBar.plist",
  ]
end
