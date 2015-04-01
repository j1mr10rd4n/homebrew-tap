require "formula"

class Meteor < Formula
  homepage "https://www.meteor.com"
  url "https://d3sqy0vbqsdhku.cloudfront.net/packages-bootstrap/1.1/meteor-bootstrap-os.osx.x86_64.tar.gz", :using => :nounzip
  sha1 "3c24ba1e59e357d008c9679966fed4b115ef778a"
  version "1.1"

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
