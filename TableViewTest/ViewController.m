//
//  ViewController.m
//  TableViewTest
//
//  Created by Javier Rosas on 5/11/15.
//  Copyright (c) 2015 Javier Rosas. All rights reserved.
//

#import "ViewController.h"
#import "JRTableViewCell.h"

@interface TableViewController ()
	
@end

@implementation TableViewController

static NSString *CellIdentifier = @"CellIdentifier";

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JRTableViewCell *cell = (JRTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure cell
    cell.mainLabel.text = [NSString stringWithFormat:@"Row %li in Section %li", indexPath.row, indexPath.section];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
