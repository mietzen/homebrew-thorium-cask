cask "thorium-chromium" do
  depends_on arch: :arm64
  version "M109.0.5414.120-2"
  sha256 "1d49f062c8806b282aadec0504bc7b756a2805c82cae41e675206acfae198610"

  url "https://github.com/Alex313031/Thorium-Special/releases/download/#{version}/Thorium_MacOS_ARM64.dmg"
  name "Chromium"
  desc "Thorium - The fastest browser on Earth."
  homepage "https://thorium.rocks/"

  conflicts_with cask: [
    "chromium",
    "eloston-chromium",
    "freesmug-chromium"
  ]

  app "Chromium.app"

end
