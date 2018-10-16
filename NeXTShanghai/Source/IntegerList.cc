
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"IntegerList.h"

extern "C" {
#import	<assert.h>

#import	"mj.h"
}

												// All integers on the list are offseted
												//	by this amount.
#define	OFFSET	1000


IntegerList::IntegerList( void ) {


	my_list		= [[ List alloc ] init ];
	iterator = 0;
}


IntegerList::~IntegerList( void ) {


	[ my_list free ];
}


int IntegerList::operator()() {

	int	rVal = -1;
	
	
	if( [ my_list count ] > iterator )
		rVal = decodeValue(( int )[ my_list objectAt:iterator++ ]);
	
	return rVal;
}


void IntegerList::beginIterate( void ) {


	iterator = 0;
}


void IntegerList::operator+=( int integer ) {


	[ my_list addObject:( id )encodeValue( integer ) ];
}


void IntegerList::operator-=( int integer ) {


	[ my_list removeObject:( id )encodeValue( integer ) ];
}


void IntegerList::empty( void ) {


	[ my_list empty ];
}


int IntegerList::count( void ) {


	return [ my_list count ];
}


int IntegerList::lastValue( void ) {


	return count() == 0 ? -1 : decodeValue(( int )[ my_list lastObject ]);
}


int IntegerList::encodeValue( int integer ) {


	return integer + OFFSET;
}


int IntegerList::decodeValue( int integer ) {


	return integer - OFFSET;
}


