require "formula"

class Meteor < Formula
  homepage "https://www.meteor.com"
  url "https://d3sqy0vbqsdhku.cloudfront.net/packages-bootstrap/1.0/meteor-bootstrap-os.osx.x86_64.tar.gz", :using => :nounzip
  sha256 "1da46f3614a83715c3b3f58f80a193dea89aa6eb221061396de6e005be9e4e79"
  version "1.0"

  def install
    system "tar xvfz meteor-bootstrap-os.osx.x86_64.tar.gz"
    system "mv .meteor meteor"
    system "rm meteor-bootstrap-os.osx.x86_64.tar.gz"
    prefix.install Dir["meteor/*"]
    bin.install_symlink prefix/"meteor"
  end

  #test do
  #end
end
