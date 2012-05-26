//
//  ViewController.m
//  StoreSearch
//
//  Created by Koala on 4/29/12.
//  Copyright (c) 2012 KNS. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()
@property (nonatomic, weak)IBOutlet UISearchBar *searchBar;
@property (nonatomic, weak)IBOutlet UITableView *tableView;

@end

@implementation SearchViewController {
    
    NSMutableArray *searchResults;
}
@synthesize searchBar = _searchBar;
@synthesize tableView = _tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    if (searchResults == nil) {
        
        return 0;
    } else {
        
        return [searchResults count];
        
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"SearchResultCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    } 
    cell.textLabel.text = [searchResults objectAtIndex:indexPath.row];
    return cell;
    
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar 
{
    
    [searchBar resignFirstResponder];
    searchResults = [NSMutableArray arrayWithCapacity:10];
    
    for (int i = 0; i < 3; i++) {
        [searchResults addObject:[NSString stringWithFormat:@"Fake Result %d for '%@'", i , searchBar.text]];
        
    }
    [self.tableView reloadData];
    
}



@end
