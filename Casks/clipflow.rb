# Homebrew Cask for ClipFlow
# To use: brew tap yourusername/clipflow && brew install --cask clipflow

cask "clipflow" do
  version "1.0.1"
  sha256 :no_check  # Update with actual SHA256 of DMG

  url "https://github.com/praneeth552/clipflow/releases/download/v#{version}/ClipFlow-#{version}.dmg"
  name "ClipFlow"
  desc "Clipboard history manager for macOS (like Windows Win+V)"
  homepage "https://github.com/praneeth552/clipflow"

  app "ClipFlow.app"

  # Note: App is not notarized
  caveats <<~EOS
    ClipFlow is not notarized. On first launch:
    1. Right-click ClipFlow.app → Open
    2. Click "Open" in the dialog
    
    Grant Accessibility permissions:
    System Settings → Privacy & Security → Accessibility → Add ClipFlow
  EOS

  zap trash: [
    "~/Library/Preferences/com.clipflow.app.plist",
  ]
end
