/*
 * CDE - Common Desktop Environment
 *
 * Copyright (c) 1993-2012, The Open Group. All rights reserved.
 *
 * These libraries and programs are free software; you can
 * redistribute them and/or modify them under the terms of the GNU
 * Lesser General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option)
 * any later version.
 *
 * These libraries and programs are distributed in the hope that
 * they will be useful, but WITHOUT ANY WARRANTY; without even the
 * implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with these libraries and programs; if not, write
 * to the Free Software Foundation, Inc., 51 Franklin Street, Fifth
 * Floor, Boston, MA 02110-1301 USA
 */
/* $XConsortium: compat.h /main/8 1996/07/18 16:32:14 drk $ */
/*-
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *	This product includes software developed by the University of
 *	California, Berkeley and its contributors.
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)compat.h	8.3 (Berkeley) 9/6/93
 */

#ifndef	_COMPAT_H_
#define	_COMPAT_H_

#include <sys/types.h>
#include "utility/config.h"

/*
 * If your system doesn't typedef u_long, u_short, or u_char, change
 * the 0 to a 1.
 */
#if 0
typedef unsigned long	u_long;
typedef unsigned short	u_short;
typedef unsigned char	u_char;
#endif

/* If your system doesn't typedef size_t, change the 0 to a 1. */
#if 0
typedef unsigned int	size_t;
#endif

/*
 * If your system doesn't have the POSIX type for a signal mask,
 * change the 0 to a 1.
 */
#if 0
typedef unsigned int	sigset_t;
#endif

/*
 * If you don't have POSIX 1003.1 signals, the signal code surrounding the 
 * temporary file creation is intended to block all of the possible signals
 * long enough to create the file and unlink it.  All of this stuff is
 * intended to use old-style BSD calls to fake POSIX 1003.1 calls.
 */
#ifdef	NO_POSIX_SIGNALS
#define sigemptyset(set)	(*(set) = 0)
#define sigfillset(set)		(*(set) = ~(sigset_t)0, 0)
#define sigaddset(set,signo)	(*(set) |= sigmask(signo), 0)
#define sigdelset(set,signo)	(*(set) &= ~sigmask(signo), 0)
#define sigismember(set,signo)	((*(set) & sigmask(signo)) != 0)

#define SIG_BLOCK	1
#define SIG_UNBLOCK	2
#define SIG_SETMASK	3

static int __sigtemp;		/* For the use of sigprocmask */

/* Repeated test of oset != NULL is to avoid "*0". */
#define sigprocmask(how, set, oset)					\
	((__sigtemp =							\
	(((how) == SIG_BLOCK) ?						\
		sigblock(0) | *(set) :					\
	(((how) == SIG_UNBLOCK) ?					\
		sigblock(0) & ~(*(set)) :				\
	((how) == SIG_SETMASK ?						\
		*(set) : sigblock(0))))),				\
	((oset) ? (*(oset ? oset : set) = sigsetmask(__sigtemp)) :	\
		sigsetmask(__sigtemp)), 0)
#endif

/*
 * If realloc(3) of a NULL pointer on your system isn't the same as
 * a malloc(3) call, change the 0 to a 1, and add realloc.o to the
 * MISC line in your Makefile.
 */
/*
#if 1
#define	realloc	__fix_realloc
#endif
*/
void * __fix_realloc __P((void*, size_t));


/*
 * If your system doesn't have an include file with the appropriate
 * byte order set, make sure you specify the correct one.
 */
#ifndef BYTE_ORDER

#define LITTLE_ENDIAN	1234		/* LSB first: i386, vax */
#define BIG_ENDIAN	4321		/* MSB first: 68000, ibm, net */

#ifdef MMDB_LITTLE_ENDIAN
#define BYTE_ORDER	LITTLE_ENDIAN	/* Set for your system. */
#endif

#ifdef MMDB_BIG_ENDIAN
#define BYTE_ORDER	BIG_ENDIAN	/* Set for your system. */
#endif


#endif

#if defined(SYSV) || defined(SYSTEM5) || defined(SVR4)
/* #define	index(a, b)		strchr(a, b) */
#ifndef rindex
#define	rindex(a, b)		strrchr(a, b)
#endif
#define	bzero(a, b)		memset(a, 0, b)
#define	bcmp(a, b, n)		memcmp(a, b, n)
#define	bcopy(a, b, n)		memmove(b, a, n)
#endif

#if defined(BSD) || defined(BSD4_3)
#define	strchr(a, b)		index(a, b)
#define	strrchr(a, b)		rindex(a, b)
#define	memcmp(a, b, n)		bcmp(a, b, n)
#define	memmove(a, b, n)	bcopy(b, a, n)
#endif

/*
 * 32-bit machine.  The db routines are theoretically independent of
 * the size of u_shorts and u_longs, but I don't know that anyone has
 * ever actually tried it.  At a minimum, change the following #define's
 * if you are trying to compile on a different type of system.
 */
#ifndef USHRT_MAX
#define	USHRT_MAX		0xFFFF
#define	ULONG_MAX		0xFFFFFFFF
#endif

/* POSIX 1003.1 access mode mask. */
#ifndef O_ACCMODE
#define	O_ACCMODE	(O_RDONLY|O_WRONLY|O_RDWR)
#endif

/* POSIX 1003.2 RE limit. */
#ifndef	_POSIX2_RE_DUP_MAX
#define	_POSIX2_RE_DUP_MAX	255
#endif

/*
 * If you can't provide lock values in the open(2) call.  Note, this
 * allows races to happen.
 */
#ifndef O_EXLOCK
#define	O_EXLOCK	0
#endif

#ifndef O_SHLOCK
#define	O_SHLOCK	0
#endif

#ifndef EFTYPE
#define	EFTYPE		EINVAL		/* POSIX 1003.1 format errno. */
#endif

#ifndef	WCOREDUMP			/* 4.4BSD extension */
#define	WCOREDUMP(a)	0
#endif

#ifndef	STDERR_FILENO
#define	STDIN_FILENO	0		/* ANSI C #defines */
#define	STDOUT_FILENO	1
#define	STDERR_FILENO	2
#endif

#ifndef SEEK_END
#define	SEEK_SET	0		/* POSIX 1003.1 seek values */
#define	SEEK_CUR	1
#define	SEEK_END	2
#endif

#ifndef S_ISLNK				/* BSD POSIX 1003.1 extensions */
#define S_ISLNK(m)      ((m & 0170000) == 0120000)
#define S_ISSOCK(m)     ((m & 0170000) == 0140000)
#endif

#ifndef	TCSASOFT
#define	TCSASOFT	0
#endif

#ifndef _POSIX2_RE_DUP_MAX
#define	_POSIX2_RE_DUP_MAX	255
#endif

#ifndef NULL				/* ANSI C #defines NULL everywhere. */
#define	NULL		0
#endif

#undef MAX
#define	MAX(a,b)	((a)<(b)?(b):(a))

#undef MIN
#define	MIN(a,b)	((a)<(b)?(a):(b))

#ifndef DEFFILEMODE			/* Default file permissions. */
#define	DEFFILEMODE	(S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH)
#endif

#ifndef _BSD_VA_LIST_
#define	_BSD_VA_LIST_	char *
#endif

#endif /* !_COMPAT_H_ */
