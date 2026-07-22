cask "claudebar" do
  version "1.3.0"
  sha256 "755259ff0727a15d49bfe35853969cf74a1cdcce9563b4e1f2a40124deec92a4"

  url "https://github.com/sagaway3105/claude-bar/releases/download/v#{version}/ClaudeBar-v#{version}.zip"
  name "ClaudeBar"
  desc "Claude plan usage in the menu bar"
  homepage "https://github.com/sagaway3105/claude-bar"

  livecheck do
    url "https://raw.githubusercontent.com/sagaway3105/claude-bar/main/docs/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "ClaudeBar.app"

  zap trash: [
    "~/Library/Caches/com.atsushisagae.ClaudeBar",
    "~/Library/HTTPStorages/com.atsushisagae.ClaudeBar",
    "~/Library/Preferences/com.atsushisagae.ClaudeBar.plist",
  ]
end
