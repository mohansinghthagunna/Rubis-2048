//
//  GamePlaySection.m
//  2048
//
//  Created by Developer8 on 2/3/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import "GamePlaySection.h"

@interface GamePlaySection ()

@end

@implementation GamePlaySection

- (void)viewDidLoad {
    [super viewDidLoad];
    calc2048Obj = [Calculation2048 new];
    [calc2048Obj startGame];
    [calc2048Obj addNewValue];
    [self setDesign];
    _lblPos.text = [calc2048Obj newAddedPos];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)swipeUp:(UISwipeGestureRecognizer *)sender {
    _lblDemo.text = @" You Swaped Up";
    [calc2048Obj solveDirection:0];
     [self setDesign];
     [self gameStatus];
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    _lblDemo.text = @"You Swaped Right";
     [calc2048Obj solveDirection:1];
     [self setDesign];
     [self gameStatus];
}

- (IBAction)swipeDown:(UISwipeGestureRecognizer *)sender {
    _lblDemo.text = @"You Swaped Down";
     [calc2048Obj solveDirection:2];
     [self setDesign];
     [self gameStatus];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    _lblDemo.text = @"You Swaped Left";
     [calc2048Obj solveDirection:3];
     [self setDesign];
    [self gameStatus];
}
-(void) gameStatus{
       if(![calc2048Obj isGameEnd])
    {
        _labelScore.text=[NSString stringWithFormat:@"Score : %i",[calc2048Obj score]];
       _lblPos.text = [calc2048Obj newAddedPos];
               }
       else{
           UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Rubi Says Game Finish" message:[NSString stringWithFormat: @"Thank you For Play Rubi's 2048  and your Best score is %i i hope u enjoy the game and come back soon to play this game thank you again ",[calc2048Obj score]]
                                                          delegate:nil
                                                 cancelButtonTitle:@"See you next time"
                                                 otherButtonTitles:nil];
           [alert show];

       }
}


- (IBAction)btnNewGame:(UIButton *)sender {
    calc2048Obj = [Calculation2048 new];
    [calc2048Obj startGame];
    [calc2048Obj addNewValue];
    [self setDesign];
    _lblDemo.text=@"Swap Up,Right,Left,Down";
    _labelScore.text=@"Score : 0";
    _lblPos.text = [calc2048Obj newAddedPos];
}

-(void) setDesign{
    
    for(int i=0;i<4;i++){
        for(int k=0;k<4;k++)
        {
            switch (i) {
                case 0:
                    switch (k) {
                        case 0:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                              _lblPos00.text=@"";
                            }
                            else{
                                 _lblPos00.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                           
                            break;
                        case 1:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos01.text=@"";
                            }
                            else{
                                _lblPos01.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                        case 2:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos02.text=@"";
                            }
                            else{
                                _lblPos02.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                        case 3:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos03.text=@"";
                            }
                            else{
                                _lblPos03.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                       
                        default:
                            break;
                    }
                    break;
                case 1:
                    switch (k) {
                        case 0:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos10.text=@"";
                            }
                            else{
                                _lblPos10.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            
                            break;
                        case 1:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos11.text=@"";
                            }
                            else{
                                _lblPos11.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                        case 2:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos12.text=@"";
                            }
                            else{
                                _lblPos12.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                        case 3:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos13.text=@"";
                            }
                            else{
                                _lblPos13.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;

                            
                        default:
                            break;
                    }
                    break;
                    
                case 2:
                    switch (k) {
                        case 0:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos20.text=@"";
                            }
                            else{
                                _lblPos20.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            
                            break;
                        case 1:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos21.text=@"";
                            }
                            else{
                                _lblPos21.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                        case 2:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos22.text=@"";
                            }
                            else{
                                _lblPos22.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                        case 3:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos23.text=@"";
                            }
                            else{
                                _lblPos23.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                            
                        default:
                            break;
                    }
                    break;
                    
                case 3:
                    switch (k) {
                        case 0:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos30.text=@"";
                            }
                            else{
                                _lblPos30.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            
                            break;
                        case 1:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos31.text=@"";
                            }
                            else{
                                _lblPos31.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                        case 2:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos32.text=@"";
                            }
                            else{
                                _lblPos32.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;
                        case 3:
                            if([calc2048Obj rowPos:i colPos:k]==0){
                                _lblPos33.text=@"";
                            }
                            else{
                                _lblPos33.text=[NSString stringWithFormat:@"%i",[calc2048Obj rowPos:i colPos:k]];
                            }
                            break;

                            
                        default:
                            break;
                    }
                    break;
                    

                default:
                    break;
            }
            
        }
    }
}
@end
