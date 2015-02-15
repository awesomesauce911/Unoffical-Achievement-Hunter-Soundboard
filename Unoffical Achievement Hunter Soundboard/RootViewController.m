//
//  ViewController.m
//  Unoffical Achievement Hunter Soundboard
//
//  Created by Rayan on 14/02/15.
//  Copyright (c) 2015 Rayan Sud. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _imageArrays = @[
                     
                     @[@"420-blaze-it.png",
                       @"420.png",
                       @"1234rayisthewinner.png",
                       @"enderman.png",
                       @"flynt-coal.png",
                       @"goingcakeless.png",
                       @"gotem.png",
                       @"just-blaze.png",
                       @"llletsplay.png",
                       @"loud-scream.png",
                       @"makeitrainroses.png",
                       @"nowayinnowayout.png",
                       @"smokin-dat-herb.png",
                       @"jbl.png",
                       @"jublay.png"
                       
                       ],
                     
                     @[
                         
                         @"1-2-3-4.png",
                         @"aaah.png",
                         @"ah-creeper.png",
                         @"bloody-heck.png",
                         @"bollock.png",
                         @"buggar-my-ass.png",
                         @"but-micheal.png",
                         @"flynt-coal.png",
                         @"frenderman.png",
                         @"girlyscream.png",
                         @"jacks-asshole.png",
                         @"ringtone.png",
                         @"rinsy-little-prick.png",
                         @"run-micheal.png",
                         @"screen-lookin-prick.png",
                         @"something-is-going-on-guys.png",
                         @"tease-it.png",
                         @"who-knicked-my-effin-fish.png",
                         @"why-micheal.png",
                         @"wot.png"
                         
                         ],
                     
                     
                     @[
                         
                         @"achievement-hunter-intro-outro-song-full-hd.png",
                         @"roosterteeth-letsplay-technical-difficulties-music-download-link.png",
                         @"achievement-hunter-intro-its-a-jungle-out-there.png",
                         @"go-intro.png",
                         @"lets-build-intro.png",
                         @"llletsplay.png",
                         @"vs.png"
                         
                         
                         
                         ],
                     
                     
                     
                     
                     ];
    
    
    
    _soundArrays = @[
                     
                     @[@"420-blaze-it",
                       @"420",
                       @"1234rayisthewinner",
                       @"enderman",
                       @"flynt-coal",
                       @"goingcakeless",
                       @"gotem",
                       @"just-blaze",
                       @"llletsplay",
                       @"loud-scream",
                       @"makeitrainroses",
                       @"nowayinnowayout",
                       @"smokin-dat-herb",
                       @"jbl",
                       @"jublay"
                       ],
                     
                     @[
                         
                         @"1-2-3-4",
                         @"aaah",
                         @"ah-creeper",
                         @"bloody-heck",
                         @"bollock",
                         @"buggar-my-ass",
                         @"but-micheal",
                         @"flynt-coal",
                         @"frenderman",
                         @"girlyscream",
                         @"jacks-asshole",
                         @"ringtone",
                         @"rinsy-little-prick",
                         @"run-micheal",
                         @"screen-lookin-prick",
                         @"something-is-going-on-guys",
                         @"tease-it",
                         @"who-knicked-my-effin-fish",
                         @"why-micheal",
                         @"wot"
                         
                         ],
                     
                     
                     @[
                         
                         @"achievement-hunter-intro-outro-song-full-hd",
                         @"roosterteeth-letsplay-technical-difficulties-music-download-link",
                         @"achievement-hunter-intro-its-a-jungle-out-there",
                         @"go-intro",
                         @"lets-build-intro",
                         @"llletsplay",
                         @"vs"
                         
                         
                         
                         ],
                     
                     
                     
                     
                     ];
    
    _titleArrays = @[
                     
                     @[@"420 Blaze It",
                       @"420",
                       @"1-2-3-4 Ray Wins",
                       @"Enderman!",
                       @"Flynt-Coal",
                       @"Going Cakeless",
                       @"Go 'Em",
                       @"Just Blaze",
                       @"Llletsplay",
                       @"Loud Scream",
                       @"Make It Rain Roses",
                       @"No Way In No Way Out",
                       @"Smokin Dat Herb",
                       @"JBL",
                       @"Jublay"
                       ],
                     
                     @[
                         
                         @"1-2-3-4",
                         @"Aaaaaah",
                         @"Ah Creeper",
                         @"Bloody Heck",
                         @"Bollock",
                         @"Bugger My Arse",
                         @"But Michael",
                         @"Flynt-Coal!",
                         @"Frenderman",
                         @"Girly scream",
                         @"Jacks asshole",
                         @"Ringtone",
                         @"Rinsy Little Prick",
                         @"Run Michael",
                         @"Screen-lookin Prick",
                         @"Something is going on, guys",
                         @"Tease It",
                         @"Nicked Fish",
                         @"Why, Michael?",
                         @"w0t"
                         
                         ],
                     
                     
                     @[
                         
                         @"Intro/Outro Sound",
                         @"Technical Difficulties",
                         @"It's a Jungle Out There!",
                         @"Intro to GO!",
                         @"Let's Build Intro",
                         @"Llletsplay",
                         @"Versus Intro"
                         
                         
                         
                         ],

                     
                   
                     
                     
                     ];
    
    // Create page view controller
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
    
    PageContentViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
    self.pageViewController.view.frame = CGRectMake(0, 80, self.view.frame.size.width, self.view.frame.size.height - 110);
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((PageContentViewController*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((PageContentViewController*) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.imageArrays count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (PageContentViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.imageArrays count] == 0) || (index >= [self.imageArrays count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    PageContentViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
    pageContentViewController.sounds = self.soundArrays[index];
    pageContentViewController.images = self.imageArrays[index];
    pageContentViewController.pageIndex = index;
    
    pageContentViewController.titles = self.titleArrays[index];
    
    return pageContentViewController;
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.imageArrays count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

- (IBAction)unwindToRoot:(UIStoryboardSegue *)unwindSegue
{
}

@end
