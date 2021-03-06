//
//  AppController.m
//  MyStatusItem
//
//  Created by meighti on 3/13/15.
//  Copyright (c) 2015 meighti. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (void) awakeFromNib{
    
    //Create the NSStatusBar and set its length
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength] retain];
    
    //Used to detect where our files are
    NSBundle *bundle = [NSBundle mainBundle];
    
    //Allocates and loads the images into the application which will be used for our NSStatusItem
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon" ofType:@"png"]];
    statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon-alt" ofType:@"png"]];
    
    //Sets the images in our NSStatusItem
    [statusItem setImage:statusImage];
    [statusItem setAlternateImage:statusHighlightImage];
    
    //Tells the NSStatusItem what menu to load
    [statusItem setMenu:statusMenu];
    //Sets the tooptip for our item
    [statusItem setToolTip:@"My Custom Menu Item"];
    //Enables highlighting
    [statusItem setHighlightMode:YES];
}

- (void) dealloc {
    //Releases the 2 images we loaded into memory
    [statusImage release];
    [statusHighlightImage release];
    [super dealloc];
}

-(IBAction)helloWorld:(id)sender{
    NSLog(@"Hello there!");
}

@end
