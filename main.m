
#import <UIKit/UIKit.h>
#import "GameDelegate.h"

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"GameDelegate");
    [pool release];
    return retVal;
}