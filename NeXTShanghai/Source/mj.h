
/*
 * This file contains definations of interest by
 *	most objects in the project.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef	_mj_H
#define	_mj_H
#include <CoreFoundation/CFAvailability.h>

/// Provide constants for the number of
///	each tile type.
#define	NUMBER_OF_EAST_WIND		4
#define	NUMBER_OF_WEST_WIND		4
#define	NUMBER_OF_NORTH_WIND	4
#define	NUMBER_OF_SOUTH_WIND	4
#define	NUMBER_OF_WINTER_SEASON	1
#define	NUMBER_OF_SPRING_SEASON	1
#define	NUMBER_OF_SUMMER_SEASON	1
#define	NUMBER_OF_AUTUMN_SEASON	1
#define	NUMBER_OF_CIRCLE_1		4
#define	NUMBER_OF_CIRCLE_2		4
#define	NUMBER_OF_CIRCLE_3		4
#define	NUMBER_OF_CIRCLE_4		4
#define	NUMBER_OF_CIRCLE_5		4
#define	NUMBER_OF_CIRCLE_6		4
#define	NUMBER_OF_CIRCLE_7		4
#define	NUMBER_OF_CIRCLE_8		4
#define	NUMBER_OF_CIRCLE_9		4
#define	NUMBER_OF_BAMBOO_1		4
#define	NUMBER_OF_BAMBOO_2		4
#define	NUMBER_OF_BAMBOO_3		4
#define	NUMBER_OF_BAMBOO_4		4
#define	NUMBER_OF_BAMBOO_5		4
#define	NUMBER_OF_BAMBOO_6		4
#define	NUMBER_OF_BAMBOO_7		4
#define	NUMBER_OF_BAMBOO_8		4
#define	NUMBER_OF_BAMBOO_9		4
#define	NUMBER_OF_CHARACTER_1	4
#define	NUMBER_OF_CHARACTER_2	4
#define	NUMBER_OF_CHARACTER_3	4
#define	NUMBER_OF_CHARACTER_4	4
#define	NUMBER_OF_CHARACTER_5	4
#define	NUMBER_OF_CHARACTER_6	4
#define	NUMBER_OF_CHARACTER_7	4
#define	NUMBER_OF_CHARACTER_8	4
#define	NUMBER_OF_CHARACTER_9	4
#define	NUMBER_OF_RED			4
#define	NUMBER_OF_GREEN			4
#define	NUMBER_OF_WHITE			4
#define	NUMBER_OF_BAMBOO		1
#define	NUMBER_OF_PLUM			1
#define	NUMBER_OF_ORCHID		1
#define	NUMBER_OF_MUM			1


/// This is the total number of game tiles
/// that are placed on the Game Board.
#define	NUMBER_OF_TILES	(	\
	NUMBER_OF_EAST_WIND		+ 	NUMBER_OF_WEST_WIND		+ \
	NUMBER_OF_NORTH_WIND	+	NUMBER_OF_SOUTH_WIND	+ \
	NUMBER_OF_WINTER_SEASON	+	NUMBER_OF_SPRING_SEASON	+ \
	NUMBER_OF_SUMMER_SEASON	+	NUMBER_OF_AUTUMN_SEASON	+ \
	NUMBER_OF_CIRCLE_1		+	NUMBER_OF_CIRCLE_2		+ \
	NUMBER_OF_CIRCLE_3		+	NUMBER_OF_CIRCLE_4		+ \
	NUMBER_OF_CIRCLE_5		+	NUMBER_OF_CIRCLE_6		+ \
	NUMBER_OF_CIRCLE_7		+	NUMBER_OF_CIRCLE_8		+ \
	NUMBER_OF_CIRCLE_9		+	NUMBER_OF_BAMBOO_1		+ \
	NUMBER_OF_BAMBOO_2		+	NUMBER_OF_BAMBOO_3		+ \
	NUMBER_OF_BAMBOO_4		+	NUMBER_OF_BAMBOO_5		+ \
	NUMBER_OF_BAMBOO_6		+	NUMBER_OF_BAMBOO_7		+ \
	NUMBER_OF_BAMBOO_8		+	NUMBER_OF_BAMBOO_9		+ \
	0						+	NUMBER_OF_WHITE			+ \
	NUMBER_OF_CHARACTER_1	+	NUMBER_OF_CHARACTER_2	+ \
	NUMBER_OF_CHARACTER_3	+	NUMBER_OF_CHARACTER_4	+ \
	NUMBER_OF_CHARACTER_5	+	NUMBER_OF_CHARACTER_6	+ \
	NUMBER_OF_CHARACTER_7	+	NUMBER_OF_CHARACTER_8	+ \
	NUMBER_OF_CHARACTER_9	+	NUMBER_OF_GREEN			+ \
	0						+	NUMBER_OF_RED			+ \
	NUMBER_OF_BAMBOO		+	NUMBER_OF_PLUM			+ \
	NUMBER_OF_ORCHID		+	NUMBER_OF_MUM	)


CF_ENUM(int) {
	/// This is the total number of game tiles that are placed on the Game Board.
	MJCountTotalTitles = NUMBER_OF_TILES
};
#endif
