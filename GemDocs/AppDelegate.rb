#
#  AppDelegate.rb
#  GemDocs
#
#  Created by Daniel Hedrick on 7/3/12.
#  Copyright 2012 DLH. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    attr_accessor :fileTextField
    
    def loadGemLockfile(sender)
        gemlockfile = File.read(fileTextField.stringValue)
        b = Bundler::LockfileParser.new(gemlockfile)
        puts b.specs.first
    end
    
    def applicationDidFinishLaunching(a_notification)
        # Insert code here to initialize your application
        puts "applicationDidFinishLaunching!"
        puts "RUBY_VERSION: #{RUBY_VERSION}"
        puts "RUBY_RELEASE_DATE: #{RUBY_RELEASE_DATE}"
        puts "RUBY_PLATFORM: #{RUBY_PLATFORM}"
    end
end

