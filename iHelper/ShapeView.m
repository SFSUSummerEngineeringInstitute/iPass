//
//  ShapeView.m
//  MySickassApp
//
//  Created by Student on 7/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ShapeView.h"


@implementation ShapeView 

@synthesize shapePages;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        // Initialization code
        
        [self initialSetup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)decoder {
    
    self = [super initWithCoder:decoder];
    
    if (self) {
        //Initialization code

        [self initialSetup];
    }
    return self;
}

- (void)initialSetup {
    
    UITapGestureRecognizer *tap = [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)] autorelease];
    
    [self addGestureRecognizer:tap];
}

- (void)setupForShapeInfoWithImage:(UIImage *)image {
    
    [shapePages setImage: image];
}

- (void)show { 
    
    [UIView animateWithDuration:0.3  
                     animations:^ {
                         [self setAlpha:1.0];
                     }];
}
    
    
- (void)tap:(UITapGestureRecognizer *)sender {
       
        if ([sender state] == UIGestureRecognizerStateRecognized) {
            //Animate out
            [UIView animateWithDuration:0.3  
                             animations:^ {
                                 [self setAlpha:0.0];
                             }];
    }
    
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    [super dealloc];
}

@end
