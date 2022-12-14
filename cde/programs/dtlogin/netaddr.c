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
/* $TOG: netaddr.c /main/5 1997/03/14 13:44:57 barstow $ */
/* (c) Copyright 1997 The Open Group */
/*                                                                      *
 * (c) Copyright 1993, 1994 Hewlett-Packard Company                     *
 * (c) Copyright 1993, 1994 International Business Machines Corp.       *
 * (c) Copyright 1993, 1994 Sun Microsystems, Inc.                      *
 * (c) Copyright 1993, 1994 Novell, Inc.                                *
 */
/*
 * @DEC_COPYRIGHT@
 */
/*
 * HISTORY
 * $Log$
 * Revision 1.1.2.2  1995/04/21  13:05:31  Peter_Derr
 * 	dtlogin auth key fixes from deltacde
 * 	[1995/04/12  19:21:13  Peter_Derr]
 *
 * 	R6 version used for XDMCP improvements
 * 	[1995/04/12  18:32:12  Peter_Derr]
 *
 * $EndLog$
 */
/*

Copyright (c) 1991  X Consortium

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE X CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of the X Consortium shall
not be used in advertising or otherwise to promote the sale, use or
other dealings in this Software without prior written authorization
from the X Consortium.

*/

/*
 * xdm - X display manager
 *
 * netaddr.c - Interpretation of XdmcpNetaddr object.
 */

#include "dm.h"

#include <X11/X.h>		/* FamilyInternet, etc. */

#include <sys/socket.h>		/* struct sockaddr */
#include <netinet/in.h>		/* struct sockaddr_in */

#ifdef UNIXCONN
#include <sys/un.h>		/* struct sockaddr_un */
#endif
#ifdef DNETCONN
#include <netdnet/dn.h>		/* struct sockaddr_dn */
#endif

/* given an XdmcpNetaddr, returns the socket protocol family used,
   e.g., AF_INET */

int NetaddrFamily(XdmcpNetaddr netaddrp)
{
#ifdef STREAMSCONN
    short family = *(short *)netaddrp;
    return family;
#else
    return ((struct sockaddr *)netaddrp)->sa_family;
#endif
}


/* given an XdmcpNetaddr, returns a pointer to the TCP/UDP port used
   and sets *lenp to the length of the address
   or 0 if not using TCP or UDP. */

char * NetaddrPort(XdmcpNetaddr netaddrp, int *lenp)
{
#ifdef STREAMSCONN
    *lenp = 2;
    return netaddrp+2;
#else
    switch (NetaddrFamily(netaddrp))
    {
    case AF_INET:
	*lenp = 2;
	return (char *)&(((struct sockaddr_in *)netaddrp)->sin_port);
    default:
	*lenp = 0;
	return NULL;
    }
#endif
}


/* given an XdmcpNetaddr, returns a pointer to the network address
   and sets *lenp to the length of the address */

char * NetaddrAddress(XdmcpNetaddr netaddrp, int *lenp)
{
#ifdef STREAMSCONN
    *lenp = 4;
    return netaddrp+4;
#else
    switch (NetaddrFamily(netaddrp)) {
#ifdef UNIXCONN
    case AF_UNIX:
	*lenp = strlen(((struct sockaddr_un *)netaddrp)->sun_path);
        return (char *) (((struct sockaddr_un *)netaddrp)->sun_path);
#endif
#ifdef TCPCONN
    case AF_INET:
        *lenp = sizeof (struct in_addr);
        return (char *) &(((struct sockaddr_in *)netaddrp)->sin_addr);
#endif
#ifdef DNETCONN
    case AF_DECnet:
        *lenp = sizeof (struct dn_naddr);
        return (char *) &(((struct sockaddr_dn *)netaddrp)->sdn_add);
#endif
#ifdef AF_CHAOS
    case AF_CHAOS:
#endif
    default:
	*lenp = 0;
	return NULL;
    }
#endif /* STREAMSCONN else */
}


/* given an XdmcpNetaddr, sets *addr to the network address used and
   sets *len to the number of bytes in addr.
   Returns the X protocol family used, e.g., FamilyInternet */

int ConvertAddr (XdmcpNetaddr saddr, int *len, char **addr)
{
    int retval;

    if (len == NULL)
        return -1;
    *addr = NetaddrAddress(saddr, len);
#ifdef STREAMSCONN
    /* kludge */
    if (NetaddrFamily(saddr) == 2)
	retval = FamilyInternet;
#else
    switch (NetaddrFamily(saddr))
    {
#ifdef AF_UNSPEC
      case AF_UNSPEC:
	retval = FamilyLocal;
	break;
#endif
#ifdef AF_UNIX
      case AF_UNIX:
        retval = FamilyLocal;
	break;
#endif
#ifdef TCPCONN
      case AF_INET:
        retval = FamilyInternet;
	break;
#endif
#ifdef DNETCONN
      case AF_DECnet:
        retval = FamilyDECnet;
	break;
#endif
#ifdef AF_CHAOS
    case AF_CHAOS:
	retval = FamilyChaos;
	break;
#endif
      default:
	retval = -1;
        break;
    }
#endif /* STREAMSCONN else */
    Debug ("ConvertAddr returning %d for family %d\n", retval,
	   NetaddrFamily(saddr));
    return retval;
}

int
addressEqual (XdmcpNetaddr a1, int len1, XdmcpNetaddr a2, int len2)
{
    int partlen1, partlen2;
    char *part1, *part2;

    if (len1 != len2)
    {
	return FALSE;
    }
    if (NetaddrFamily(a1) != NetaddrFamily(a2))
    {
	return FALSE;
    }
    part1 = NetaddrPort(a1, &partlen1);
    part2 = NetaddrPort(a2, &partlen2);
    if (partlen1 != partlen2 || memcmp(part1, part2, partlen1) != 0)
    {
	return FALSE;
    }
    part1 = NetaddrAddress(a1, &partlen1);
    part2 = NetaddrAddress(a2, &partlen2);
    if (partlen1 != partlen2 || memcmp(part1, part2, partlen1) != 0)
    {
	return FALSE;
    }
    return TRUE;
}

#ifdef DEBUG
/*ARGSUSED*/
PrintSockAddr (struct sockaddr *a, int len)
{
    unsigned char    *t, *p;

    Debug ("family %d, ", a->sa_family);
    switch (a->sa_family) {
#ifdef AF_INET
    case AF_INET:

	p = (unsigned char *) &((struct sockaddr_in *) a)->sin_port;
	t = (unsigned char *) &((struct sockaddr_in *) a)->sin_addr;

	Debug ("port %d, host %d.%d.%d.%d\n",
		(p[0] << 8) + p[1], t[0], t[1], t[2], t[3]);
	break;
    }
#endif
}
#endif
