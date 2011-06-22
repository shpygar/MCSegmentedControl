//
//  MCSegmentedControlDemoViewController.m
//  MCSegmentedControlDemo
//
//  Created by Matteo Caldari on 13/02/11.
//  Copyright 2011 Matteo Caldari. All rights reserved.
//

#import "MCSegmentedControlDemoViewController.h"
#import "MCSegmentedControl.h"

@implementation MCSegmentedControlDemoViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1.0];
	NSArray *items = [NSArray arrayWithObjects:
					  @"one",
					  @"two",
					  [UIImage imageNamed:@"star.png"],
					  nil];
	MCSegmentedControl *segmentedControl = [[MCSegmentedControl alloc] initWithItems:items];
	
	// set frame, add to view, set target and action for value change as usual
	segmentedControl.frame = CGRectMake(10.0f, 208.0f, 300.0f, 44.0f);
	[self.view addSubview:segmentedControl];
	[segmentedControl addTarget:self action:@selector(segmentedControlDidChange:) forControlEvents:UIControlEventValueChanged];
	
	segmentedControl.selectedSegmentIndex = 1;
	
	// Set a tint color
	segmentedControl.tintColor = [UIColor colorWithRed:.0 green:.6 blue:.0 alpha:1.0];
	
	// Customize font and items color
	segmentedControl.selectedItemColor   = [UIColor whiteColor];
	segmentedControl.unselectedItemColor = [UIColor darkGrayColor];

	[self.view addSubview:segmentedControl];
	[segmentedControl release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)segmentedControlDidChange:(MCSegmentedControl *)sender 
{
	NSLog(@"%d", [sender selectedSegmentIndex]);
}



@end
