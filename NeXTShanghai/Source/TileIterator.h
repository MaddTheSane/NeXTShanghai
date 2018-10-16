
/*
 * This is used to interate through an array
 *	of tiles in a modulas fashion.
 *
 $Author$
 $Header$
 *
 $Log$
 */


class TileIterator {
private:
												// This is the integral value of
												//	this object.

	int		my_value;

public:
												// Return the current value of the 
												//	object.
	int		value( void );
												// The iterator operator increments
												//	the value modulas the number of
												//	tiles and retuns the next value.
	int		operator()();
												// Add to the value.
	int		operator+( int );
												// Subrtact from the value.
	int		operator-( int );					
												// Preincrement.  Postincrement isn't
												//	supported by the compiler.
	int		operator++( void );
												// Predecrement.  Postdecrement may not be
												//	supported.
	int		operator--( void );
												// Assign a value.
	void	operator=( int );
	
	
	TileIterator( void );
	TileIterator( int );
};

