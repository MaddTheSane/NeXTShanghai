
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"IntegerList.h"

#include <cassert>
extern "C" {
#include "mj.h"
}

/// All integers on the list are offseted
/// by this amount.
#define	OFFSET	0


IntegerList::IntegerList(void) {
	my_list		= [[NSMutableArray alloc] init];
	iterator = 0;
}

IntegerList::~IntegerList(void) {
	my_list = nil;
}

int IntegerList::operator()() {
	int	rVal = -1;
	
	
	if ([ my_list count ] > iterator) {
		rVal = decodeValue([[ my_list objectAtIndex:iterator++ ] intValue]);
	}
	
	return rVal;
}

void IntegerList::beginIterate(void) {
	iterator = 0;
}

void IntegerList::operator+=(int integer)
{
	[my_list addObject:@(encodeValue(integer))];
}

void IntegerList::operator-=(int integer)
{
	[my_list removeObject:@(encodeValue(integer))];
}

void IntegerList::empty(void)
{
	[my_list removeAllObjects];
}

NSInteger IntegerList::count(void)
{
	return [my_list count];
}

int IntegerList::lastValue(void)
{
	return count() == 0 ? -1 : decodeValue([[my_list lastObject] intValue]);
}

int IntegerList::encodeValue(int integer)
{
	return integer + OFFSET;
}

int IntegerList::decodeValue(int integer)
{
	return integer - OFFSET;
}
