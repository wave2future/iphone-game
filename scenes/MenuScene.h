//
//  MenuScene.h
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#import "core.h"
#import "GameScene.h"

GameScene * gs;

@interface MenuScene : Scene {}
@end

@interface MenuLayer : Layer {}
-(void)startGame: (id)sender;
-(void)help: (id)sender;
@end