//
//  TrigViewController.h
//  Trig
//
//  Created by Student on 7/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TrigViewController : UIViewController {
    
    UIButton * btnNormal;
    
    UIButton * btnInverse;
        
    UIImageView * imageView;
    
    
}


@property (nonatomic, retain) IBOutlet UIButton * btnNormal;

@property (nonatomic, retain) IBOutlet UIButton * btnInverse;

@property (nonatomic, retain) IBOutlet UIImageView * imageView;



- (IBAction)changeImageToNormal;

- (IBAction)changeImageToInverse;



@end
