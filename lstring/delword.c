/*
 * $Id: delword.c,v 1.2 2001/06/25 18:49:48 bnv Exp $
 * $Log: delword.c,v $
 * Revision 1.2  2001/06/25 18:49:48  bnv
 * Header changed to Id
 *
 * Revision 1.1  1998/07/02 17:18:00  bnv
 * Initial Version
 *
 */

#include <lstring.h>

/* ----------------- Ldelword ---------------- */
void
Ldelword( const PLstr to, const PLstr from, long start, long length )
{
	size_t	i;
	Lstr	tmp;

	i = Lwordindex(from,start);
	if (start <= 0) start = 1;
	if (i==0) {
		Lstrcpy(to,from);
		return;
	}

	if (i==1)
		LZEROSTR(*to)
	else
		_Lsubstr(to,from,1,i-1);

	if (length<0) return;

	i--;
	while (length) {
		length--;
		LSKIPWORD(*from,i);
		if (i>=LLEN(*from)) return;
		LSKIPBLANKS(*from,i);
		if (i>=LLEN(*from)) return;
	};
	LINITSTR(tmp);
	_Lsubstr(&tmp, from, i+1, 0);
	Lstrcat(to,&tmp);
	LFREESTR(tmp);
} /* Ldelword */
