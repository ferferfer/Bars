//
//  BarTest.m
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bar.h"

@interface BarTest : XCTestCase

@end

@implementation BarTest

-(void)testCanCreateBar {
	
	Bar *bar = [[Bar alloc] initWithName:@"name" andAddress:@"address" andLatitude:@"latitude" andLongitude:@"longitude"];

	XCTAssertNotNil(bar, @"Bar should't be nil");
	XCTAssertEqualObjects(bar.name, @"name", @"Bar.name is not equal to name");
	XCTAssertEqualObjects(bar.address, @"address", @"Bar.name is not equal to address");
	XCTAssertEqualObjects(bar.longitude, @"longitude", @"Bar.name is not equal to longitude");
	XCTAssertEqualObjects(bar.latitude, @"latitude", @"Bar.name is not equal to latitude");
}

-(void)testCanCreateBarAndAddDescription {
	
	Bar *bar = [[Bar alloc] init];
	bar.description = @"descripción del bar";
	
	XCTAssertEqualObjects(bar.description, @"descripción del bar", @"Bar.description is not equal to descripción del bar");
}	

@end
