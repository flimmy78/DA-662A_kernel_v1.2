/*
 * magic.c - PPP Magic Number routines.
 *
 * Copyright (c) 1989 Carnegie Mellon University.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms are permitted
 * provided that the above copyright notice and this paragraph are
 * duplicated in all such forms and that any documentation,
 * advertising materials, and other materials related to such
 * distribution and use acknowledge that the software was developed
 * by Carnegie Mellon University.  The name of the
 * University may not be used to endorse or promote products derived
 * from this software without specific prior written permission.
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
 * WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 */

#ifndef lint
static char rcsid[] = "$Id: magic.c,v 1.1 1999/12/09 05:42:46 gerg Exp $";
#endif

#include <stdio.h>
#include <sys/types.h>
#include <sys/time.h>

#include "pppd.h"
#include "magic.h"

static u_int32_t next;		/* Next value to return */

extern int gethostid __P((void));
extern long mrand48 __P((void));
extern void srand48 __P((long));


/*
 * magic_init - Initialize the magic number generator.
 *
 * Attempts to compute a random number seed which will not repeat.
 * The current method uses the current hostid, current process ID
 * and current time, currently.
 */
long seed;

void
magic_init()
{
    struct timeval t;

    gettimeofday(&t, NULL);
    seed = 0/*gethostid()*/ ^ t.tv_sec ^ t.tv_usec ^ getpid();
    /*srand48(seed);*/
}

/*
 * magic - Returns the next magic number.
 */
u_int32_t
magic()
{
	seed ++;
    return (u_int32_t) seed; /*mrand48();*/
}

#ifdef NO_DRAND48
/*
 * Substitute procedures for those systems which don't have
 * drand48 et al.
 */

double
drand48()
{
    return (double)random() / (double)0x7fffffffL; /* 2**31-1 */
}

long
mrand48()
{
    return random();
}

void
srand48(seedval)
long seedval;
{
    srandom((int)seedval);
}

#endif
