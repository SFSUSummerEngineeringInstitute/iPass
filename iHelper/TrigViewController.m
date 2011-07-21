//
//  TrigViewController.m
//  Trig
//
//  Created by Student on 7/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TrigViewController.h"

@implementation TrigViewController

@synthesize btnNormal;

@synthesize btnInverse;

@synthesize imageView; 


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

- (IBAction)changeImageToNormal {
    
    UIImage *newImage = [UIImage imageNamed:@"normal.png"];
    [imageView setImage:newImage];
    
}
    
    - (IBAction)changeImageToInverse {
        
        UIImage *newImage = [UIImage imageNamed:@"inverse.png"];
        [imageView setImage:newImage];
    
}





@end
