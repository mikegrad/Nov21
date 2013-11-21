//
//  Nov21AppDelegate.m
//  Nov21
//
//  Created by Michael Gradilone on 11/21/13.
//  Copyright (c) 2013 FintechSolutions. All rights reserved.
//

#import "Nov21AppDelegate.h"
#import "ViewController.h"

@implementation Nov21AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    titles = [NSArray arrayWithObjects:
              @"Donatello",
              @"Leonardo",
              @"Michelangelo",
              @"Raphael",
              nil
              ];
    
	// Override point for customization after application launch.
	NSString *title = [titles objectAtIndex: 0];
	ViewController *viewController = [[ViewController alloc] initWithTitle: title];
	self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    
	self.window.rootViewController =
    [[UINavigationController alloc] initWithRootViewController: viewController];
    
	[self.window makeKeyAndVisible];
	return YES;
}

- (void) nextStation {
	
	UINavigationController *navigationController =
    (UINavigationController *)self.window.rootViewController;
    
	NSUInteger i = navigationController.viewControllers.count;
    
	if (i < titles.count) {
		//We can go east because we haven't reached the end of the line yet.
		NSString *title = [titles objectAtIndex: i];
		ViewController *viewController = [[ViewController alloc] initWithTitle: title];
		[navigationController pushViewController: viewController animated: YES];
	}
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
