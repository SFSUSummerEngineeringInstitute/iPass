//
//  MySickassAppViewController.m
//  MySickassApp
//
//  Created by Student on 7/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MySickassAppViewController.h"

#import <QuartzCore/Quartzcore.h>

#import "ShapeView.h"

@implementation MySickassAppViewController

@synthesize areaButton;

@synthesize surfaceAreaButton;

@synthesize volumeButton;

@synthesize perimeterButton;

@synthesize squareFormulaButton;

@synthesize circleFormulaButton;

@synthesize triangleFormulaButton;

@synthesize cylinderFormulaButton;

@synthesize cubeFormulaButton;

@synthesize pictureFrame;

@synthesize shapeView;


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

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];


   //Set the background
    self.view.layer.contents = (id)[UIImage imageNamed:@"paperBackground.png"].CGImage;
    self.view.contentMode = UIViewContentModeTop;
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

- (IBAction)setToAreaMode:(id)sender {

    //change background wheel color
    UIImage *areaWheel = [UIImage imageNamed:@"greenCircle.png"];
    [pictureFrame setImage:areaWheel];
    
    //setting the buttons functionalities
    [squareFormulaButton setEnabled:YES];
    [triangleFormulaButton setEnabled:YES];
    [circleFormulaButton setEnabled:YES];
    [squareFormulaButton setAlpha:1];
    [triangleFormulaButton setAlpha:1];
    [circleFormulaButton setAlpha:1];
    [cylinderFormulaButton setEnabled:YES];
    [cylinderFormulaButton setAlpha:1];
    
    //setting the global mode
    
    formulaMode = 0;
    
}

- (IBAction)setToSurfaceAreaMode:(id)sender {
    
    //change background wheel color
    UIImage *surfaceAreaWheel = [UIImage imageNamed:@"darkBlueCircle.png"];
    [pictureFrame setImage:surfaceAreaWheel];
    
    //setting the buttons functionalities
    [squareFormulaButton setEnabled:YES];
    [triangleFormulaButton setEnabled:YES];
    [circleFormulaButton setEnabled:YES];
    [squareFormulaButton setAlpha:1];
    [triangleFormulaButton setAlpha:1];
    [circleFormulaButton setAlpha:1];
    [cylinderFormulaButton setEnabled:YES];
    [cylinderFormulaButton setAlpha:1];
    
    //setting the global mode
    
    formulaMode = 1;
          
}

- (IBAction)setToVolumeMode:(id)sender {
    
    //change background wheel color
    UIImage *volumeWheel = [UIImage imageNamed:@"magentaCircle.png"];
    [pictureFrame setImage:volumeWheel];
    
    //setting the global mode
    
    //gray out all 2D (circle,triangle,square)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    [squareFormulaButton setEnabled:NO];
    [triangleFormulaButton setEnabled:NO];
    [circleFormulaButton setEnabled:NO];
    [squareFormulaButton setAlpha:.5];
    [triangleFormulaButton setAlpha:.5];
    [circleFormulaButton setAlpha:.5];
    [cylinderFormulaButton setEnabled:YES];
    [cylinderFormulaButton setAlpha:1];
    
    formulaMode = 2;
    
}

- (IBAction)setToPerimeterMode:(id)sender {
    
    //change background wheel color
    UIImage *perimeterWheel = [UIImage imageNamed:@"spaceCircle.png"];
    [pictureFrame setImage:perimeterWheel];
    
    //Fading out Cylinder button
    [squareFormulaButton setEnabled:YES];
    [triangleFormulaButton setEnabled:YES];
    [circleFormulaButton setEnabled:YES];
    [squareFormulaButton setAlpha:1];
    [triangleFormulaButton setAlpha:1];
    [circleFormulaButton setAlpha:1];
    [cylinderFormulaButton setEnabled:NO];
    [cylinderFormulaButton setAlpha:.5];
    
    //setting the global mode
    
    formulaMode = 3;
    
}


- (IBAction)showCircleInfo {
    
    if (formulaMode == 0 || formulaMode == 1) {
        // code so that area/surface area (the same) page pops up [ X x Y = ]
        UIImage *areaCircle = [UIImage imageNamed:@"areaCircle.png"];
        [shapeView setupForShapeInfoWithImage:areaCircle];
        [shapeView show];
        
    } else if (formulaMode == 3) {
        // code so that perimeter page pops up [ X + X + X + X... X x 4 = ]
        UIImage *perimeterCircle = [UIImage imageNamed:@"perimeterCircle.png"];
        [shapeView setupForShapeInfoWithImage:perimeterCircle];
        [shapeView show];
        
    }
}

- (IBAction)showTriangleInfo {
    
    if (formulaMode == 0 || formulaMode == 1) {
        // code so that area/surface area (the same) page pops up [
        UIImage *areaTriangle = [UIImage imageNamed:@"areaTriangle.png"];
        [shapeView setupForShapeInfoWithImage:areaTriangle];
        [shapeView show];
        
    } else if (formulaMode == 3) {
        // code so that perimeter page pops up []
        UIImage *perimeterTriangle = [UIImage imageNamed:@"perimeterTriangle.png"];
        [shapeView setupForShapeInfoWithImage:perimeterTriangle];
        [shapeView show];
    }
}

- (IBAction)showSquareInfo {
    
    if (formulaMode == 0 || formulaMode == 1) {
        // code so that area/surface area (the same) page pops up []
        UIImage *areaSquare = [UIImage imageNamed:@"areaSquare.png"];
        [shapeView setupForShapeInfoWithImage:areaSquare];
        [shapeView show];
        
    } else if (formulaMode == 3) {
        // code so that perimeter page pops up []
        UIImage *perimeterSquare = [UIImage imageNamed:@"perimeterSquare.png"];
        [shapeView setupForShapeInfoWithImage:perimeterSquare];
        [shapeView show];
    
    }
}

- (IBAction)showCylinderInfo {
    
    if (formulaMode == 0 || formulaMode == 1) {
        // code so that area/surface area (the same) page pops up []
        UIImage *areaCylinder = [UIImage imageNamed:@"areaCylinder.png"];
        [shapeView setupForShapeInfoWithImage:areaCylinder];
        [shapeView show];
        
    } else if (formulaMode == 2) {
        // code so that volume page pops up []
        UIImage *volumeCylinder = [UIImage imageNamed:@"volumeCylinder.png"];
        [shapeView setupForShapeInfoWithImage:volumeCylinder];
        [shapeView show];
        
    } else if (formulaMode == 3) {
        // code so that perimeter page pops up [] 
        UIImage *perimeterCylinder = [UIImage imageNamed:@"perimeterCylinder.png"];
        [shapeView setupForShapeInfoWithImage:perimeterCylinder];
        [shapeView show];
        
    }
}

- (IBAction)showCubeInfo {
    
    if (formulaMode == 0) {
        //code so that area page pops up []
        UIImage *areaCube = [UIImage imageNamed:@"areaCube.png"];
        [shapeView setupForShapeInfoWithImage:areaCube];
        [shapeView show];
        
    } else if (formulaMode == 1) {
        //code so that surface area page pops up
        UIImage *surfaceAreaCube = [UIImage imageNamed:@"surfaceAreaCube.png"];
        [shapeView setupForShapeInfoWithImage:surfaceAreaCube];
        [shapeView show];
        
    } else if (formulaMode == 2) {
        // code so that volume page pops up [ H x W x L... X x Y x Z = ]
        UIImage *volumeCube= [UIImage imageNamed:@"volumeCube.png"];
        [shapeView setupForShapeInfoWithImage:volumeCube];
        [shapeView show];
        
    } else if (formulaMode == 3) {
        // code so that perimeter page pops up [ 12 x X = ] 
        UIImage *perimeterCube = [UIImage imageNamed:@"perimeterCube.png"];
        [shapeView setupForShapeInfoWithImage:perimeterCube];
        [shapeView show];
        
    }
    
}

@end
