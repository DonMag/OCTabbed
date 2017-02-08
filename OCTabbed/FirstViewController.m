//
//  FirstViewController.m
//  OCTabbed
//
//  Created by Don Mag on 2/8/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.tabBarController.delegate = self;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
	
	NSLog(@"in shouldSelectViewController ... %@", viewController);
	
	if (![viewController isEqual:self]) {
		
		// VC to be selected is NOT self, but let's just make sure self is the current VC in the TabBarController
		
		if ([self.tabBarController.selectedViewController isEqual:self] ) {
			
			NSLog(@"save settings here...");
			
		}

	}
	
	return YES;
	
}

@end
