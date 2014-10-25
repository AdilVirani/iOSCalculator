//
//  ViewController.m
//  CampusCalculator
//
//  Created by Adil  Virani on 10/23/14.
//  Copyright (c) 2014 Adil  Virani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) clearDisplay {
    display.text = @"";
}

-(void)addNumber:(NSString *)buttonValue{
    // Get the display text of the calculator and put into a string
    NSMutableString *displayString = [[NSMutableString alloc] initWithString:display.text];
    // Append the value to the string
    [displayString appendString:buttonValue];
    // Set the display text
    display.text = displayString;
}

- (IBAction) button1 {
    //display.text=[NSString stringWithFormat:@"%@1",display.text];
    [self addNumber:@"1"];
}
- (IBAction) button2 {
    //display.text=[NSString stringWithFormat:@"%@2",display.text];
    [self addNumber:@"2"];
}
- (IBAction) button3 {
    //display.text=[NSString stringWithFormat:@"%@3",display.text];
    [self addNumber:@"3"];
}

- (IBAction) button4 {
    //display.text=[NSString stringWithFormat:@"%@4",display.text];
    [self addNumber:@"4"];
}

- (IBAction) button5 {
    //display.text=[NSString stringWithFormat:@"%@5",display.text];
    [self addNumber:@"5"];
}

- (IBAction) button6 {
    //display.text=[NSString stringWithFormat:@"%@6",display.text];
    [self addNumber:@"6"];
}

- (IBAction) button7 {
    //display.text=[NSString stringWithFormat:@"%@7",display.text];
    [self addNumber:@"7"];
}

- (IBAction) button8 {
    //display.text=[NSString stringWithFormat:@"%@8",display.text];
    [self addNumber:@"8"];
}

- (IBAction) button9 {
    //display.text=[NSString stringWithFormat:@"%@9",display.text];
    [self addNumber:@"9"];
}

- (IBAction) button0 {
    //display.text=[NSString stringWithFormat:@"%@0",display.text];
    [self addNumber:@"0"];
}

- (IBAction) button01 {
    //display.text=[NSString stringWithFormat:@"%@.",display.text];
    [self addNumber:@"."];
}

- (IBAction) plusbutton {
    operation = Plus;
    storage = display.text;
    display.text=@"";
}

- (IBAction) minusbutton {
    operation = Minus;
    storage = display.text;
    display.text=@"";
}

- (IBAction) multiplybutton {
    operation = Multiply;
    storage = display.text;
    display.text=@"";
}

- (IBAction) dividebutton {
    operation = Divide;
    storage = display.text;
    display.text=@"";
}

- (IBAction) equalsbutton {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
    }
}
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        NSLog(@"Cancel Tapped.");
    }
    else if (buttonIndex == 1) {
        NSLog(@"OK Tapped. Hello World!");
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Add wait timer for 20 seconds for alert.
    NSTimer *waitTimer = [NSTimer scheduledTimerWithTimeInterval:20.0 target:self selector:@selector(wrongAnswer:) userInfo:nil repeats:NO];
}

-(void)wrongAnswer{
    // Add wrong alert
    wrongAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Question 2 is wrong." delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    // Show alert
    [wrongAlert show];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

