//
//  ViewController.h
//  searchBarDemo
//
//  Created by FLPUNPDSMAC on 23/07/14.
//  Copyright (c) 2014 FLPUNPDSMAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,UISearchDisplayDelegate>
{
    NSMutableArray *superHeroes;
    NSArray *searchedHeroes;
}
@end
