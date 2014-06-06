//
//  Bars.m
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "Bars.h"
#import "Bar.h"

@interface Bars()

@property(nonatomic,strong)NSMutableArray *theBars;

@end

@implementation Bars

- (instancetype)init
{
	self = [super init];
	if (self) {
		_theBars= [[NSMutableArray alloc]init];
	}
	return self;
}

-(id) initWithFile:(NSString *)fileName{
	if (self=[self init]) {
		NSString *fileNameAndPath=[[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
		NSArray *array=[NSArray arrayWithContentsOfFile:fileNameAndPath];
		
		for (NSDictionary *dic in array) {
			Bar *bar=[[Bar alloc]initWithName:dic[@"name"]
														 andAddress:dic[@"address"]
														andLatitude:dic[@"latitude"]
													 andLongitude:dic[@"longitude"]];
			bar.description=dic[@"description"];
			bar.score=[dic[@"score"]integerValue];
			bar.urlPhoto=dic[@"urlPhoto"];
			[_theBars addObject:bar];
		}
	}
	return self;
}

-(NSArray *)allBars{
	return self.theBars;
}


@end
