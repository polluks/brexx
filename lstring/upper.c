/*
 * $Id: upper.c,v 1.2 2001/06/25 18:49:48 bnv Exp $
 * $Log: upper.c,v $
 * Revision 1.2  2001/06/25 18:49:48  bnv
 * Header changed to Id
 *
 * Revision 1.1  1998/07/02 17:18:00  bnv
 * Initial Version
 *
 */

#include <lstring.h>

/* --------------- Lupper ------------------ */
void
Lupper( const PLstr s )
{
	size_t	i;
	L2STR(s);
	for (i=0; i<LLEN(*s); i++)
		LSTR(*s)[i] = l2u[ (byte) LSTR(*s)[i] ];
} /* Lupper */
