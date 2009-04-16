//
//  TallGuy.m
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#include "TallGuy.h"

@implementation TallGuy
- (id) init {
	if (!(self = [super init])) return nil;
	body = [Sprite spriteWithFile:@"tall-guy.png"];
	[self addChild:body z:0];
	return self;
}
@end