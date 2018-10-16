
/*
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import	"TileCountManager.h"

extern "C" {
#import	<assert.h>
}

#include <cmath>


												// This is the number of digits that
												//	are to be maintained in the count view.
#define	NUMBER_OF_DIGITS	3


TileCountManager::TileCountManager( TileCountView* view ) {



	assert( view );
	my_view = view;
	[ my_view setNeedsDisplay:YES ];

	count_value = NUMBER_OF_TILES;
	
}


void TileCountManager::updateView( void ) {


	[ my_view setNeedsDisplay:YES ];
	//[my_view displayFromOpaqueAncestor:0 :0 :NO ];
}


void TileCountManager::resetCount( void ) {


	count_value = NUMBER_OF_TILES;
	updateView();
}


void TileCountManager::addTwo( void ) {

	count_value += 2;
	assert( count_value <= NUMBER_OF_TILES );
	updateView();
}


void TileCountManager::subtractTwo( void ) {


	count_value -= 2;
	assert( count_value >= 0 );
	updateView();
}


int TileCountManager::count( void ) {


	return count_value;
}


BOOL TileCountManager::isEmpty( void ) {


	return count_value == 0;
}


void TileCountManager::drawImage( void ) {

	BOOL	didDrawRealNumber = NO;
	NSRect	bounds;
	int		tmp_value = count(),
			i;
			
	
	//assert([ my_view isFocusView ]);
    bounds = my_view.bounds;
	
	for( i = 0; i < NUMBER_OF_DIGITS; ++i )  {
		int		digit = tmp_value / ( int )pow( 10, ( NUMBER_OF_DIGITS - 1 - i ));
		NSPoint	p = { 0, 0 };
		
		p.x = i * ( SMALLTILE_WIDTH - SMALLTILE_SHIFT );
		
		if( didDrawRealNumber || digit > 0 )
		{
			number_array[ digit ].drawImage( p );
			didDrawRealNumber = YES;
		}
		tmp_value -= digit * ( int )pow( 10, ( NUMBER_OF_DIGITS - 1 - i ));
	}
}

