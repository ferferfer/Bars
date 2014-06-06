//
//  BarsTests.m
//  BarsTests
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bars.h"
#import "Bar.h"

@interface BarsTests : XCTestCase

@end

@implementation BarsTests

-(void)testCanInitWithFile{
	
	Bars *bars=[[Bars alloc]initWithFile:@"Bars_List"];
	
	XCTAssertNotNil(bars, @"Bars shoun´t be nil");
	XCTAssertTrue([[bars allBars]count]>0, @"Bars cannot be empty");
	XCTAssertTrue([[bars allBars][0] isKindOfClass:[Bar class]] , @"Is not a bar!!!!");
	
}
@end
