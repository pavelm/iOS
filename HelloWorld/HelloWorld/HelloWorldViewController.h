//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Pavel Margolin on 9/10/12.
//  Copyright (c) 2012 Pavel Margolin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
<UITextFieldDelegate>

@property (copy,nonatomic) NSString *userName;

@end
