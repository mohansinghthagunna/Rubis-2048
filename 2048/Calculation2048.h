//
//  Calculation2048.h
//  2048
//
//  Created by Developer8 on 2/3/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculation2048 : NSObject{
    NSMutableArray *firstRow;
    NSMutableArray *secondRow;
    NSMutableArray *thirdRow;
    NSMutableArray *fourthRow;
    bool r1;
    bool r2;
    bool r3;
    bool r4;
    int score;
    int newRow;
    int newCol;
  //  NSMutableArray *dataIn2018;
}
-(void) startGame;
-(void) solveDirection:(int)direction;
-(void) leftDirection;
-(void) rightDirection;
-(void) upDirection;
-(void) DownDirection;
-(int) rowPos:(int)row colPos:(int)col;
-(Boolean) isGameEnd;
-(void) addNewValue;
-(int) score;
-(NSString *) newAddedPos;
@end
