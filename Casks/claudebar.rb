cask "claudebar" do
  version "1.4.1"
  sha256 "b6681eb61bcbd6897e7572d9cbca3e848d7d2ab9fdad78926e38837cbb3e5fa2"

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
