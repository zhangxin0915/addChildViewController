//
//  ViewController.h
//  test
//
//  Created by Bizapper VM MacOS  on 15/11/15.
//  Copyright (c) 2015年 Bizapper VM MacOS . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)first:(UIButton *)sender;
- (IBAction)second:(UIButton *)sender;
- (IBAction)thrid:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (nonatomic,strong) UIViewController *currentViewController;
@end

