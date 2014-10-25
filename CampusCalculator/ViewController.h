//
//  ViewController.h
//  CampusCalculator
//
//  Created by Adil  Virani on 10/23/14.
//  Copyright (c) 2014 Adil  Virani. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{ Plus,Minus,Multiply,Divide} CalcOperation;


@interface ViewController : UIViewController <UIAlertViewDelegate> {
    IBOutlet UITextField *display;
    IBOutlet UIButton *cbutton;
    NSString *storage;
    CalcOperation operation;
}

- (IBAction) button1;
- (IBAction) button2;
- (IBAction) button3;
- (IBAction) button4;
- (IBAction) button5;
- (IBAction) button6;
- (IBAction) button7;
- (IBAction) button8; 
- (IBAction) button9;
- (IBAction) button0;
- (IBAction) button01;
- (IBAction) plusbutton;
- (IBAction) equalsbutton;
- (IBAction) clearDisplay;


@end
