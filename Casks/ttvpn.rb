cask "ttvpn" do
  version "1.1.1"
  sha256 "61e66fa3889091c33978c4258a74d5dfccfd441ef5d17604f77d2d931019e14a"

  url "https://static.timetac.com/ttvpn/ttvpn-darwin-amd64"
  name "ttvpn"
  desc "TLS based, secure, punch-through VPN solution"
  homepage "https://www.timetac.com/"

  container type: :naked

  binary "ttvpn-darwin-amd64",
         target: "ttvpn"

  caveats "ttvpn is currently neither signed nor notarized. Open the binary once via the context menu in Finder.app to allow an exception: /opt/homebrew/Caskroom/ttvpn/#{version}"
end
