//
//  BackSideViewController.m
//  Flippi
//
//  Created by Edward Huynh on 26/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BackSideViewController.h"
#import "FrontSideViewController.h"

@interface BackSideViewController ()

@property (nonatomic, strong) FrontSideViewController *frontSideViewController;

@end

@implementation BackSideViewController

@synthesize frontSideViewController = _frontSideViewController;

- (IBAction)flip1BtnPressed:(id)sender {
    self.frontSideViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FrontSideViewController"];
    [UIView transitionWithView:self.view.superview
                      duration:1.0
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        [self.view.superview addSubview:self.frontSideViewController.view];
                        [self.view removeFromSuperview];
                    }
                    completion:NULL];
    self.frontSideViewController.view.frame = CGRectMake(0, 0, 200, 200);
}

- (IBAction)flip2BtnPressed:(id)sender {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight
						   forView:self.view.superview
							 cache:YES];
    
    self.frontSideViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FrontSideViewController"];
	[UIView commitAnimations];
	[self.view.superview addSubview:self.frontSideViewController.view];
    [self.view removeFromSuperview];
    self.frontSideViewController.view.frame = CGRectMake(0, 0, 200, 200);
}

- (IBAction)flip3BtnPressed:(id)sender {    
    self.frontSideViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FrontSideViewController"];
    [UIView transitionFromView:self.view toView:self.frontSideViewController.view duration:1.0 options:UIViewAnimationOptionTransitionFlipFromLeft completion:nil];
    self.frontSideViewController.view.frame = CGRectMake(0, 0, 200, 200);    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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

@end
