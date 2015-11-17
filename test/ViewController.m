//
//  ViewController.m
//  test
//
//  Created by Bizapper VM MacOS  on 15/11/15.
//  Copyright (c) 2015年 Bizapper VM MacOS . All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()
{
    FirstViewController *firstViewController;
    SecondViewController *secondViewController;
    ThirdViewController *thirdViewController;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    firstViewController=[[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    [self addChildViewController:firstViewController];
    
    secondViewController=[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self addChildViewController:secondViewController];
    
   thirdViewController=[[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    [self addChildViewController:thirdViewController];
    
    
    [self.contentView addSubview:firstViewController.view];
    self.currentViewController = firstViewController;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)first:(UIButton *)sender {
//    [self didMoveToParentViewController:secondViewController];
//    [self didMoveToParentViewController:thirdViewController];

    if (![self.currentViewController isKindOfClass:[firstViewController class]]) {
        [self transitionFromViewController:self.currentViewController toViewController:firstViewController duration:1 options:UIViewAnimationOptionTransitionCurlUp animations:^{
        }  completion:^(BOOL finished) {
            //......
        }];
        self.currentViewController=firstViewController;
    }
   
   
}

- (IBAction)second:(UIButton *)sender {
//    [self didMoveToParentViewController:firstViewController];
//    [self didMoveToParentViewController:thirdViewController];
    if (![self.currentViewController isKindOfClass:[secondViewController class]]) {
        [self transitionFromViewController:self.currentViewController toViewController:secondViewController duration:1 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        }  completion:^(BOOL finished) {
            //......
        }];
        self.currentViewController=secondViewController;
    }
}

- (IBAction)thrid:(UIButton *)sender {
//    [self didMoveToParentViewController:secondViewController];
//    [self didMoveToParentViewController:firstViewController];
    if (![self.currentViewController isKindOfClass:[thirdViewController class]]) {
        [self transitionFromViewController:self.currentViewController toViewController:thirdViewController duration:1 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
        }  completion:^(BOOL finished) {
            //......
        }];
        self.currentViewController=thirdViewController;
        
    }
}
@end
