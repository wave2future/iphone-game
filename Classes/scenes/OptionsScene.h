//
//  OptionsScene.h
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface OptionsScene : Scene {}
@end

@interface OptionsLayer : Layer {}
- (void) save: (id) sender;
- (void) cancel: (id) sender;
@end