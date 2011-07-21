//
//  iHelperViewController.m
//  iHelper
//
//  Created by Emerson Malca on 7/19/11.
//  Copyright 2011 OneZeroWare. All rights reserved.
//

#import "iHelperViewController.h"
#import "MySickassAppViewController.h"
#import "TrigViewController.h"
#import "iHelper3ViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation iHelperViewController

@synthesize myScrollView;
@synthesize oneVC;
@synthesize twoVC;
@synthesize threeVC;
@synthesize pageControl;
@synthesize calc;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Add the multiple views
    UIView *oneView = oneVC.view;
    UIView *twoView = twoVC.view;
    UIView *threeView = threeVC.view;
    [oneView setFrame:CGRectMake(0.0, 0.0, 320.0, 400.0)];
    [twoView setFrame:CGRectMake(320.0, 0.0, 320.0, 400.0)];
    [threeView setFrame:CGRectMake(640.0, 0.0, 320.0, 400.0)];
    [myScrollView addSubview:oneView];
    [myScrollView addSubview:twoView];
    [myScrollView addSubview:threeView];
    [myScrollView setPagingEnabled:YES];
    [myScrollView setContentSize:CGSizeMake(960.0, 400.0)];
    
    [pageControl setNumberOfPages:3];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [self.calc setUserInteractionEnabled:YES];
    [self.calc addGestureRecognizer:tap];
    [tap release];

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

- (IBAction)panic:(id)sender {
    //Show calc
    [self.calc setHidden:NO];
}

- (void)tap:(UITapGestureRecognizer *)tap {
    if ([tap state] == UIGestureRecognizerStateRecognized) {
        //Hide calc
        [self.calc setHidden:YES];
    }
}

#pragma mark UIScrollView delegate methods

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    int page = scrollView.contentOffset.x/scrollView.frame.size.width;
    [pageControl setCurrentPage:page];
}

@end
