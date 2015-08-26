//
//  SJScrollViewSegue.m
//  CustomSegue
//
//  Created by sujian on 15/8/12.
//  Copyright (c) 2015年 sujian. All rights reserved.
//

#import "SJScrollViewSegue.h"
#import "SJSlideMenuMainViewController.h"
@implementation SJScrollViewSegue
- (void)perform{
    
    SJSlideMenuMainViewController *viewController = self.sourceViewController;
    UIViewController *destinationViewController = self.destinationViewController;
    [viewController.scrollView addSubview:destinationViewController.view];
    double delayInSeconds = 0.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        CGRect bounds = viewController.view.bounds;
        destinationViewController.view.frame = CGRectMake(viewController.x,0,bounds.size.width,bounds.size.height);
        viewController.x+=viewController.view.frame.size.width;
    });
}
@end
