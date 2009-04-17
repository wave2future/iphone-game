//
//  OptionsScene.m
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#import "core.h"

@implementation OptionsScene
- (id) init {
	if (!(self = [super init])) return nil;
	Sprite * bg = [Sprite spriteWithFile:@"menu.png"];
	[bg setPosition:cpv(240, 160)];
	[self addChild:bg z:0];
	[self addChild:[OptionsLayer node] z:1];
    return self;
}
@end

@implementation OptionsLayer
- (id) init {
	if (!(self = [super init])) return nil;
    [MenuItemFont setFontSize:20];
	[MenuItemFont setFontName:@"Helvetica"];
	MenuItem * save = [MenuItemFont itemFromString:@"Save" target:self selector:@selector(save:)];
	MenuItem * cancel = [MenuItemFont itemFromString:@"Cancel" target:self selector:@selector(cancel:)];
	Menu * menu = [Menu menuWithItems:save, cancel, nil];
	[menu alignItemsHorizontally];
	[self addChild:menu];
    return self;
}
- (void) save: (id) sender {
	MenuScene * ms = [MenuScene node];
	[[Director sharedDirector] replaceScene:ms];
}
- (void) cancel: (id) sender {
	MenuScene * ms = [MenuScene node];
	[[Director sharedDirector] replaceScene:ms];
}
@end