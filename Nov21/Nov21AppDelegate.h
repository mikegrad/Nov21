//
//  Nov21AppDelegate.h
//  Nov21
//
//  Created by Michael Gradilone on 11/21/13.
//  Copyright (c) 2013 FintechSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Nov21AppDelegate : UIResponder <UIApplicationDelegate> {
	UIWindow *_window;
	NSArray *titles;
}

- (void) nextStation;
@property (strong, nonatomic) UIWindow *window;

@end
