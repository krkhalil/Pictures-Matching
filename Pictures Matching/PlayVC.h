//
//  PlayVC.h
//  Pictures Matching
//
//  Created by Macbook on 26/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlayVC : UIViewController

@property NSString * level;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;



@property (weak, nonatomic) IBOutlet UIImageView *i1;
@property (weak, nonatomic) IBOutlet UIImageView *i2;
@property (weak, nonatomic) IBOutlet UIImageView *i3;
@property (weak, nonatomic) IBOutlet UIImageView *i4;
@property (weak, nonatomic) IBOutlet UIImageView *i5;
@property (weak, nonatomic) IBOutlet UIImageView *i6;


@property (weak, nonatomic) IBOutlet UIView *firstView;

@property (weak, nonatomic) IBOutlet UIView *finalView;
@property (weak, nonatomic) IBOutlet UILabel *congratulationsLabel;

@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b5;
@property (weak, nonatomic) IBOutlet UIButton *b6;

@end

NS_ASSUME_NONNULL_END
