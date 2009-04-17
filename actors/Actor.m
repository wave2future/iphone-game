//
//  Actor.m
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#import "core.h"

@implementation Actor
+(id) createActor {
	return [[[self alloc] init] autorelease];
}
@end