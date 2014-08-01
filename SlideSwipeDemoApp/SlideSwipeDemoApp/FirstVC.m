//
//  FirstVC.m
//  SlideSwipeDemoApp
//
//  Created by FLPUNPDSMAC on 01/08/14.
//  Copyright (c) 2014 FLPUNPDSMAC. All rights reserved.
//

#import "FirstVC.h"

@interface FirstVC ()

- (void)navigateToSecondVC;

@end

@implementation FirstVC

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
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setFrame:CGRectMake(100, 200, 130, 40)];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(navigateToSecondVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    SWRevealViewController *revealController = [self revealViewController];
    
    revealController.tapGestureRecognizer.enabled = NO;
    revealController.panGestureRecognizer.enabled = NO;
  
    
}
- (void)navigateToSecondVC{
    SecondVC *vc = [[SecondVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
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
