//
//  SampleLaunchAppDelegate.h
//  SampleLaunch
//
//  Created by Arjuna on 04/01/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

enum  {
    kScan=0,
    kScanToPDF,
    kScanToMail,
    kScanToWeb,
    kScanToCopy,
    kScanToFilm
};

@interface SampleLaunchAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    IBOutlet NSTextField* locationIDTF,*taskIDTF;  
}

@property (assign) IBOutlet NSWindow *window;

-(void)getLocationID:(int*)loactionID andTaskID:(int*)taskID;

@end
