#
#  rb_main.rb
#  GemDocs
#
#  Created by Daniel Hedrick on 7/3/12.
#  Copyright (c) 2012 DLH. All rights reserved.
#

# Loading the Cocoa framework. If you need to load more frameworks, you can
# do that here too.
framework 'Cocoa'

# DLH: Load up gems, per http://stackoverflow.com/questions/1583119/using-gems-with-macruby
$:.unshift File.join(File.dirname(__FILE__), 'vendor_gems/TestGem101-1.0.4/lib')
require 'TestGem101'

# Loading all the Ruby project files.
main = File.basename(__FILE__, File.extname(__FILE__))
dir_path = NSBundle.mainBundle.resourcePath.fileSystemRepresentation
Dir.glob(File.join(dir_path, '*.{rb,rbo}')).map { |x| File.basename(x, File.extname(x)) }.uniq.each do |path|
  if path != main
    require(path)
  end
end

# Starting the Cocoa main loop.
NSApplicationMain(0, nil)
