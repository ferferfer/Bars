//
//  CircularListTest.m
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface CircularListTest : XCTestCase

@end

@implementation CircularListTest

-(void)testIfGivesMeNextElement{
	NSArray *array=@[@"1",@"2",@"3"];
	[array nextElement];
	[array nextElement];
	[array nextElement];
	[array nextElement];
	XCTAssertEqualObjects(array[1],[array nextElement],@"");
}

-(void)testIfGivesMePreviousElement{
	NSArray *array=@[@"1",@"2",@"3"];
	[array previousElement];
	[array previousElement];
	[array previousElement];
	[array previousElement];
	[array previousElement];
	[array previousElement];
	[array previousElement];
	XCTAssertEqualObjects(array[1],[array previousElement],@"");
}

@end
