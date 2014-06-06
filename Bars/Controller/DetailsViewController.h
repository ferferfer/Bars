//
//  DetailsViewController.h
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Bar.h"

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *barDetail;
@property (nonatomic, strong) Bar *bar;
@end
