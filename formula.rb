require 'formula'

class Mogenerator < Formula
  head 'https://github.com/evadne/mogenerator.git', :branch => "develop"
  depends_on :xcode # For working xcodebuild.
  def install
    system "xcodebuild -target mogenerator -configuration Release SYMROOT=symroot OBJROOT=objroot"
    bin.install "symroot/Release/mogenerator"
  end
end
