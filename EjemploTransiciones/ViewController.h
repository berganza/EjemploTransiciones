//
//  ViewController.h
//  EjemploTransiciones
//
//  Created by LLBER on 03/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView * imagen1;
@property (nonatomic, strong) IBOutlet UIImageView * imagen2;

-(IBAction)efectoVoltear:(id)sender;
-(IBAction)efectoDisolver:(id)sender;

@end
