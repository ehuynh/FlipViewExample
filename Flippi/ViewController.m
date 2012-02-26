//
//  ViewController.m
//  Flippi
//
//  Created by Edward Huynh on 26/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "BackSideViewController.h"
#import "FrontSideViewController.h"

@interface ViewController ()

@property (nonatomic, strong) FrontSideViewController *frontSideViewController;

@end

@implementation ViewController

@synthesize containerView = _containerView;
@synthesize frontSideViewController = _frontSideViewController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.frontSideViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FrontSideViewController"];
    self.frontSideViewController.view.frame = CGRectMake(0, 0, 200, 200);
    [self.containerView addSubview:self.frontSideViewController.view];
}

- (void)viewDidUnload
{
    [self setContainerView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
