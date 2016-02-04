//
//  ViewController.m
//  2048
//
//  Created by Developer8 on 2/3/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPlayPressed:(id)sender {
    gamePlaySectionObj = [[GamePlaySection alloc] initWithNibName:@"GamePlaySection" bundle:nil];
    [self.view addSubview:gamePlaySectionObj.view];
}

- (IBAction)btnExit:(UIButton *)sender {
    exit(0);
}
@end
