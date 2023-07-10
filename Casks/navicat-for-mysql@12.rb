cask "navicat-for-mysql@12" do
  version "12.1.31"
  sha256 "33024bea652d9ac651fd4a50c6ae8d2e001075dbc389f307bebde5d751b6d509"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  livecheck do
    url "https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en"
    strategy :sparkle
  end
  appcast "https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en"
  name "Navicat for MySQL"
  desc "Version 12 of Navicat for MySQL, to use older licenses"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  conflicts_with cask: "navicat-for-mysql"

  app "Navicat for MySQL.app"
end
