//
//  AppController.h
//  MyStatusItem
//
//  Created by meighti on 3/13/15.
//  Copyright (c) 2015 meighti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject {
    /* Our outlets which allow us to access the interface */
    IBOutlet NSMenu *statusMenu;
    
    /* The other stuff :P */
    NSStatusItem *statusItem;
    NSImage *statusImage;
    NSImage *statusHighlightImage;
}

/* Our IBAction which will call the helloWorld method when our connected Menu Item is pressed */
-(IBAction)helloWorld:(id)sender;

@end