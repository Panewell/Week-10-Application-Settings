//
//  ApplicationSettingsAppDelegate.m
//  ApplicationSettings
//
//  Created by Wei-Meng Lee on 3/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ApplicationSettingsAppDelegate.h"

#import "ApplicationSettingsViewController.h"

@implementation ApplicationSettingsAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // -- initialize the settings value first;
    // if not all settings values will be null --
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![defaults objectForKey:@"login_name"])
        [defaults setObject:@"login name" forKey:@"login_name"];
    if (![defaults objectForKey:@"password"])
        [defaults setObject:@"password" forKey:@"password"];
    if (![defaults objectForKey:@"color"])
        [defaults setObject:@"Yellow" forKey:@"color"];
    [defaults synchronize];
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[ApplicationSettingsViewController alloc] initWithNibName:@"ApplicationSettingsViewController" bundle:nil] autorelease]; 
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
