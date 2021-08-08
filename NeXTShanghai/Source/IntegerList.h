
/*
 * This object provides a list that holds integers.
 * This object uses an Objective-C List object to hold values.  There
 *	is a problem, however, with the integer value 0.
 * In the Objective-C List a 0 is nil.  Therefore 0 cannot be
 *	added to the list.  To compensate for this, and utilizing the fact
 *	that this object is used to hold tile indexes, an offset is added to
 *	values stored on the list and subtraced when removed.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<Foundation/NSArray.h>

/*!
 * This object provides a list that holds integers.
 *
 * This object uses an Objective-C List object to hold values.  There
 *	is a problem, however, with the integer value 0.
 *
 * In the Objective-C \c List a 0 is nil.  Therefore 0 cannot be
 *	added to the list.  To compensate for this, and utilizing the fact
 *	that this object is used to hold tile indexes, an offset is added to
 *	values stored on the list and subtraced when removed.
 *
 *	As of \c NSArray (Mac OS X and probably OpenStep), this is no longer the case, but the class
 *	is kept for backwards compatibility.
 */
class IntegerList {

private:
	//! This is the Objective-C object used
	//! to hold a list of integers.
	NSMutableArray	*my_list;
	/// Used when iterating through the
	/// list.
	int		iterator;
	/// We can't blindly store integers
	/// on the list.  They must be encoded.
	/// This is because 0 is a legal value
	/// but the list object considers it nil
	/// and won't place it on the list.
	///
	/// Note: This is no longer the case, but these are kept for backwards-compatibility.
	/// This method is pretty much a no-op now.
	int		encodeValue(int integer),
			decodeValue(int integer);
			
public:
	IntegerList(void): my_list([[NSMutableArray alloc] init]), iterator(0) {};
	~IntegerList(void) = default;
	
	
	/// This operator indexes through the list
	///	starting at 0 and returning -1 when
	///	the end of the list is reached.
	///
	/// You can't perform operations on the
	///	list as your scanning through it.
	int		operator()();
	/// Prepare for list iteration.
	void	beginIterate();
	/// Add a integer to the list.
	void	operator+=(int integer);
	/// Remove a integer from this list.
	void	operator-=(int integer);
	/// Empty the list of all values.
	void	empty(void);
	/// Return the number of items on
	/// the list.
	NSInteger count(void);
	/// Return the value of the last integer
	/// on the list.
	int		lastValue(void);
};

