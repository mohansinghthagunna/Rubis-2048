//
//  ViewController.h
//  2048
//
//  Created by Developer8 on 2/3/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePlaySection.h"
@interface ViewController : UIViewController{
    GamePlaySection *gamePlaySectionObj;
}

- (IBAction)btnPlayPressed:(id)sender;
- (IBAction)btnExit:(UIButton *)sender;

@end

