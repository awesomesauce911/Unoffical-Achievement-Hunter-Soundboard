//
//  ViewController.h
//  Unoffical Achievement Hunter Soundboard
//
//  Created by Rayan on 14/02/15.
//  Copyright (c) 2015 Rayan Sud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"
@interface RootViewController : UIViewController <UIPageViewControllerDataSource>
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *imageArrays;
@property (strong,nonatomic) NSArray *soundArrays;
@property (strong,nonatomic) NSArray *titleArrays;
@end

