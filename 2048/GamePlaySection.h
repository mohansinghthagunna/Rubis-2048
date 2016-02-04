//
//  GamePlaySection.h
//  2048
//
//  Created by Developer8 on 2/3/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculation2048.h"
@interface GamePlaySection : UIViewController{
    Calculation2048 *calc2048Obj;
}
@property (strong, nonatomic) IBOutlet UILabel *lblDemo;
- (IBAction)swipeUp:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeDown:(UISwipeGestureRecognizer *)sender;
@property (strong, nonatomic) IBOutlet UILabel *labelScore;

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
@property (strong, nonatomic) IBOutlet UILabel *lblPos00;
@property (strong, nonatomic) IBOutlet UILabel *lblPos01;
@property (strong, nonatomic) IBOutlet UILabel *lblPos02;
@property (strong, nonatomic) IBOutlet UILabel *lblPos03;

@property (strong, nonatomic) IBOutlet UILabel *lblPos10;
@property (strong, nonatomic) IBOutlet UILabel *lblPos11;
@property (strong, nonatomic) IBOutlet UILabel *lblPos12;
@property (strong, nonatomic) IBOutlet UILabel *lblPos13;

@property (strong, nonatomic) IBOutlet UILabel *lblPos20;
@property (strong, nonatomic) IBOutlet UILabel *lblPos21;
@property (strong, nonatomic) IBOutlet UILabel *lblPos22;
@property (strong, nonatomic) IBOutlet UILabel *lblPos23;

@property (strong, nonatomic) IBOutlet UILabel *lblPos30;
@property (strong, nonatomic) IBOutlet UILabel *lblPos31;
@property (strong, nonatomic) IBOutlet UILabel *lblPos32;
@property (strong, nonatomic) IBOutlet UILabel *lblPos33;
@property (strong, nonatomic) IBOutlet UILabel *lblPos;

- (IBAction)btnNewGame:(UIButton *)sender;


-(void) setDesign;
-(void) gameStatus;
@end
