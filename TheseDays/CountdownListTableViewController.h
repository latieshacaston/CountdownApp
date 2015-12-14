//
//  CountdownListTableViewController.h
//  TheseDays
//
//  Created by LaTiesha Caston on 12/12/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountdownListTableViewController : UITableViewController


@property (strong, nonatomic) NSMutableArray *countdownTitles;
@property (strong, nonatomic) NSMutableArray *countdownDates;


- (IBAction)unwindToList:(UIStoryboardSegue *)segue;


@end
