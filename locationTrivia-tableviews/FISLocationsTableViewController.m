//
//  FISLocationsTableViewController.m
//  locationTrivia-tableviews
//
//  Created by David Park on 6/23/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocationsTableViewController.h"
#import "FISTriviaTableViewController.h"

@implementation FISLocationsTableViewController



-(void)viewDidLoad {
    self.tableView.accessibilityLabel = @"Locations Table";
    self.tableView.accessibilityIdentifier = @"Locations Table";
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.locations count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *CellIdentifier= @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    FISLocation *currentLocation = self.locations[indexPath.row];
    cell.textLabel.text = currentLocation.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu",[currentLocation.trivia count]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISTriviaTableViewController *destinationVC = [segue destinationViewController];
    
    NSIndexPath *clickedIndexPath = [self.tableView indexPathForSelectedRow];
    destinationVC.locationPassed = self.locations[clickedIndexPath.row];
    
}

@end
