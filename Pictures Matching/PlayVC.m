//
//  PlayVC.m
//  Pictures Matching
//
//  Created by Macbook on 26/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "PlayVC.h"


#define green @"green.jpg"

@interface PlayVC ()
{
    int score;
    NSString * selected;
    int timer;
    NSTimer *t;
    
    NSMutableArray * iArray;
    NSMutableDictionary * i;
    
    NSString * image1;
    NSString * image2;
    NSString * image3;
    
    NSString * firstImage;
    
}

@end

@implementation PlayVC

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    score = 0;
    
    iArray = [[NSMutableArray alloc] init];
    
    self.navigationController.navigationBar.hidden = false;
    
    firstImage = @"YES";
    
    if([_level isEqualToString:@"1"])
    {
        timer = 4;
    }
    else if([_level isEqualToString:@"2"])
    {
        timer = 3;
    }
    else if([_level isEqualToString:@"3"])
    {
        timer = 2;
    }
    else if([_level isEqualToString:@"4"])
    {
        timer = 1;
    }
    else if([_level isEqualToString:@"5"])
    {
        timer = 0;
    }
    
    [self disableButton];
    [self pickImages];
  

}

-(void)setGreens
{
    [_b1 setBackgroundColor:[UIColor greenColor]];
    [_b2 setBackgroundColor:[UIColor greenColor]];
    [_b3 setBackgroundColor:[UIColor greenColor]];
    [_b4 setBackgroundColor:[UIColor greenColor]];
    [_b5 setBackgroundColor:[UIColor greenColor]];
    [_b6 setBackgroundColor:[UIColor greenColor]];
    
    [self enableButton];
}

-(void) pickImages
{
    image1 = [NSString stringWithFormat:@"%d.png",arc4random()%30];
    image2 = [NSString stringWithFormat:@"%d.png",arc4random()%30];
    image3 = [NSString stringWithFormat:@"%d.png",arc4random()%30];
    
    
    int i = arc4random()%3;
    
    if (i == 1)
    {
        [self setArray1];
    }
    else if (i == 2)
    {
        [self setArray2];
    }
    else
    {
        [self setArray3];
    }
    
    
    
    _i1.image = [UIImage imageNamed:[iArray objectAtIndex:0]];
    _i2.image = [UIImage imageNamed:[iArray objectAtIndex:1]];
    _i3.image = [UIImage imageNamed:[iArray objectAtIndex:2]];
    _i4.image = [UIImage imageNamed:[iArray objectAtIndex:3]];
    _i5.image = [UIImage imageNamed:[iArray objectAtIndex:4]];
    _i6.image = [UIImage imageNamed:[iArray objectAtIndex:5]];
    
}



-(BOOL) getResult: (int ) i
{
    
    i = i-1;
    
    BOOL result = false;
    if ([selected isEqualToString:@"1"])
    {
       // result = [self firstimage:[UIImage imageNamed:[iArray objectAtIndex:i]]isEqualTo:[UIImage imageNamed:[iArray objectAtIndex:0]]];
        
        result = [[iArray objectAtIndex:i] isEqualToString:[iArray objectAtIndex:0]];
    }
    else if ([selected isEqualToString:@"2"])
    {
        //result = [self firstimage:[UIImage imageNamed:[iArray objectAtIndex:i]] isEqualTo:[UIImage imageNamed:[iArray objectAtIndex:1]]];
        result = [[iArray objectAtIndex:i] isEqualToString:[iArray objectAtIndex:1]];
    }
    else if ([selected isEqualToString:@"3"])
    {
       // result = [self firstimage: [UIImage imageNamed:[iArray objectAtIndex:i]] isEqualTo:[UIImage imageNamed:[iArray objectAtIndex:2]]];
        result = [[iArray objectAtIndex:i] isEqualToString:[iArray objectAtIndex:2]];
    }
    else if ([selected isEqualToString:@"4"])
    {
        //result = [self firstimage: [UIImage imageNamed:[iArray objectAtIndex:i]] isEqualTo:[UIImage imageNamed:[iArray objectAtIndex:3]]];
        result = [[iArray objectAtIndex:i] isEqualToString:[iArray objectAtIndex:3]];
    }
    else if ([selected isEqualToString:@"5"])
    {
       // result = [self firstimage:[UIImage imageNamed:[iArray objectAtIndex:i]] isEqualTo:[UIImage imageNamed:[iArray objectAtIndex:4]]];
        result = [[iArray objectAtIndex:i] isEqualToString:[iArray objectAtIndex:4]];
    }
    else if ([selected isEqualToString:@"6"])
    {
       // result = [self firstimage:[UIImage imageNamed:[iArray objectAtIndex:i]] isEqualTo:[UIImage imageNamed:[iArray objectAtIndex:5]]];
        result = [[iArray objectAtIndex:i] isEqualToString:[iArray objectAtIndex:5]];
    }
    
    return result;
}

-(void) disableButton
{
    
        _b1.enabled = false;
  
        _b2.enabled = false;
  
        _b3.enabled = false;
  
        _b4.enabled = false;
  
        _b5.enabled = false;
   
        _b6.enabled = false;
 
}


-(void) enableButton
{
    
    _b1.enabled = true;
    
    _b2.enabled = true;
    
    _b3.enabled = true;
    
    _b4.enabled = true;
    
    _b5.enabled = true;
    
    _b6.enabled = true;
    
}


- (IBAction)b1:(id)sender
{
    _b1.enabled = false;
    if ([firstImage isEqualToString:@"YES"])
    {
        [_b1 setBackgroundColor:[UIColor clearColor]];
        firstImage = @"NO";
        selected = @"1";
    }
    else
    {
        [_b1 setBackgroundColor:[UIColor clearColor]];
        
        if ([self getResult:1])
        {
            selected = @"";
            firstImage = @"YES";
            score = score + 100;
            _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
            
            if(score == 300)
            {
                _finalView.hidden = false;
                _congratulationsLabel.text = @"Congratulations You Won";
            }
        }
        else
        {
            _finalView.hidden = false;
            _congratulationsLabel.text = @"You Lost";
        }
    }
}


- (IBAction)b2:(id)sender
{
    _b2.enabled = false;
    if ([firstImage isEqualToString:@"YES"])
    {
        [_b2 setBackgroundColor:[UIColor clearColor]];
        firstImage = @"NO";
        selected = @"2";
    }
    else
    {
        [_b2 setBackgroundColor:[UIColor clearColor]];
        
        if ([self getResult:2])
        {
            selected = @"";
            firstImage = @"YES";
            score = score + 100;
            _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
            
            if(score == 300)
            {
                _finalView.hidden = false;
                _congratulationsLabel.text = @"Congratulations You Won";
            }
        }
        else
        {
            _finalView.hidden = false;
            _congratulationsLabel.text = @"You Lost";
        }
    }
}

- (IBAction)b3:(id)sender
{
    _b3.enabled = false;
    if ([firstImage isEqualToString:@"YES"])
    {
        [_b3 setBackgroundColor:[UIColor clearColor]];
        firstImage = @"NO";
        selected = @"3";
    }
    else
    {
        [_b3 setBackgroundColor:[UIColor clearColor]];
        
        if ([self getResult:3])
        {
            selected = @"";
            firstImage = @"YES";
            score = score + 100;
            _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
            
            if(score == 300)
            {
                _finalView.hidden = false;
                _congratulationsLabel.text = @"Congratulations You Won";
            }
        }
        else
        {
            _finalView.hidden = false;
            _congratulationsLabel.text = @"You Lost";
        }
    }
}

- (IBAction)b4:(id)sender
{
    _b4.enabled = false;
    if ([firstImage isEqualToString:@"YES"])
    {
        [_b4 setBackgroundColor:[UIColor clearColor]];
        firstImage = @"NO";
        selected = @"4";
    }
    else
    {
        [_b4 setBackgroundColor:[UIColor clearColor]];
        
        if ([self getResult:4])
        {
            selected = @"";
            firstImage = @"YES";
            score = score + 100;
            _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
            
            if(score == 300)
            {
                _finalView.hidden = false;
                _congratulationsLabel.text = @"Congratulations You Won";
            }
        }
        else
        {
            _finalView.hidden = false;
            _congratulationsLabel.text = @"You Lost";
        }
    }
}

- (IBAction)b5:(id)sender
{
    _b5.enabled = false;
    if ([firstImage isEqualToString:@"YES"])
    {
        [_b5 setBackgroundColor:[UIColor clearColor]];
        firstImage = @"NO";
        selected = @"5";
    }
    else
    {
        [_b5 setBackgroundColor:[UIColor clearColor]];
        
        if ([self getResult:5])
        {
            selected = @"";
            firstImage = @"YES";
            score = score + 100;
            _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
            
            if(score == 300)
            {
                _finalView.hidden = false;
                _congratulationsLabel.text = @"Congratulations You Won";
            }
        }
        else
        {
            _finalView.hidden = false;
            _congratulationsLabel.text = @"You Lost";
        }
    }
}

- (IBAction)b6:(id)sender
{
    _b6.enabled = false;
    if ([firstImage isEqualToString:@"YES"])
    {
        [_b6 setBackgroundColor:[UIColor clearColor]];
        firstImage = @"NO";
        selected = @"6";
    }
    else
    {
        [_b6 setBackgroundColor:[UIColor clearColor]];
        
        if ([self getResult:6])
        {
            selected = @"";
            firstImage = @"YES";
            score = score + 100;
            _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
            
            if(score == 300)
            {
                _finalView.hidden = false;
                _congratulationsLabel.text = @"Congratulations You Won";
            }
        }
        else
        {
            _finalView.hidden = false;
            _congratulationsLabel.text = @"You Lost";
        }
    }
}

-(void)timerLabel:(NSTimer *)timer1
{
    
    _timeLabel.text = [NSString stringWithFormat:@"%d",timer];
    
    if(timer==0)
    {
        [self setGreens];
        
        [t invalidate];
    }
    timer=timer-1;
}



-(void) setArray1
{
    iArray = [[NSMutableArray alloc] init];
    
    [iArray addObject:image1];
    [iArray addObject:image3];
    [iArray addObject:image2];
    [iArray addObject:image2];
    [iArray addObject:image1];
    [iArray addObject:image3];
}

-(void) setArray2
{
    iArray = [[NSMutableArray alloc] init];
    
    [iArray addObject:image1];
    [iArray addObject:image3];
    [iArray addObject:image2];
    [iArray addObject:image2];
    [iArray addObject:image3];
    [iArray addObject:image1];
}

-(void) setArray3
{
    iArray = [[NSMutableArray alloc] init];
    
    [iArray addObject:image1];
    [iArray addObject:image3];
    [iArray addObject:image2];
    [iArray addObject:image3];
    [iArray addObject:image1];
    [iArray addObject:image2];
}





-(BOOL)firstimage:(UIImage *)image1 isEqualTo:(UIImage *)image2 {
    NSData *data1 = UIImagePNGRepresentation(image1);
    NSData *data2 = UIImagePNGRepresentation(image2);
    
    return [data1 isEqualToData:data2];
}


- (IBAction)ok:(id)sender
{
    _firstView.hidden =true;
    
    t = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                         target: self
                                       selector:@selector(timerLabel:)
                                       userInfo: nil repeats:YES];
}

- (IBAction)finalOk:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
