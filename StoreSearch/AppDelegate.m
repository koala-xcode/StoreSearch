//
//  AppDelegate.m
//  StoreSearch
//
//  Created by Koala on 4/29/12.
//  Copyright (c) 2012 KNS. All rights reserved.
//

#import "AppDelegate.h"

#import "SearchViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

-(void)customizeAppearance 
{
    
    UIImage *barImage = [UIImage imageNamed:@"BarTexture"];
    [[UISearchBar appearance] setBackgroundImage:barImage];
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    [self customizeAppearance];
    return YES;
}



@end
