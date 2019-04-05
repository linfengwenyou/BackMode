//
//  LiveController.m
//  BackModeDemo
//
//  Created by LIUSONG on 2019/4/2.
//  Copyright © 2019 Rayor. All rights reserved.
//

#import "LiveController.h"
#import "FMBackModeManager.h"

@interface LiveController ()

@end

@implementation LiveController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor blueColor];
	
	[[FMBackModeManager shared] activeBackMode];
	[self startTimer];
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	
	[FMBackModeManager shared].soundActive = ![FMBackModeManager shared].soundActive;
	
}

- (void)viewDidDisappear:(BOOL)animated {
//	[[FMBackModeManager shared] invalidBackModel];
}

#warning lius 需要注意一点 控制器并不会销毁，因为里面有一个死循环占用着内存
- (void)startTimer {
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
		[self registerNotification];
	});
}

- (void)registerNotification {
	static NSInteger n;
	n++;
	[UIApplication sharedApplication].applicationIconBadgeNumber = n;
	[self startTimer];
	NSLog(@"---------------%ld",n);
}

@end
