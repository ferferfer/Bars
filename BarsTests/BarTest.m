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
	
	Bar *bar = [[Bar alloc] initWithName:@"name" andAddress:@"address" andLatitude:69 andLongitude:68];

	XCTAssertNotNil(bar, @"Bar should't be nil");
	XCTAssertEqualObjects(bar.name, @"name", @"Bar.name is not equal to name");
	XCTAssertEqualObjects(bar.address, @"address", @"Bar.name is not equal to address");
	XCTAssertEqual(bar.longitude, 68, @"Bar.name is not equal to 68");
	XCTAssertEqual(bar.latitude, 69, @"Bar.name is not equal to 69");
}

-(void)testCanCreateBarAndAddDescription {
	
	Bar *bar = [[Bar alloc] init];
	bar.description = @"descripción del bar";
	
	XCTAssertEqualObjects(bar.description, @"descripción del bar", @"Bar.description is not equal to descripción del bar");
}	

@end
