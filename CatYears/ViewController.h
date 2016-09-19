//
//  ViewController.h
//  CatYears
//
//  Created by Mac on 09/09/16.
//  Copyright © 2016 Akshay. All rights reserved.
//
#define kAllUIElementHeight 50.0

#define kHorizantalPadding 20.0
#define kVerticalPadding 20.0
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    CGFloat screenWidth;
    CGFloat screenHeight;
    CGFloat textFileWidth;
    CGFloat calButtonYCoordinate;
    CGFloat displayLabelYCoordinate;
    CGFloat buttonClearWidth;
    UILabel *displayLabel;
    UITextField *myTextfield;
    UIView *backView;
}

@end

