cask "thorium-chromium" do
  arch arm: "arm64", intel: "x86-64"

  version "M109.0.5414.120-2"

  on_intel do
    sha256 "d4ec6db1cd028041166dacb3a121406ce1619ebd965073600f9e43206b42f92b"
  end
  on_arm do
    sha256 "1d49f062c8806b282aadec0504bc7b756a2805c82cae41e675206acfae198610"
  end

  url "https://github.com/Alex313031/Thorium-Special/releases/download/#{version}/Thorium_MacOS_#{arch}.dmg",
      verified: "github.com/Alex313031/Thorium-Special/"
  name "Thorium"
  desc "Thorium - The fastest browser on Earth."
  homepage "https://thorium.rocks/"

  conflicts_with cask: [
    "chromium",
    "eloston-chromium",
    "freesmug-chromium"
  ]

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]

end
