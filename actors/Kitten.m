//
//  Kitten.m
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#import "Kitten.h"

@implementation Kitten
-(id) init {
	if (!(self = [super init])) return nil;
	torso = [Sprite spriteWithFile:@"kitten.png"];
	[self addChild:torso z:2];
	
	shadow = [Sprite spriteWithFile:@"kitten-shadow.png"];
	[self addChild:shadow z:0];
	[shadow setPosition:cpv(1, -18)];
	
	return self;
}
@end

/*
#define kDefaultFPS		60.0	// 60 frames per second
 }*/
