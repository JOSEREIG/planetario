//
//  ViewController.m
//  planetario
//
//  Created by Jose on 06/12/13.
//  Copyright (c) 2013 JMReig. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _capa = [CALayer layer];
    _capa.bounds = CGRectMake(0, 0, 200, 200);
    _capa.position = self.view.center;
    //_capa.backgroundColor = [UIColor whiteColor].CGColor;
    _capa.cornerRadius = 100;
    _capa.borderWidth = 1.5;
    _capa.borderColor = [UIColor whiteColor].CGColor;
    
    
    _tierra = [CALayer layer];
    _tierra.bounds = CGRectMake(0, 0, 30, 30);
    _tierra.backgroundColor = [UIColor blueColor].CGColor;
    _tierra.position = CGPointMake(100, 0);
    _tierra.cornerRadius = 15;
    
    
    CALayer *luna = [CALayer layer];
    luna.bounds = CGRectMake(0, 0, 10, 10);
    luna.backgroundColor = [UIColor grayColor].CGColor;
    luna.position = CGPointMake(5, -8);
    luna.cornerRadius = 5;
    
    
    
    [self.view.layer addSublayer:_capa];
    [_capa addSublayer:_tierra];
    [_tierra addSublayer:luna];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animar:(id)sender
{
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    float angulo = 3*360*M_PI/180;
    rotationAnimation.toValue = [NSNumber numberWithFloat:angulo];
    rotationAnimation.duration = 10;
    
    [_tierra addAnimation:rotationAnimation forKey:@"animacion"];
    [_capa addAnimation:rotationAnimation forKey:@"animacion"];
    
    // Animación nave espacial.
    
    CALayer *nave = [CALayer layer];
    nave.contents = (id)[UIImage imageNamed:@"nave-espacial.png"].CGImage;
    nave.bounds = CGRectMake(0, 0, 70, 42);
    nave.position = CGPointMake(-70, self.view.center.y + 200.0);
    [self.view.layer addSublayer:nave];
    
    
    CABasicAnimation *naveAnimacion = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    naveAnimacion.toValue = [NSNumber numberWithFloat:400.0];
    naveAnimacion.duration = 5;
    
    [nave addAnimation:naveAnimacion forKey:@"animacionNave"];
    
}








@end
