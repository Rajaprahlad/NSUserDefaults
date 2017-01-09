//
//  ViewController.m
//  NSUserDefaults
//
//  Created by Prahlad on 1/7/17.
//  Copyright © 2017 Prahlad. All rights reserved.
//

#import "ViewController.h"
#define k_Save @"save"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *savedapp = [NSUserDefaults standardUserDefaults];
    bool saved = [savedapp boolForKey:k_Save];
    if (!saved) {
        self.Label.text = @"THE APP HAS NOT BEEN SAVED";
    }else
    {
        self.Label.text =@"THE APP HAS BEEN SAVED";
    }
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)SaveButton:(id)sender {
    NSUserDefaults *savedapp = [NSUserDefaults standardUserDefaults];
    [savedapp setBool:TRUE forKey:k_Save];
    [savedapp synchronize];
    self.Label.text = @"THE APP HAS BEEN SAVED";
}
@end
