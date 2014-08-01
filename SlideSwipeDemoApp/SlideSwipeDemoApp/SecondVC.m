//
//  SecondVC.m
//  SlideSwipeDemoApp
//
//  Created by FLPUNPDSMAC on 01/08/14.
//  Copyright (c) 2014 FLPUNPDSMAC. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor greenColor]];
    
    
 //  [self.navigationItem setHidesBackButton:YES];
    
    
   
    
    self.title = @"Second VC";
    
    [self.navigationItem setBackBarButtonItem:nil];
    [self.navigationItem setHidesBackButton:YES animated:NO];
    
   
    
  
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
    SWRevealViewController *revealController = [self revealViewController];
    revealController.tapGestureRecognizer.enabled = YES;
    revealController.panGestureRecognizer.enabled = YES;
    
    [revealController panGestureRecognizer];
    [revealController tapGestureRecognizer];
    

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
                                                                             style:UIBarButtonItemStylePlain target:revealController action:@selector(revealToggle:)];
    
    
    
    UIBarButtonItem *rightRevealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
                                                                              style:UIBarButtonItemStyleBordered target:revealController action:@selector(rightRevealToggle:)];
    
    self.navigationItem.rightBarButtonItem = rightRevealButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
