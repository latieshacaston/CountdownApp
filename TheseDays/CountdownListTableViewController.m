//
//  CountdownListTableViewController.m
//  TheseDays
//
//  Created by LaTiesha Caston on 12/12/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "CountdownListTableViewController.h"
#import "Countdown.h"
#import "CreateCountdownViewController.h"

@interface CountdownListTableViewController ()




@end

@implementation CountdownListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.countdownTitles = [[NSMutableArray alloc] init];
    self.countdownDates = [[NSMutableArray alloc] init];
    
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    
}

// CountownCell

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.countdownTitles count];
}


- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    
    CreateCountdownViewController *sourceViewController = [segue sourceViewController];
    
    Countdown *countdown = sourceViewController.countdownItem;
    Countdown *date = sourceViewController.DatePicker.date;
    
    if ( countdown !=nil) {
    
        [self.countdownTitles addObject:countdown];
        [self.countdownDates addObject:date];
        [self.tableView reloadData]; 
    
    }
    
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"countdownCell" forIndexPath:indexPath];

    
    Countdown *countdownItem = [self.countdownTitles objectAtIndex:indexPath.row];
    cell.textLabel.text = countdownItem.title;
    
    
    // NSDate to NSString in order to display it as the deail text label
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMMM dd, yyyy"];
    NSString *stringDate = [dateFormatter stringFromDate:[countdownItem date]];
    NSLog(@"%@", stringDate);
    
    
    cell.detailTextLabel.text = stringDate; 

    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
