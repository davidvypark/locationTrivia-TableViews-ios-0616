//
//  FISTriviaTableViewController.m
//  locationTrivia-tableviews
//
//  Created by David Park on 6/23/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISTriviaTableViewController.h"

@implementation FISTriviaTableViewController

-(void)viewDidLoad {
    
    self.tableView.accessibilityIdentifier = @"Trivia Table";
    self.tableView.accessibilityLabel = @"Trivia Table";
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.locationPassed.trivia count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *CellIdentifier = @"Cell2";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    FISTrivium *currentTrivium = self.locationPassed.trivia[indexPath.row];
    cell.textLabel.text = currentTrivium.content;


    return cell;
}





@end
