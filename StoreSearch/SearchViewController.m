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

@implementation SearchViewController
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

@end
