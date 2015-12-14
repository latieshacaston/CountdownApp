//
//  CreateCountdownViewController.h
//  TheseDays
//
//  Created by LaTiesha Caston on 11/12/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Countdown.h"


@interface CreateCountdownViewController : UIViewController 

@property Countdown *countdownItem;


@property (weak, nonatomic) IBOutlet UITextField *countdownTitle;

@property (weak, nonatomic) IBOutlet UIDatePicker *DatePicker;

@property (weak, nonatomic) IBOutlet UILabel *selectedDate;

@property (weak, nonatomic) NSString *dateString;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;






- (IBAction)pickerAction:(id)sender;



@end
