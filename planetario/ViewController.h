//
//  ViewController.h
//  planetario
//
//  Created by Jose on 06/12/13.
//  Copyright (c) 2013 JMReig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) CALayer *capa;
@property (strong, nonatomic) CALayer *tierra;
@property (strong, nonatomic) CALayer *nave;

- (IBAction)animar:(id)sender;

@end
