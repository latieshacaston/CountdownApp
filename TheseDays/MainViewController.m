//
//  MainViewController.m
//  TheseDays
//
//  Created by LaTiesha Caston on 11/12/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Customize navigation bar + fonts
    
    self.view.backgroundColor = [UIColor colorWithRed:247.0/255.0 green:243.0/255.0 blue:238.0/255.0 alpha:1];
    
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:254.0/255.0 green:103.0/255.0 blue:121.0/255.0 alpha:1];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     
     @{NSForegroundColorAttributeName:[UIColor whiteColor],
       NSFontAttributeName:[UIFont fontWithName:@"Avenir" size:15]
  
       
       
       }];

    
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
