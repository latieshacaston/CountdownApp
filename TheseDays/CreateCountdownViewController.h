//
//  CreateCountdownViewController.h
//  TheseDays
//
//  Created by LaTiesha Caston on 11/12/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CreateCountdownViewController : UIViewController 


@property (weak, nonatomic) IBOutlet UIDatePicker *DatePicker;

@property (weak, nonatomic) IBOutlet UILabel *selectedDate;

- (IBAction)pickerAction:(id)sender;



@end
