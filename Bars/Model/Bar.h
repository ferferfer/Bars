//
//  Bar.h
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bar : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *address;
@property (nonatomic) NSUInteger score;
@property (nonatomic,strong) NSString *description;
@property (nonatomic) CGFloat latitude;
@property (nonatomic) CGFloat longitude;
@property (nonatomic,strong) NSString
*urlPhoto;

-(id)initWithName:(NSString *)name;
-(id)initWithName:(NSString *)name
			 andAddress:(NSString *)address;
-(id)initWithName:(NSString *)name
			 andAddress:(NSString *)address
			andLatitude:(CGFloat)latitude
		 andLongitude:(CGFloat)longitude;

@end
