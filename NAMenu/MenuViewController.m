//
//  ViewController.m
//
//  Created by Cameron Saul on 02/20/2012.
//  Copyright 2012 Cameron Saul. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "MenuViewController.h"
#import "NAMenuItem.h"
#import "SampleViewController.h"

@interface MenuViewController()
- (NSArray *)createMenuItems;
@end

@implementation MenuViewController

#pragma mark - Memory Management

- (id)init {
	self = [super init];
	
	if (self) {
		[self setMenuItems:[self createMenuItems]];
	}
	
	return self;
}


#pragma mark - Local Methods

- (NSArray *)createMenuItems {
	NSMutableArray *items = [[NSMutableArray alloc] init];
	
	// First Item
	NAMenuItem *item1 = [[NAMenuItem alloc] initWithTitle:@"First Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item1];
	
	// Second Item
	NAMenuItem *item2 = [[NAMenuItem alloc] initWithTitle:@"Second Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item2];
	
	// Third Item
	NAMenuItem *item3 = [[NAMenuItem alloc] initWithTitle:@"Third Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item3];
	
	// Fourth Item
	NAMenuItem *item4 = [[NAMenuItem alloc] initWithTitle:@"Fourth Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item4];
	
	// Fifth Item
	NAMenuItem *item5 = [[NAMenuItem alloc] initWithTitle:@"Fifth Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item5];
	
	// Sixth Item
	NAMenuItem *item6 = [[NAMenuItem alloc] initWithTitle:@"Sixth Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item6];
	
	// Seventh Item
	NAMenuItem *item7 = [[NAMenuItem alloc] initWithTitle:@"Seventh Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item7];
	
	// Eighth Item
	NAMenuItem *item8 = [[NAMenuItem alloc] initWithTitle:@"Eighth Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item8];

	// Ninth Item
	NAMenuItem *item9 = [[NAMenuItem alloc] initWithTitle:@"Ninth Item" 
													 image:[UIImage imageNamed:@"icon.png"] 
												   vcClass:[SampleViewController class]];
	[items addObject:item9];
	
	return items;
}


#pragma mark - View Lifecycle

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.navigationItem.title = @"Main Menu";
	self.view.backgroundColor = [UIColor whiteColor];
}

@end
