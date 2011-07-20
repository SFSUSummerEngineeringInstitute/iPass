//
//  iHelperAppDelegate.h
//  iHelper
//
//  Created by Emerson Malca on 7/19/11.
//  Copyright 2011 OneZeroWare. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iHelperViewController;

@interface iHelperAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet iHelperViewController *viewController;

@end
