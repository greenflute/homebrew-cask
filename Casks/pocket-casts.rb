cask "pocket-casts" do
  version "1.5.1"
  sha256 :no_check

  url "https://static.pocketcasts.com/mac/PocketCasts.zip"
  name "Pocket Casts"
  desc "Podcast platform"
  homepage "https://play.pocketcasts.com/"

  livecheck do
    url "https://static2.pocketcasts.com/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Pocket Casts.app"

  zap trash: [
    "~/Library/Application Support/au.com.shiftyjelly.PocketCasts",
    "~/Library/Caches/au.com.shiftyjelly.PocketCasts",
    "~/Library/Preferences/au.com.shiftyjelly.PocketCasts.plist",
  ]
end
