//
//  SJSlideMenuMainViewController.m
//  CustomSegue
//
//  Created by sujian on 15/8/12.
//  Copyright (c) 2015年 sujian. All rights reserved.
//

#import "SJSlideMenuMainViewController.h"

@interface SJSlideMenuMainViewController ()

@end

@implementation SJSlideMenuMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = self.view.frame.size.width * 2;
    CGFloat height = self.view.frame.size.height;
    self.scrollView.contentSize = CGSizeMake(width, height-64);
    [self setup];
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setup{
    [self performSegueWithIdentifier:@"view1" sender:nil];
    [self performSegueWithIdentifier:@"view2" sender:nil];
}
@end
