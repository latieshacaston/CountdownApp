//
//  CreateCountdownViewController.m
//  TheseDays
//
//  Created by LaTiesha Caston on 11/12/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "CreateCountdownViewController.h"
#import "Countdown.h"


@interface CreateCountdownViewController () 



@end

@implementation CreateCountdownViewController {


}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    
    self.view.backgroundColor = [UIColor colorWithRed:247.0/255.0 green:243.0/255.0 blue:238.0/255.0 alpha:1];
    self.navigationItem.backBarButtonItem.style = UIBarButtonItemStylePlain;
    
    self.navigationItem.backBarButtonItem.tintColor= [UIColor whiteColor];
    
    
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:254.0/255.0 green:103.0/255.0 blue:121.0/255.0 alpha:1];
    self.DatePicker.backgroundColor = [UIColor whiteColor];
    
   
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Check to make sure the done button was tapped
    
    if (sender != self.doneButton)  return;
    
    // Make sure the user has entered text;
    
    if (self.countdownTitle.text.length > 0 ) {
        
    // Create a new item
        
        self.countdownItem = [[Countdown alloc] init];
        
    // Set the title
        
        self.countdownItem.title = self.countdownTitle.text;
        
        // Set the date
        
        self.countdownItem.date = self.DatePicker.date;
        
    
    
    }
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


- (IBAction)pickerAction:(id)sender {
    
    
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    self.selectedDate.text = [dateFormatter stringFromDate:self.DatePicker.date];
    
    
    
    
}
@end
