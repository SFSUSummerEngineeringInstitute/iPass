//
//  MySickassAppViewController.h
//  MySickassApp
//
//  Created by Student on 7/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ShapeView;

@interface MySickassAppViewController : UIViewController {
    
    UIButton * areaButton;
    
    UIButton * surfaceAreaButton;
    
    UIButton * volumeButton;
    
    UIButton * perimeterButton;
    
    UIButton * circleFormulaButton;
    
    UIButton * triangleFormulaButton;
    
    UIButton * squareFormulaButton;
    
    UIButton * cylinderFormulaButton;
    
    UIButton * cubeFormulaButton;
    
    UIImageView * pictureFrame;
    
    ShapeView * shapeView;
    
    int formulaMode;
    
}


@property (nonatomic, retain) IBOutlet UIButton * areaButton;

@property (nonatomic, retain) IBOutlet UIButton * surfaceAreaButton;

@property (nonatomic, retain) IBOutlet UIButton * volumeButton;

@property (nonatomic, retain) IBOutlet UIButton * perimeterButton;

@property (nonatomic, retain) IBOutlet UIButton * circleFormulaButton;

@property (nonatomic, retain) IBOutlet UIButton * triangleFormulaButton;

@property (nonatomic, retain) IBOutlet UIButton * squareFormulaButton; 

@property (nonatomic, retain) IBOutlet UIButton * cylinderFormulaButton;

@property (nonatomic, retain) IBOutlet UIButton * cubeFormulaButton;

@property (nonatomic, retain) IBOutlet UIImageView * pictureFrame;

@property (nonatomic, retain) IBOutlet ShapeView * shapeView;


- (IBAction)setToAreaMode:(id)sender;

- (IBAction)setToSurfaceAreaMode:(id)sender;

- (IBAction)setToVolumeMode:(id)sender;

- (IBAction)setToPerimeterMode:(id)sender;

- (IBAction)showCircleInfo;

- (IBAction)showTriangleInfo;

- (IBAction)showSquareInfo;

- (IBAction)showCylinderInfo;

- (IBAction)showCubeInfo;


@end
