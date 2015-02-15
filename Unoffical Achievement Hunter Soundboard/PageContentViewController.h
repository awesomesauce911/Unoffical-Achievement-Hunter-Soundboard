//
//  PageContentViewController.h
//  Unoffical Achievement Hunter Soundboard
//
//  Created by Rayan on 14/02/15.
//  Copyright (c) 2015 Rayan Sud. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface PageContentViewController : UIViewController <UIScrollViewDelegate>
@property NSUInteger pageIndex;
@property NSArray *images;
@property NSArray *sounds;
@property NSArray *titles;

@property (strong, nonatomic) NSMutableArray *buttons;

@end
