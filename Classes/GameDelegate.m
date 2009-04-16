//
//  GameDelegate.m
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#import "GameDelegate.h"

@implementation GameDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[window setUserInteractionEnabled:YES];
	[window setMultipleTouchEnabled:YES];
    [[Director sharedDirector] setLandscape: YES];
	[[Director sharedDirector] attachInWindow:window];
	[[Director sharedDirector] setDisplayFPS:YES];
	[window makeKeyAndVisible];
    MenuScene * ms = [MenuScene node];
	
	[[Director sharedDirector] runWithScene:ms];
}

@end
