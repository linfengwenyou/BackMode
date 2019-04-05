//
//  AppDelegate.h
//  BackModeDemo
//
//  Created by LIUSONG on 2019/4/2.
//  Copyright © 2019 Rayor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

