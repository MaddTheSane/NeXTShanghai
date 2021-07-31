
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"TileDescription.h"
#import	"Tile.h"

#include <cassert>

extern "C" {
#include "mj.h"
}

#import <Foundation/Foundation.h>

TileDescription::TileDescription( int loc ) {
	
	int	my_loc_z = 0;
	
	
	// Set up default cases.
	left_list	+= ( loc -1 );
	right_list 	+= ( loc + 1 );
	
	// Set up the left and right
	//	associations for the tile's location.
	switch( loc ) {
		case 0:
		case 12:
		case 20:
		case 57:
		case 67:
		case 75:
		case 87:
		case 93:
		case 99:
		case 105:
		case 111:
		case 117:
		case 123:
		case 127:
		case 131:
		case 135:
		case 139:
		case 141:
			left_list.empty();
			break;
		case 11:
		case 19:
		case 29:
		case 56:
		case 66:
		case 74:
		case 86:
		case 92:
		case 98:
		case 104:
		case 110:
		case 116:
		case 122:
		case 126:
		case 130:
		case 134:
		case 138:
		case 140:
		case 142:
			right_list.empty();
			break;
		case 30:
			left_list.empty();
			right_list += 43;
			break;
		case 42:
			right_list.empty();
			right_list += 55;
			break;
		case 43:
			left_list.empty();
			left_list += 30;
			break;
		case 55:
			left_list += 42;
			break;
		case 143:
			left_list.empty();
			right_list.empty();
			break;
		default:
			assert( loc );
	}
	
	// Set up the covered associations
	//	for the tile's location.
	switch( loc ) {
		case 13:	case 14:	case 15:	case 16:
		case 17:	case 18:
			covered_by_list += ( 87 + loc - 13 );
			break;
		case 22:	case 23:	case 24:	case 25:
		case 26:	case 27:
			covered_by_list += ( 93 + loc - 22 );
			break;
		case 34:	case 35:	case 36:	case 37:
		case 38:	case 39:
			covered_by_list += ( 99 + loc - 34 );
			break;
		case 46:	case 47:	case 48:	case 49:
		case 50:	case 51:
			covered_by_list += ( 105 + loc - 46 );
			break;
		case 59:	case 60:	case 61:	case 62:
		case 63:	case 64:
			covered_by_list += ( 111 + loc - 59 );
			break;
		case 68:	case 69:	case 70:	case 71:
		case 72:	case 73:
			covered_by_list += ( 117 + loc - 68 );
			break;
		case 94:	case 95:	case 96:	case 97:
			covered_by_list += ( 123 + loc - 94 );
			break;
		case 100:	case 101:	case 102:	case 103:
			covered_by_list += ( 127 + loc - 100 );
			break;
		case 106:	case 107:	case 108:	case 109:
			covered_by_list += ( 131 + loc - 106 );
			break;
		case 112:	case 113:	case 114:	case 115:
			covered_by_list += ( 135 + loc - 112 );
			break;
		case 128:	case 129:
			covered_by_list += ( 139 + loc - 128 );
			break;
		case 132:	case 133:
			covered_by_list += ( 141 + loc - 132 );
			break;
		case 139:	case 140:
		case 141:	case 142:
			covered_by_list += 143;
			break;
	}
	
	// Calculate the tile's location
	//	on the Game Board.
	// We're going to stuff row and column
	//	values in x,y.  They're adjusted
	//	below.
	switch( loc ) {
		case 0:		case 1:		case 2:		case 3:
		case 4:		case 5:		case 6:		case 7:
		case 8:		case 9:		case 10:	case 11:
			my_loc.x = 1 + loc;
			my_loc.y = 7;
			my_loc_z = 0;
			break;
		case 12:	case 13:	case 14:	case 15:
		case 16:	case 17:	case 18:	case 19:
			my_loc.x = 3 + loc - 12;
			my_loc.y = 6;
			my_loc_z = 0;
			break;
		case 20:	case 21:	case 22:	case 23:
		case 24:	case 25:	case 26:	case 27:
		case 28:	case 29:
			my_loc.x = 2 + loc - 20;
			my_loc.y = 5;
			my_loc_z = 0;
			break;
		case 30:
			my_loc.x = 0;
			my_loc.y = 3.5;
			my_loc_z = 0;
			break;
		case 31:	case 32:	case 33:	case 34:
		case 35:	case 36:	case 37:	case 38:
		case 39:	case 40:	case 41:	case 42:
			my_loc.x = 1 + loc - 31;
			my_loc.y = 4;
			my_loc_z = 0;
			break;
		case 43:	case 44:	case 45:	case 46:
		case 47:	case 48:	case 49:	case 50:
		case 51:	case 52:	case 53:	case 54:
			my_loc.x = 1 + loc - 43;
			my_loc.y = 3;
			my_loc_z = 0;
			break;
		case 55:	case 56:
			my_loc.x = 13 + loc - 55;
			my_loc.y = 3.5;
			my_loc_z = 0;
			break;
		case 57:	case 58:	case 59:	case 60:
		case 61:	case 62:	case 63:	case 64:
		case 65:	case 66:
			my_loc.x = 2 + loc - 57;
			my_loc.y = 2;
			my_loc_z = 0;
			break;
		case 67:	case 68:	case 69:	case 70:
		case 71:	case 72:	case 73:	case 74:
			my_loc.x = 3 + loc - 67;
			my_loc.y = 1;
			my_loc_z = 0;
			break;
		case 75:	case 76:	case 77:	case 78:
		case 79:	case 80:	case 81:	case 82:
		case 83:	case 84:	case 85:	case 86:
			my_loc.x = 1 + loc - 75;
			my_loc.y = 0;
			my_loc_z = 0;
			break;
			
		case 87:	case 88:	case 89:	case 90:
		case 91:	case 92:
			my_loc.x = 4 + loc - 87;
			my_loc.y = 6;
			my_loc_z = 1;
			break;
		case 93:	case 94:	case 95:	case 96:
		case 97:	case 98:
			my_loc.x = 4 + loc - 93;
			my_loc.y = 5;
			my_loc_z = 1;
			break;
		case 99:	case 100:	case 101:	case 102:
		case 103:	case 104:
			my_loc.x = 4 + loc - 99;
			my_loc.y = 4;
			my_loc_z = 1;
			break;
		case 105:	case 106:	case 107:	case 108:
		case 109:	case 110:
			my_loc.x = 4 + loc - 105;
			my_loc.y = 3;
			my_loc_z = 1;
			break;
		case 111:	case 112:	case 113:	case 114:
		case 115:	case 116:
			my_loc.x = 4 + loc - 111;
			my_loc.y = 2;
			my_loc_z = 1;
			break;
		case 117:	case 118:	case 119:	case 120:
		case 121:	case 122:
			my_loc.x = 4 + loc - 117;
			my_loc.y = 1;
			my_loc_z = 1;
			break;
			
		case 123:	case 124:	case 125:	case 126:
			my_loc.x = 5 + loc - 123;
			my_loc.y = 5;
			my_loc_z = 2;
			break;
		case 127:	case 128:	case 129:	case 130:
			my_loc.x = 5 + loc - 127;
			my_loc.y = 4;
			my_loc_z = 2;
			break;
		case 131:	case 132:	case 133:	case 134:
			my_loc.x = 5 + loc - 131;
			my_loc.y = 3;
			my_loc_z = 2;
			break;
		case 135:	case 136:	case 137:	case 138:
			my_loc.x = 5 + loc - 135;
			my_loc.y = 2;
			my_loc_z = 2;
			break;
			
		case 139:	case 140:
			my_loc.x = 6 + loc - 139;
			my_loc.y = 4;
			my_loc_z = 3;
			break;
		case 141:	case 142:
			my_loc.x = 6 + loc - 141;
			my_loc.y = 3;
			my_loc_z = 3;
			break;
			
		case 143:
			my_loc.x = 6.5;
			my_loc.y = 3.5;
			my_loc_z = 4;
			break;
		default:
			assert( loc );
	}
	
	// Adjust the x/y location by
	//	Game Piece size.
	// The x location is given an additional
	//	shift to the left for more of a 3d
	//	effect.
	my_loc.x *= TILE_WIDTH - TILE_SHIFT;
	my_loc.x -= my_loc_z * TILE_SHIFT;
	my_loc.y *= TILE_HEIGHT - TILE_SHIFT;
	my_loc.y += my_loc_z * TILE_SHIFT;
}

IntegerList& TileDescription::leftList( void ) {
	return left_list;
}

IntegerList& TileDescription::rightList( void ) {
	return right_list;
}

IntegerList& TileDescription::coveredList( void ) {
	return covered_by_list;
}
