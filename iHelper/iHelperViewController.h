//
//  iHelperViewController.h
//  iHelper
//
//  Created by Emerson Malca on 7/19/11.
//  Copyright 2011 OneZeroWare. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MySickassAppViewController;
@class TrigViewController;
@class iHelper3ViewController;

@interface iHelperViewController : UIViewController <UIScrollViewDelegate> {
    
    UIScrollView *myScrollView;
    MySickassAppViewController *oneVC;
    TrigViewController *twoVC;
    iHelper3ViewController *threeVC;
    UIPageControl *pageControl;
    
    UIImageView *calc;
}

@property (nonatomic, retain) IBOutlet UIScrollView *myScrollView;
@property (nonatomic, retain) IBOutlet MySickassAppViewController *oneVC;
@property (nonatomic, retain) IBOutlet TrigViewController *twoVC;
@property (nonatomic, retain) IBOutlet iHelper3ViewController *threeVC;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;

@property (nonatomic, retain) IBOutlet UIImageView *calc;

- (IBAction)panic:(id)sender;

@end
