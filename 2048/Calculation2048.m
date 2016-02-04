//
//  Calculation2048.m
//  2048
//
//  Created by Developer8 on 2/3/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import "Calculation2048.h"

@implementation Calculation2048
-(void) startGame{
    firstRow = [[NSMutableArray alloc] initWithObjects:@"0",@"0",@"0",@"0", nil];
    secondRow = [[NSMutableArray alloc] initWithObjects:@"0",@"0",@"0",@"0", nil];
    thirdRow = [[NSMutableArray alloc] initWithObjects:@"0",@"0",@"0",@"0", nil];
    fourthRow = [[NSMutableArray alloc] initWithObjects:@"0",@"0",@"0",@"0", nil];
    score=0;
  //  dataIn2018 = [[NSMutableArray alloc] initWithObjects:firstRow,secondRow,thirdRow,fourthRow,nil];
}
-(Boolean) isGameEnd{
    for(int col=0;col<4;col++){
        if( [[firstRow objectAtIndex:col] isEqual:@"0"]){
            return false;
        }
        if( [[secondRow objectAtIndex:col] isEqual:@"0"]){
            return false;
        }
        if( [[thirdRow objectAtIndex:col] isEqual:@"0"]){
            return false;
        }
        if( [[fourthRow objectAtIndex:col] isEqual:@"0"]){
            return false;
        }
    }
    for(int i=0;i<4;i++){
        
        if(i<3){
        if([firstRow objectAtIndex:i] == [firstRow objectAtIndex:i+1] ){
            return false;
        }
        if([secondRow objectAtIndex:i] == [secondRow objectAtIndex:i+1]){
            return false;
        }
        if([thirdRow objectAtIndex:i] == [thirdRow objectAtIndex:i+1]){
            return false;
        }
        if([fourthRow objectAtIndex:i] == [fourthRow objectAtIndex:i+1]){
            return false;
        }
        }
        if([firstRow objectAtIndex:i] == [secondRow objectAtIndex:i]){
            return false;
        }
        if([secondRow objectAtIndex:i] == [thirdRow objectAtIndex:i]){
            return false;
        }
        if([thirdRow objectAtIndex:i] == [fourthRow objectAtIndex:i]){
            return false;
        }
       
    }
    return true;
}
-(int) score{
    return score;
}
-(NSString *) newAddedPos{
    return [NSString stringWithFormat:@"Added Row= %i, Column= %i",newRow,newCol];
}
-(void) addNewValue{
    int rowSelect=arc4random() % 4;
    int colSelect=arc4random() % 4;
    newRow=rowSelect;
    newCol=colSelect;
    
    if([[firstRow objectAtIndex:colSelect] isEqual:@"0"] && rowSelect==0){
        firstRow[colSelect]=@"2";
        return;
    }
    else if([[secondRow objectAtIndex:colSelect] isEqual:@"0"] && rowSelect==1){
        secondRow[colSelect]=@"2";
        return;
    }
    else if([[thirdRow objectAtIndex:colSelect] isEqual:@"0"] && rowSelect==2){
        thirdRow[colSelect]=@"2";
        return;
    }
    else if([[fourthRow objectAtIndex:colSelect] isEqual:@"0"] && rowSelect==3){
        fourthRow[colSelect]=@"2";
        return;
    }
    else{
        for(int i=0;i<4;i++){
            newCol=i;
            if([[firstRow objectAtIndex:i] isEqual:@"0"] ){
                firstRow[i]=@"2";
                newRow=0;
                return;
            }
            else if([[secondRow objectAtIndex:i] isEqual:@"0"] ){
                secondRow[i]=@"2";
                newRow=1;
                return;
            }
            else if([[thirdRow objectAtIndex:i] isEqual:@"0"] ){
                thirdRow[i]=@"2";
                newRow=2;
                return;
            }
            else if([[fourthRow objectAtIndex:i] isEqual:@"0"] ){
                fourthRow[i]=@"2";
                newRow=3;
                return;
            }
        }
    }

    
}
-(void) solveDirection:(int)direction{
    if(direction==0){
        [self upDirection ];
    }
    else if(direction==1){
        [self rightDirection ];
    }
    else if(direction==2){
        [self downDirection ];
    }
    else if(direction==3){
        [self leftDirection];
    }
    score++;
    [self addNewValue];
}
-(int) rowPos:(int)row colPos:(int)col{
    if(row==0)
    {
        return (int)[[firstRow objectAtIndex:col] integerValue];
    }
    else if(row==1){
         return (int)[[secondRow objectAtIndex:col] integerValue];
    }
    else if(row==2){
         return (int)[[thirdRow objectAtIndex:col] integerValue];
    }
    else if(row==3){
         return (int)[[fourthRow objectAtIndex:col] integerValue];
    }
    return 0;
}
-(void) leftDirection{
  
    for(int lp=0;lp<2;lp++){
    for(int i=1;i<4;i++)
    {
        //firstrow
        if([[firstRow objectAtIndex:i-1] isEqual:[firstRow objectAtIndex:i]] &&  ![[firstRow objectAtIndex:i-1] isEqual:@"0"]){
            
            firstRow[i-1] = [NSString stringWithFormat:@"%i",(int)[[firstRow objectAtIndex:i-1] integerValue]+(int)[[firstRow objectAtIndex:i] integerValue]];
            firstRow[i] = [NSString stringWithFormat:@"0"];
            
        }
        //secondrow
        if([[secondRow objectAtIndex:i-1] isEqual:[secondRow objectAtIndex:i]] &&  ![[secondRow objectAtIndex:i-1] isEqual:@"0"]){
            
            secondRow[i-1] = [NSString stringWithFormat:@"%i",(int)[[secondRow objectAtIndex:i-1] integerValue]+(int)[[secondRow objectAtIndex:i] integerValue]];
            secondRow[i] = [NSString stringWithFormat:@"0"];
            
        }
        //thirdrow
        if([[thirdRow objectAtIndex:i-1] isEqual:[thirdRow objectAtIndex:i]] &&  ![[thirdRow objectAtIndex:i-1] isEqual:@"0"]){
            
            thirdRow[i-1] = [NSString stringWithFormat:@"%i",(int)[[thirdRow objectAtIndex:i-1] integerValue]+(int)[[thirdRow objectAtIndex:i] integerValue]];
            thirdRow[i] = [NSString stringWithFormat:@"0"];
            
        }
        //fourthrow
        if([[fourthRow objectAtIndex:i-1] isEqual:[fourthRow objectAtIndex:i]] &&  ![[fourthRow objectAtIndex:i-1] isEqual:@"0"]){
            
            fourthRow[i-1] = [NSString stringWithFormat:@"%i",(int)[[fourthRow objectAtIndex:i-1] integerValue]+(int)[[fourthRow objectAtIndex:i] integerValue]];
            fourthRow[i] = [NSString stringWithFormat:@"0"];
            
        }
    }
    
    for(int row=0;row<3;row++)
    {
        r1=true;
        r2=true;
        r3=true;
        r4=true;
        //firstRow
        if([[firstRow objectAtIndex:row] isEqual:@"0"])
        {
            for(int col=row+1;col<4;col++){
                if(![[firstRow objectAtIndex:col] isEqual:@"0"] && r1){
                    
                    firstRow[row] = firstRow[col];
                    firstRow[col]=[NSString stringWithFormat:@"0"];
                    r1=false;
                }
            }
        }
        //secondrow
        if([[secondRow objectAtIndex:row] isEqual:@"0"])
        {
            for(int col=row+1;col<4;col++){
                if(![[secondRow objectAtIndex:col] isEqual:@"0"]&& r2){
                    
                    secondRow[row] = secondRow[col];
                    secondRow[col]=[NSString stringWithFormat:@"0"];
                     r2=false;
                }
            }
        }
//thirdRow
        if([[thirdRow objectAtIndex:row] isEqual:@"0"])
        {
            for(int col=row+1;col<4;col++){
                if(![[thirdRow objectAtIndex:col] isEqual:@"0"]&& r3){
                    
                    thirdRow[row] = thirdRow[col];
                    thirdRow[col]=[NSString stringWithFormat:@"0"];
                     r3=false;
                }
            }
        }
//fourthrow
        if([[fourthRow objectAtIndex:row] isEqual:@"0"])
        {
            for(int col=row+1;col<4;col++){
                if(![[fourthRow objectAtIndex:col] isEqual:@"0"]&& r4){
                    
                    fourthRow[row] = fourthRow[col];
                    fourthRow[col]=[NSString stringWithFormat:@"0"];
                     r4=false;
                }
            }
        }

    }
}
}
-(void) rightDirection{
    for(int lp=0;lp<2;lp++){
    for(int i=2;i>=0;i--)
    {
        //firstrow
        if([[firstRow objectAtIndex:i+1] isEqual:[firstRow objectAtIndex:i]] &&  ![[firstRow objectAtIndex:i+1] isEqual:@"0"]){
            
            firstRow[i+1] = [NSString stringWithFormat:@"%i",(int)[[firstRow objectAtIndex:i+1] integerValue]+(int)[[firstRow objectAtIndex:i] integerValue]];
            firstRow[i] = [NSString stringWithFormat:@"0"];
            
        }
        //secondrow
        if([[secondRow objectAtIndex:i+1] isEqual:[secondRow objectAtIndex:i]] &&  ![[secondRow objectAtIndex:i+1] isEqual:@"0"]){
            
            secondRow[i+1] = [NSString stringWithFormat:@"%i",(int)[[secondRow objectAtIndex:i+1] integerValue]+(int)[[secondRow objectAtIndex:i] integerValue]];
            secondRow[i] = [NSString stringWithFormat:@"0"];
            
        }
        //thirdrow
        if([[thirdRow objectAtIndex:i+1] isEqual:[thirdRow objectAtIndex:i]] &&  ![[thirdRow objectAtIndex:i+1] isEqual:@"0"]){
           
            thirdRow[i+1] = [NSString stringWithFormat:@"%i",(int)[[thirdRow objectAtIndex:i+1] integerValue]+(int)[[thirdRow objectAtIndex:i] integerValue]];
            thirdRow[i] = [NSString stringWithFormat:@"0"];
            
        }
        //fourthrow
        if([[fourthRow objectAtIndex:i+1] isEqual:[fourthRow objectAtIndex:i]] &&  ![[fourthRow objectAtIndex:i+1] isEqual:@"0"]){
          
            fourthRow[i+1] = [NSString stringWithFormat:@"%i",(int)[[fourthRow objectAtIndex:i+1] integerValue]+(int)[[fourthRow objectAtIndex:i] integerValue]];
            fourthRow[i] = [NSString stringWithFormat:@"0"];
            
        }
    }
    
    for(int row=3;row>0;row--)
    {
        r1=true;
        r2=true;
        r3=true;
        r4=true;
        //firstRow
        if([[firstRow objectAtIndex:row] isEqual:@"0"])
        {
            for(int col=row-1;col>=0;col--){
                if(![[firstRow objectAtIndex:col] isEqual:@"0"] && r1){
                    
                    firstRow[row] = firstRow[col];
                    firstRow[col]=[NSString stringWithFormat:@"0"];
                    r1=false;
                }
            }
        }
        //secondrow
        if([[secondRow objectAtIndex:row] isEqual:@"0"])
        {
            for(int col=row-1;col>=0;col--){
                if(![[secondRow objectAtIndex:col] isEqual:@"0"]&& r2){
                    
                    secondRow[row] = secondRow[col];
                    secondRow[col]=[NSString stringWithFormat:@"0"];
                     r2=false;
                }
            }
        }
        //thirdRow
        if([[thirdRow objectAtIndex:row] isEqual:@"0"])
        {
            for(int col=row-1;col>=0;col--){
                if(![[thirdRow objectAtIndex:col] isEqual:@"0"]&& r3){
                    
                    thirdRow[row] = thirdRow[col];
                    thirdRow[col]=[NSString stringWithFormat:@"0"];
                     r3=false;
                }
            }
        }
        //fourthrow
        if([[fourthRow objectAtIndex:row] isEqual:@"0"])
        {
            for(int col=row-1;col>=0;col--){
                if(![[fourthRow objectAtIndex:col] isEqual:@"0"]&& r4){
                    
                    fourthRow[row] = fourthRow[col];
                    fourthRow[col]=[NSString stringWithFormat:@"0"];
                     r4=false;
                }
            }
        }
        
    }
    }
}
-(void) upDirection{
   for(int lp=0;lp<2;lp++){
    for(int i=0;i<4;i++)
    {
        //first row and second row in ith column
        if([[firstRow objectAtIndex:i] isEqual:[secondRow objectAtIndex:i]] &&  ![[firstRow objectAtIndex:i] isEqual:@"0"]){
            
            firstRow[i] = [NSString stringWithFormat:@"%i",(int)[[firstRow objectAtIndex:i] integerValue]+(int)[[secondRow objectAtIndex:i] integerValue]];
            secondRow[i] = [NSString stringWithFormat:@"0"];
            
        }
        //second row and third row in ith column
        if([[secondRow objectAtIndex:i] isEqual:[thirdRow objectAtIndex:i]] &&  ![[secondRow objectAtIndex:i] isEqual:@"0"]){
            
            secondRow[i] = [NSString stringWithFormat:@"%i",(int)[[secondRow objectAtIndex:i] integerValue]+(int)[[thirdRow objectAtIndex:i] integerValue]];
            thirdRow[i] = [NSString stringWithFormat:@"0"];
        }
            //third row and fourth row in ith column
            if([[thirdRow objectAtIndex:i] isEqual:[fourthRow objectAtIndex:i]] &&  ![[thirdRow objectAtIndex:i] isEqual:@"0"]){
                
                thirdRow[i] = [NSString stringWithFormat:@"%i",(int)[[thirdRow objectAtIndex:i] integerValue]+(int)[[fourthRow objectAtIndex:i] integerValue]];
                fourthRow[i] = [NSString stringWithFormat:@"0"];
            }
       
    }
    
    for(int col=0;col<4;col++)
    {
      
        if([[firstRow objectAtIndex:col] isEqual:@"0"]){
                if(![[secondRow objectAtIndex:col] isEqual:@"0"]){
                    firstRow[col]=secondRow[col];
                    secondRow[col]=@"0";
                }
                else if(![[thirdRow objectAtIndex:col] isEqual:@"0"]){
                    firstRow[col]=thirdRow[col];
                    thirdRow[col]=@"0";
                }
                else if(![[fourthRow objectAtIndex:col] isEqual:@"0"]){
                    firstRow[col]=fourthRow[col];
                    fourthRow[col]=@"0";
                }
            }
        
        if([[secondRow objectAtIndex:col] isEqual:@"0"]){
             if(![[thirdRow objectAtIndex:col] isEqual:@"0"]){
                secondRow[col]=thirdRow[col];
                thirdRow[col]=@"0";
            }
            else if(![[fourthRow objectAtIndex:col] isEqual:@"0"]){
                secondRow[col]=fourthRow[col];
                fourthRow[col]=@"0";
            }
        }
        if([[thirdRow objectAtIndex:col] isEqual:@"0"]){
            if(![[fourthRow objectAtIndex:col] isEqual:@"0"]){
                thirdRow[col]=fourthRow[col];
                fourthRow[col]=@"0";
            }
        }

        
    }
}
}
-(void) downDirection{
    for(int lp=0;lp<2;lp++){
    for(int i=3;i>=0;i--)
    {
        //third row and fourth row in ith column
        if([[fourthRow objectAtIndex:i] isEqual:[thirdRow objectAtIndex:i]] &&  ![[fourthRow objectAtIndex:i] isEqual:@"0"]){
            
            fourthRow[i] = [NSString stringWithFormat:@"%i",(int)[[thirdRow objectAtIndex:i] integerValue]+(int)[[fourthRow objectAtIndex:i] integerValue]];
            thirdRow[i] = [NSString stringWithFormat:@"0"];
        }
      
        //second row and third row in ith column
        if([[thirdRow objectAtIndex:i] isEqual:[secondRow objectAtIndex:i]] &&  ![[thirdRow objectAtIndex:i] isEqual:@"0"]){
            
            thirdRow[i] = [NSString stringWithFormat:@"%i",(int)[[secondRow objectAtIndex:i] integerValue]+(int)[[thirdRow objectAtIndex:i] integerValue]];
            secondRow[i] = [NSString stringWithFormat:@"0"];
        }
        
        //first row and second row in ith column
        if([[firstRow objectAtIndex:i] isEqual:[secondRow objectAtIndex:i]] &&  ![[secondRow objectAtIndex:i] isEqual:@"0"]){
            
            secondRow[i] = [NSString stringWithFormat:@"%i",(int)[[firstRow objectAtIndex:i] integerValue]+(int)[[secondRow objectAtIndex:i] integerValue]];
            firstRow[i] = [NSString stringWithFormat:@"0"];
            
        }
        
        
        
    }
    
    for(int col=3;col>=0;col--)
    {
        
        if([[fourthRow objectAtIndex:col] isEqual:@"0"]){
            if(![[thirdRow objectAtIndex:col] isEqual:@"0"]){
                fourthRow[col]=thirdRow[col];
                thirdRow[col]=@"0";
            }
            else if(![[secondRow objectAtIndex:col] isEqual:@"0"]){
                fourthRow[col]=secondRow[col];
                secondRow[col]=@"0";
            }
            else if(![[firstRow objectAtIndex:col] isEqual:@"0"]){
                fourthRow[col]=firstRow[col];
                firstRow[col]=@"0";
            }
        }
        
        if([[thirdRow objectAtIndex:col] isEqual:@"0"]){
            if(![[secondRow objectAtIndex:col] isEqual:@"0"]){
                thirdRow[col]=secondRow[col];
                secondRow[col]=@"0";
            }
            else if(![[firstRow objectAtIndex:col] isEqual:@"0"]){
                thirdRow[col]=firstRow[col];
                firstRow[col]=@"0";
            }
        }
        if([[secondRow objectAtIndex:col] isEqual:@"0"]){
            if(![[firstRow objectAtIndex:col] isEqual:@"0"]){
                secondRow[col]=firstRow[col];
                firstRow[col]=@"0";
            }
        }
        
        
    }
}
}
@end
