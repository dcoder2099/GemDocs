//
//  main.m
//  GemDocs
//
//  Created by Daniel Hedrick on 7/3/12.
//  Copyright (c) 2012 DLH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
