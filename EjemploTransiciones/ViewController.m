//
//  ViewController.m
//  EjemploTransiciones
//
//  Created by LLBER on 03/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imagen1, imagen2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.imagen1];

}

- (void)transicion:(UIViewAnimationOptions)options
{
    UIView *fromView, *toView;
    
    if ([self.imagen1 superview] != nil)
    {
        fromView = self.imagen1;
        toView = self.imagen2;
    }
    else
    {
        fromView = self.imagen2;
        toView = self.imagen1;
    }
    
    [UIView transitionFromView:fromView
                        toView:toView
                      duration:2.0
                       options:options
                    completion:^(BOOL finished) {
                    }];
}


-(IBAction)efectoVoltear:(id)sender {
    
    UIViewAnimationOptions transitionOptions = ([self.imagen1 superview] != nil) ?
    UIViewAnimationOptionTransitionFlipFromLeft : UIViewAnimationOptionTransitionFlipFromRight;
    
    [self transicion:transitionOptions];
}
-(IBAction)efectoDisolver:(id)sender {
    
    
    [self transicion:UIViewAnimationOptionTransitionCrossDissolve];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
