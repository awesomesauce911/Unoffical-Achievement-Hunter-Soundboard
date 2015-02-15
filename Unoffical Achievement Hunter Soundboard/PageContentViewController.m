//
//  PageContentViewController.m
//  Unoffical Achievement Hunter Soundboard
//
//  Created by Rayan on 14/02/15.
//  Copyright (c) 2015 Rayan Sud. All rights reserved.
//

#import "PageContentViewController.h"
#import <AudioToolbox/AudioToolbox.h>
@interface PageContentViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) NSMutableArray *labels;


@end
SystemSoundID sound;
@implementation PageContentViewController double duration = 0.0f;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *w = [[NSUserDefaults standardUserDefaults] objectForKey:@"Width"];

    float width = [w floatValue];
    self.buttons = [[NSMutableArray alloc]init];
    self.labels = [[NSMutableArray alloc]init];
    
    self.scrollView.contentSize = CGSizeMake(width, (60*(self.titles.count+2)));
    [self addButtonsToScrollView];
    
    
    
    
    for(int i = 0; i<self.buttons.count; i++)
    {
        if(i < self.titles.count)
        {
            
        
            UIButton *b = self.buttons[i];
            UILabel *l = self.labels[i];
            NSString *im = self.images[i];
            
            
        
            
            NSString *t = self.titles[i];
        
            [b setHidden:NO];
            [l setHidden:NO];
            
            UIImage *imm = [UIImage imageNamed:im];
            if(imm)
                
            {
             
                [b setBackgroundImage:imm forState:UIControlStateNormal];
            
                
            }
            else
            {
                if(self.pageIndex == 0)
                {
                    [b setBackgroundImage:[UIImage imageNamed:@"ray.png"] forState:UIControlStateNormal];
                }
                else if(self.pageIndex == 1)
                {
                    [b setBackgroundImage:[UIImage imageNamed:@"gavin.png"] forState:UIControlStateNormal];
                }
            }
            
        [b setTag:i];
        
        [l setText:t];
        
        [b setTitle:@"" forState:UIControlStateNormal];
        
        
        [b addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
            
        }
        
        else
        {
            
            [self.buttons[i] setHidden:YES];
            [self.labels[i] setHidden:YES];
        }
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
NSTimer *playbackTimer;
-(void)buttonTapped:(UIButton *)sender
{
    AudioServicesDisposeSystemSoundID(sound);
    
    NSInteger t = sender.tag;
    
    
    
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:self.sounds[t] withExtension:@"wav"];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &sound);
    
    AudioServicesPlaySystemSound(sound);
    
}


-(void)addButtonsToScrollView
{
    int yPos = 50;
    for(int i = 0; i<self.titles.count; i++)
    {
        
        
        UIButton *b = [UIButton buttonWithType:UIButtonTypeSystem];
        b.frame = CGRectMake(30, yPos, 50, 50);
        
        [self.buttons addObject:b];
        
        [self.scrollView addSubview:b];
        
        
        UILabel *l = [[UILabel alloc]initWithFrame:CGRectMake(100, yPos, 200, 30)];
        
        [self.labels addObject:l];
        
        [self.scrollView addSubview:l];
        
        yPos += 60;
        
    }
    
    
}


@end
