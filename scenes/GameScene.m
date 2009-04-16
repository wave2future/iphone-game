//
//  GameScene.m
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#import "GameScene.h"
#import "MenuScene.h"

@implementation GameScene
- (id) init {
	if (!(self = [super init])) return nil;
	kitten = [Sprite spriteWithFile:@"kitten.png"];
	tallGuy = [Sprite spriteWithFile:@"tall-guy.png"];
	tallGuyHome = [Sprite spriteWithFile:@"tallGuy-home.png"];
	npc1 = [Sprite spriteWithFile:@"npc-1.png"];
	bg = [Sprite spriteWithFile:@"home-sky.png"];
	mg = [Sprite spriteWithFile:@"home-grass.png"];
	mg2 = [Sprite spriteWithFile:@"home-grass-2.png"];
	[bg setPosition:cpv(260, 160)];
	[mg setPosition:cpv(240, 40)];
	[mg2 setPosition:cpv(260, 80)];
	[tallGuyHome setPosition:cpv(260, 220)];
	[self addChild:bg z:0 parallaxRatio:cpv(0.000001, 0.8)];
	[self addChild:mg2 z:2 parallaxRatio:cpv(0.05, 0.4)];
	[self addChild:mg z:4 parallaxRatio:cpv(0.5, 0.005)];
	[self addChild:tallGuyHome z:5 parallaxRatio:cpv(0.5, 0.005)];
	[self addChild:[GameLayer node] z:6];
	
	// Move background
	int duration = 20;
	cpVect start = cpv(260, 160);
	cpVect end = cpv(190, 160);
	IntervalAction *to = [MoveTo actionWithDuration:duration position:end];
	IntervalAction *from = [MoveTo actionWithDuration:duration position:start];
	IntervalAction *sequence = [Sequence actionOne:to two:from];
	[bg runAction:[RepeatForever actionWithAction:sequence]];
    return self;
}
@end

@implementation GameLayer
- (id) init {
	if (!(self = [super init])) return nil;
	isTouchEnabled = YES;
	isAccelerometerEnabled = YES;
	[[UIAccelerometer sharedAccelerometer] setUpdateInterval:(1.0 / 60)];
	
	[self addChild:kitten z:2];
	[self addChild:tallGuy z:2];
	//[self addChild:npc1 z:1];
	[kitten setPosition:cpv(50, 50)];
	[tallGuy setPosition:cpv(80, 100)];
	[npc1 setPosition:cpv(380, 60)];
	isTouchEnabled = YES;

    return self;
}

- (void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *myTouch =  [touches anyObject];
	CGPoint location = [myTouch locationInView: [myTouch view]];
	location = [[Director sharedDirector] convertCoordinate: location];
	[gs runAction:[MoveTo actionWithDuration:2 position:cpv(location.x / 8, location.y / 8)]];
	[tallGuy runAction:[MoveTo actionWithDuration:2 position:cpv(location.x - ([tallGuy contentSize].width / 2), location.y + ([tallGuy contentSize].height / 2) - 30)]];
	[kitten runAction:[MoveTo actionWithDuration:6 position:cpv(location.x + 20, location.y)]];
	// tallGuy.scaleX = -tallGuy.scaleX;
}
@end
