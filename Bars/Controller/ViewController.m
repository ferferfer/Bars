//
//  ViewController.m
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "ViewController.h"
#import "Bars.h"
#import "Bar.h"
#import "DetailsViewController.h"

@interface ViewController ()

@property (nonatomic)NSUInteger actualBar;
@property	(nonatomic,strong) Bars *theBars;
@property (weak, nonatomic) IBOutlet UILabel *barScore;
@property (weak, nonatomic) IBOutlet UILabel *barAddress;
@property (weak, nonatomic) IBOutlet UILabel *barName;
@property (weak, nonatomic) IBOutlet UIImageView *barImage;
- (IBAction)rightButton:(id)sender;
- (IBAction)leftButton:(id)sender;
- (IBAction)detailsButton:(id)sender;



@end

@implementation ViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	if ([[segue identifier] isEqualToString:@"detailsSegue"]) {
		DetailsViewController	*segundoView = [segue destinationViewController];
		segundoView.bar = [self.theBars allBars][self.actualBar];
	}
}

- (void)paintBar:(NSUInteger) actualBar{
	
  Bar *bar1 = [self.theBars allBars][actualBar];
	self.barName.text = bar1.name;
	self.barAddress.text = bar1.address;
	NSURL *url = [NSURL URLWithString:bar1.urlPhoto];
	NSData *imageData = [NSData dataWithContentsOfURL:url];
	UIImage *image = [UIImage imageWithData:imageData];
	self.barImage.image = image;
	self.barScore.text = [NSString stringWithFormat:@"%i", bar1.score];
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.actualBar=0;
	self.theBars = [[Bars alloc] initWithFile:@"Bars_List"];
	[self paintBar:self.actualBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rightButton:(id)sender {
	if (self.actualBar==[[self.theBars allBars]count]-1) {
    self.actualBar=0;
	}else{
		self.actualBar++;
	}
	[self paintBar:self.actualBar];
}

- (IBAction)leftButton:(id)sender {
	if (self.actualBar==0) {
    self.actualBar=[[self.theBars allBars]count]-1;
	}else{
		self.actualBar--;
	}
	[self paintBar:self.actualBar];
}

- (IBAction)detailsButton:(id)sender {
}
@end
