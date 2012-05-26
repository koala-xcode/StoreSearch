//
//  ViewController.m
//  StoreSearch
//
//  Created by Koala on 4/29/12.
//  Copyright (c) 2012 KNS. All rights reserved.
//




#import "SearchViewController.h"
#import "SearchResult.h"
#import "SearchResultCell.h"


static NSString *const SearchResultCellIdentifier = @"SearchResultCell";


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
    
    UINib *cellNib = [UINib nibWithNibName:SearchResultCellIdentifier bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:SearchResultCellIdentifier];
    
    self.tableView.rowHeight = 80;
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
    } else if ([searchResults count] == 0)
    {
        
        return 1;
        
    } else {
        
        return [searchResults count];
        
    }
}

#pragma mark - UITableViewDelegate 

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if ([searchResults count] == 0 ) {
        
        return nil;
        
    }else {
        
        return indexPath;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SearchResultCell *cell = (SearchResultCell *)[tableView dequeueReusableCellWithIdentifier:SearchResultCellIdentifier];
    
    if ([searchResults count] == 0) {
        cell.nameLabel.text = @"(Nothing found)";
        cell.artistNameLabel.text = @"";
    } else {
        SearchResult *searchResult = [searchResults objectAtIndex:indexPath.row];
        cell.nameLabel.text = searchResult.name;
        cell.artistNameLabel.text = searchResult.artistName;
    }
    
    return cell;
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar 
{
    
    [searchBar resignFirstResponder];
    searchResults = [NSMutableArray arrayWithCapacity:10];
    
    if (![searchBar.text isEqualToString:@"justin bieber"]) {
    
    for (int i = 0; i < 3; i++) {
        SearchResult *searchResult = [[SearchResult alloc] init];
        searchResult.name = [NSString stringWithFormat:@"Fake Result %d for", i];
        searchResult.artistName = searchBar.text;
        [searchResults addObject:searchResult];
        
        }  
    }
    [self.tableView reloadData];
    
}



@end
