//
//  ViewController.m
//  BackModeDemo
//
//  Created by LIUSONG on 2019/4/2.
//  Copyright © 2019 Rayor. All rights reserved.
//

#import "ViewController.h"
#import "LiveController.h"
#import "FMKeepVCManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	
	LiveController *vc = (LiveController *)[[FMKeepVCManager shared] liveVCFromManager:[LiveController class]];
	if (!vc) {
		vc = [LiveController new];
		[[FMKeepVCManager shared].keepVCs addObject:vc];
	}
	[self.navigationController pushViewController:vc animated:YES];
}

@end
