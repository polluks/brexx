/*
 * $Id: subword.c,v 1.2 2001/06/25 18:49:48 bnv Exp $
 * $Log: subword.c,v $
 * Revision 1.2  2001/06/25 18:49:48  bnv
 * Header changed to Id
 *
 * Revision 1.1  1998/07/02 17:18:00  bnv
 * Initial Version
 *
 */

#include <lstring.h>

/* ----------------- Lsubword ------------------ */
void
Lsubword( const PLstr to, const PLstr from, long n, long length )
{
	long	i;
	Lstr	tmp;

	i = Lwordindex(from,n);

	if (length<=0) length = 0;
	if (n<=0) n = 1;

	if (i==0) {
		LZEROSTR(*to);
		return;
	}

	LINITSTR(tmp);

	if (length==0) {
		_Lsubstr(&tmp,from,(size_t)i,0);
		goto fin;
	}
	n = i--;
	for (;;) {
		length--;
		LSKIPWORD(*from,i);
		if ((i>=LLEN(*from)) || !length) break;
		LSKIPBLANKS(*from,i);
		if (i>=LLEN(*from)) break;
	}
	_Lsubstr(&tmp,from,(size_t)n,(size_t)(i-n+1));
fin:
	Lstrip(to,&tmp,LTRAILING,' ');
	LFREESTR(tmp);
} /* Lsubword */
