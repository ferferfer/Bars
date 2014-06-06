//
//  NSArray+CircularList.m
//  Bars
//
//  Created by Fernando Garcia Corrochano on 06/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "NSArray+CircularList.h"

@implementation NSArray (CircularList)

NSInteger pointer;

-(id)nextElement{
	if(self.count==0){
		return nil;
	}
	id element=[self objectAtIndex:pointer];
	if(pointer >= [self count]){
		pointer=0;
	}
	pointer++;

	return element;
}
-(id)previousElement{
	if(self.count==0){
		return nil;
	}
	id element=[self objectAtIndex:pointer];
	pointer--;
	if(pointer < 0){
		pointer= [self count]-1;
	}
	return element;
}

@end
