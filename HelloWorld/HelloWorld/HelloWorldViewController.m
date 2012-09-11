//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Pavel Margolin on 9/10/12.
//  Copyright (c) 2012 Pavel Margolin. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
- (IBAction)changeGreeting:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation HelloWorldViewController
@synthesize textField;
@synthesize label;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
}

-(BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if(theTextField == self.textField){
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
