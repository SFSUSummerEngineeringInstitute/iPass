//
//  ShapeView.h
//  MySickassApp
//
//  Created by Student on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ShapeView : UIView {
    
    UIImageView * shapePages;
    
}

@property (nonatomic, retain) IBOutlet UIImageView * shapePages;


- (void) initialSetup;

- (void) setupForShapeInfoWithImage: (UIImage *)image;

- (void) show;




@end
