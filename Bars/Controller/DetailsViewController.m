//
//  DetailsViewController.m
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
- (IBAction)backButton:(id)sender;


@end

@implementation DetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
  [super viewDidLoad];
	self.barDetail.text = self.bar.description;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backButton:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}
@end
