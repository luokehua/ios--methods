//
//  AppDelegate.m
//  AwesomeMenu
//
//  Created by Levey on 11/30/11.
//  Copyright (c) 2011 lunaapp.com. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor redColor];
    
    
    UIImage *storyMenuItemImage = [UIImage imageNamed:@"bg-menuitem.png"];
    UIImage *storyMenuItemImagePressed = [UIImage imageNamed:@"bg-menuitem-highlighted.png"];
    
    // Camera MenuItem.
    QuadCurveMenuItem *cameraMenuItem = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                      highlightedImage:storyMenuItemImagePressed 
                                          ContentImage:[UIImage imageNamed:@"icon-star.png"] 
                               highlightedContentImage:nil];   
    // People MenuItem.
    QuadCurveMenuItem *peopleMenuItem = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                      highlightedImage:storyMenuItemImagePressed 
                                          ContentImage:[UIImage imageNamed:@"icon-star.png"] 
                               highlightedContentImage:nil];    
    // Place MenuItem.
    QuadCurveMenuItem *placeMenuItem = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                     highlightedImage:storyMenuItemImagePressed 
                                         ContentImage:[UIImage imageNamed:@"icon-star.png"] 
                              highlightedContentImage:nil];

    QuadCurveMenuItem *placeMenuItem1 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed
                                                                   ContentImage:[UIImage imageNamed:@"icon-star.png"]
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *placeMenuItem2 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed
                                                                   ContentImage:[UIImage imageNamed:@"icon-star.png"]
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *placeMenuItem3 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed
                                                                   ContentImage:[UIImage imageNamed:@"icon-star.png"]
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *placeMenuItem4 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed
                                                                   ContentImage:[UIImage imageNamed:@"icon-star.png"]
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *placeMenuItem5 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed
                                                                   ContentImage:[UIImage imageNamed:@"icon-star.png"]
                                                        highlightedContentImage:nil];
    // Music MenuItem.

//    
    NSArray *menus = [NSArray arrayWithObjects:cameraMenuItem, peopleMenuItem, placeMenuItem, placeMenuItem1,placeMenuItem2,placeMenuItem3,placeMenuItem4,placeMenuItem5,nil];
    [cameraMenuItem release];
    [peopleMenuItem release];
    [placeMenuItem release];

    QuadCurveMenu *menu = [[QuadCurveMenu alloc] initWithFrame:self.window.bounds menus:menus];
    menu.delegate = self;
    [self.window addSubview:menu];
    [menu release];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)quadCurveMenu:(QuadCurveMenu *)menu didSelectIndex:(NSInteger)idx
{
    NSLog(@"Select the index : %d",idx);
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
