//
//  WHSLinkListViewController.m
//  WheelerDirectory
//
//  Created by Alex Nussey on 11/9/13.
//  Copyright (c) 2013 Nussey. All rights reserved.
//

#import "WHSLinkListViewController.h"

@interface WHSLinkListViewController ()

@property NSArray *linkDescriptions;
@property NSArray *linkAddresses;

@end

@implementation WHSLinkListViewController

- (void)loadData {
    self.linkDescriptions = @[@"ParentVUE/StudentVUE", @"Cobb County Website", @"Wheeler Website", @"Cobb Digital Library", @"Blackboard", @"Wheeler Library", @"Wheeler Magnet", @"Senior Project"];
    
    self.linkAddresses = @[@"http://parentvue.cobbk12.org/", @"http://www.cobbk12.org/", @"http://www.cobbk12.org/wheeler/", @"http://www.cobbk12.org/cdl.aspx", @"https://www.cobbk12.blackboard.com/", @"http://www.cobbk12.org/Wheeler/Library/", @"http://www.wheelermagnet.com", @"http://www.cobbk12.org/Wheeler/Library/SeniorProject/index.html"];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.linkDescriptions = [[NSMutableArray alloc] init];
    self.linkAddresses = [[NSMutableArray alloc] init];
    
    [self loadData];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.linkDescriptions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"linkItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.linkDescriptions[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    int linkIndex = indexPath.row;
    NSString *linkURL = self.linkAddresses[linkIndex];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:linkURL]];
}

@end
