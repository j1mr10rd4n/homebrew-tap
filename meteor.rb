require "formula"

class Meteor < Formula
  homepage "https://www.meteor.com"
  url "https://d3sqy0vbqsdhku.cloudfront.net/packages-bootstrap/1.0/meteor-bootstrap-os.osx.x86_64.tar.gz", :using => :nounzip
  sha1 "795908ab21b26e57d09e0c289b6279a125ef6e2f"
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
