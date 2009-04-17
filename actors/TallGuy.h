//
//  TallGuy.h
//  Game
//
//  Created by Tj Holowaychuk on 14/04/09.
//  Copyright 2009 Vision Media. All rights reserved.
//

/*
 + (Soloist *)soloist
 {
 static Soloist *instance = nil;
 
 if ( instance == nil ) {
 instance = [[self alloc] init];
 }
 return instance;
 }
 
 TODO: dont forget to utilize the static keyword ...
 TODO: iphone multithreading?
 */

#import "cocos2d.h"

@interface TallGuy : Layer {
	Sprite * body;
}
@end