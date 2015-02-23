//
//  SampleLaunchAppDelegate.m
//  SampleLaunch
//
//  Created by Arjuna on 04/01/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SampleLaunchAppDelegate.h"

@implementation SampleLaunchAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
     
}

-(void)getLocationID:(int*)locationID andTaskID:(int*)taskID
{
    NSProcessInfo* processInfo=[NSProcessInfo processInfo];
    NSArray* argumentArray=[processInfo arguments];
    *taskID=[[argumentArray objectAtIndex:1] intValue];
    *locationID=[[argumentArray objectAtIndex:2] intValue];

}

-(void) awakeFromNib
{
       
   
    int taskID,locationID;
    
    [self getLocationID:&locationID andTaskID:&taskID];
    
       
    [locationIDTF setStringValue:[NSString stringWithFormat:@"%X",locationID]];
    [taskIDTF setStringValue:[NSString stringWithFormat:@"%d",taskID]];
     
   // NSLog(@"TaskID = %d , LocationID = %X\n",taskID,locationID);
    switch(taskID)
    {
        case kScan:
           
            //[mLogger WriteLog:"Scan\n"];
            [taskIDTF setStringValue:@"Scan"];
                       break;
            
        case kScanToPDF:     
            //[mLogger WriteLog:"Scan To PDF\n"];
            [taskIDTF setStringValue:@"Scan To PDF\n"];
            
                      break;
            
        case kScanToMail:
                      //[mLogger WriteLog:"Scan To Mail\n"];
            [taskIDTF setStringValue:@"Scan To Mail\n"];
                      break;
            
        case kScanToCopy:
            
            [taskIDTF setStringValue:@"Scan To Copy\n"];
              break;
        case kScanToWeb:
          
            //[mLogger WriteLog:"Scan To Web\n"];
           [taskIDTF setStringValue:@"Scan To Web\n"];
            break;
        case kScanToFilm:   
            [taskIDTF setStringValue:@"Scan To Film\n"];
            break;

        default:
       
            //[mLogger WriteLog:"Unkown button pressed\n"];
            [taskIDTF setStringValue:@"Unkown button pressed\n"];
            
    }

    NSLog(@"%@",taskIDTF.stringValue);
 
}

-(BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

@end
