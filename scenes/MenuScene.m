//
//  MenuScene.m
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#import "core.h"

@implementation MenuScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"menu.png"];
        [bg setPosition:cpv(240, 160)];
        [self addChild:bg z:0];
        [self addChild:[MenuLayer node] z:1];
    }
    return self;
}
@end

@implementation MenuLayer
- (id) init {
    self = [super init];
    if (self != nil) {
        [MenuItemFont setFontSize:20];
        [MenuItemFont setFontName:@"Helvetica"];
        MenuItem *start = [MenuItemFont itemFromString:@"Begin Journey" target:self selector:@selector(startGame:)];
        MenuItem *options = [MenuItemFont itemFromString:@"Options" target:self selector:@selector(help:)];
		Menu *menu = [Menu menuWithItems:start, options, nil];
		[menu alignItemsVertically];
        [self addChild:menu];
    }
    return self;
}
- (void) startGame: (id) sender {
	gs = [GameScene node];
    [[Director sharedDirector] replaceScene:gs];
}
- (void) help: (id) sender {
    OptionsScene * os = [OptionsScene node];
	[[Director sharedDirector] replaceScene:os];
}
@end
