/*
 * $Id: lmath.c,v 1.2 2001/06/25 18:49:48 bnv Exp $
 * $Log: lmath.c,v $
 * Revision 1.2  2001/06/25 18:49:48  bnv
 * Header changed to Id
 *
 * Revision 1.1  1998/07/02 17:18:00  bnv
 * Initial Version
 *
 */

#include <math.h>
#include <lstring.h>

/* ------------------ pow10 ------------------- */
static double
pow10d( double num )
{
	return pow(10.0,num);
} /* pow10d */

#define MATH(func) \
	void L##func(const PLstr to, const PLstr num) \
	{Lrcpy(to, func(Lrdreal(num)));}

MATH( acos )
MATH( asin )
MATH( atan )
MATH( cos  )
MATH( cosh )
MATH( exp  )
MATH( log  )
MATH( log10)
MATH( pow10d)
MATH( sin  )
MATH( sinh )
MATH( sqrt )
MATH( tan  )
MATH( tanh )
#undef MATH
