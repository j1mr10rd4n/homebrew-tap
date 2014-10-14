require "formula"

class Meteor < Formula
  homepage "https://www.meteor.com"
  url "https://d3sqy0vbqsdhku.cloudfront.net/packages-bootstrap/0.9.4/meteor-bootstrap-os.osx.x86_64.tar.gz", :using => :nounzip
  sha1 "f17785713e43116d029a5358c50ecd669c9b52fb"
  version "0.9.4"

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
