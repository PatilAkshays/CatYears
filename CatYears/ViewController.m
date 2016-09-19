//
//  ViewController.m
//  CatYears
//
//  Created by Mac on 09/09/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import "ViewController.h"
#define kHeightOfStatusBar 20.0

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor =[UIColor orangeColor];
//    
//    self.view.layer.borderColor = [[UIColor whiteColor]CGColor];
//    
//    self.view.layer.borderWidth = 2;
//    

    
    
    screenWidth =[[UIScreen mainScreen]bounds].size.width;
    
    screenHeight =[[UIScreen mainScreen]bounds].size.height;
    
    textFileWidth = screenWidth - (3*kHorizantalPadding)-100;
    
    calButtonYCoordinate = kAllUIElementHeight +(2*kVerticalPadding)+120;
    
    displayLabelYCoordinate = (kVerticalPadding)+(2*kAllUIElementHeight)+250;
    
    buttonClearWidth = screenWidth -(2*kHorizantalPadding)- textFileWidth+200;
    
    
   
    CGRect viewFrame = CGRectMake(0, kHeightOfStatusBar, screenWidth, screenHeight-kHeightOfStatusBar);
    
    backView = [[UIView alloc]initWithFrame:viewFrame];
    
    backView.backgroundColor = [UIColor redColor];
    
    backView.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    backView.layer.borderWidth=3;
    
    
    [self.view addSubview:backView];
    
    
    UIView *downView =[[UIView alloc]initWithFrame: CGRectMake(0, screenHeight-(3*kVerticalPadding), screenWidth, 60)];
    
    downView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:downView];
    
    
    myTextfield = [[UITextField alloc]initWithFrame:CGRectMake(kHorizantalPadding, 100, 20+textFileWidth, kAllUIElementHeight)];
    
    [myTextfield setBorderStyle:UITextBorderStyleBezel];

    [myTextfield setPlaceholder:@"Enter Human Age:"];
    
    [myTextfield setBorderStyle:UITextBorderStyleRoundedRect];
    
    [myTextfield setFont:[UIFont boldSystemFontOfSize:30]];
    
    [myTextfield setKeyboardType:UIKeyboardTypeNumberPad];
   
      myTextfield.delegate = self;
    
    [self.view addSubview:myTextfield];
    
    
    
    UIButton *calButton = [[UIButton alloc]initWithFrame:CGRectMake(7*kHorizantalPadding,calButtonYCoordinate, kAllUIElementHeight+80, kAllUIElementHeight+80)];
    
    calButton.backgroundColor=[UIColor greenColor];
    
    
    calButton.layer.borderColor =[UIColor purpleColor].CGColor;
    
    calButton.layer.borderWidth = 3;
    
    
    [calButton setTitle:@"CalCAT" forState:UIControlStateNormal];
    
    [calButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    calButton.titleLabel.font = [UIFont systemFontOfSize:35];
    
    [calButton addTarget:self action:@selector(handelCal) forControlEvents:UIControlEventTouchUpInside];
    
    calButton.layer.cornerRadius = 65;
    

        [self.view addSubview:calButton];
    
    UIButton *buttonClear = [[UIButton alloc]initWithFrame:CGRectMake(buttonClearWidth, 90, kAllUIElementHeight+20, kAllUIElementHeight+20)];
    
    buttonClear.backgroundColor=[UIColor blackColor];
    
    buttonClear.layer.cornerRadius =50;
    
    buttonClear.layer.borderColor = [UIColor whiteColor].CGColor;
    
    buttonClear.layer.borderWidth = 3;
    
    [buttonClear setTitle:@"<-" forState:UIControlStateNormal];
    
    [buttonClear setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    buttonClear.titleLabel.font=[UIFont systemFontOfSize:30];
    
    [buttonClear addTarget:self action:@selector(handelClear) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonClear];
                             
                             
    
    
    
    displayLabel = [[UILabel alloc]initWithFrame:CGRectMake(kHorizantalPadding, displayLabelYCoordinate, screenWidth - (2*kHorizantalPadding), kAllUIElementHeight+20)];
    
    
    displayLabel.backgroundColor = [UIColor grayColor];
    

    
    displayLabel.textColor = [UIColor whiteColor];
    
    [displayLabel setFont:[UIFont boldSystemFontOfSize:30]];
    
    displayLabel.layer.borderColor = [UIColor yellowColor].CGColor;
    
    
    displayLabel.layer.borderWidth = 3;
    
    displayLabel.textAlignment = NSTextAlignmentCenter;
    
    
    [self.view addSubview:displayLabel];
    
    
    
    
}

-(void)handelCal {
    NSString *currentValueString = myTextfield.text;
    
    float currentValueFloat = currentValueString.floatValue;
    
    if(currentValueFloat >0) {
    
        currentValueFloat = currentValueFloat / 7;
        
        NSString *newValueString = [NSString stringWithFormat:@"CatYear Age is:%0.02f",currentValueFloat];
        
        displayLabel.text = newValueString;
       }
    
    else{
        NSString *newValueString = [NSString stringWithFormat:@"Please Enter a Valid Age"];
        
        displayLabel.text = newValueString;
          }

    
    
}


//-(BOOL)textFieldShouldReturn:(UITextField *)textField {
//    
//    [textField resignFirstResponder];
//    return YES;
//}

-(void)handelClear {
    myTextfield.text=@"";
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
