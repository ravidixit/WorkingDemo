//
//  ViewController.m
//  searchBarDemo
//
//  Created by FLPUNPDSMAC on 23/07/14.
//  Copyright (c) 2014 FLPUNPDSMAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // initalized the superheroes array
    superHeroes = [[NSMutableArray alloc]initWithObjects:@"IronMan",@"Thor",@"HULK",@"SuperMan",@"Batman",@"WonderWoman",@"Flash",@"Arrow",@"Wolverien", nil];
}

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope{
    // predicates are the best way where you want to search data
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"SELF contains[c] '%@'", searchText]];
    searchedHeroes = [superHeroes filteredArrayUsingPredicate:resultPredicate];
}

#pragma mark searchDisplayController delegate
- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    return YES;
}

#pragma mark UITableView datasource and delegate methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchedHeroes count];
    } else {
        return [superHeroes count];
    }
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
     if (tableView == self.searchDisplayController.searchResultsTableView) {
         cell.textLabel.text = [searchedHeroes objectAtIndex:indexPath.row];
     }else{
          cell.textLabel.text = [superHeroes objectAtIndex:indexPath.row];
     }
    
   
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
