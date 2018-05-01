//
//  AppDelegate.h
//  LaurencesRecipeBook
//
//  Created by Laurence Wingo on 11/11/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UINavigationController *navigationcontroller;
@property (nonatomic, strong) UIViewController *rootViewController;
@property (nonatomic, strong) UIViewController *secondViewController;
@property (nonatomic, strong) UIViewController *thirdViewController;

@end
