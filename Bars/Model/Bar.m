//
//  Bar.m
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "Bar.h"

@implementation Bar

- (id)init{
		return [self initWithName:nil andAddress:nil andLatitude:0 andLongitude:0];
}

-(id)initWithName:(NSString *)name{
	return [self initWithName:name andAddress:nil andLatitude:0 andLongitude:0];
}

-(id)initWithName:(NSString *)name
			 andAddress:(NSString *)address{
	return [self initWithName:name andAddress:address andLatitude:0 andLongitude:0];
}

-(id)initWithName:(NSString *)name
			 andAddress:(NSString *)address
			andLatitude:(CGFloat)latitude
		 andLongitude:(CGFloat)longitude{
	
	self = [super init];
	if (self) {
		_name=name;
		_address=address;
		_latitude=latitude;
		_longitude=longitude;
	}
	return self;
}


@end
