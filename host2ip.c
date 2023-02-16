#include <sys/types.h>
#include <sys/socket.h>      /* struct sockaddr */
#include <stdlib.h>
#include <netdb.h>           /* gethostbyname() */
#include <netinet/in.h>      /* sockaddr_in */
#include <arpa/inet.h>       /* inet_addr() */
#include <ctype.h>           /* isspace() */
#include <string.h>

#include "host2ip.h"

/*
* Return IP address given host name 'host', in network order.
* Returns INADDR_ANY if not valid.
* NOTE: always include the correct function prototype,
*    extern int host2ip(char *host);
* is not correct and will cause memory problems.
*/
struct in_addr host2ip(char *host)
{
  struct in_addr in, tmp;
  struct hostent *hep;
  memset(&in, 0, sizeof(in));
  in.s_addr = INADDR_ANY;

  /* Strip leading white space. */
  if (host) {
    while (*host && isspace((int)*host)) host++;  
  }

  /* Check whether this is a dotted decimal. */
  if (!host) {
  }
  else if (inet_aton(host, &tmp) != 0) {
    in = tmp;
  }
  /* Attempt to resolve host name via DNS. */
  else if ((hep = gethostbyname(host))) {
    if (inet_aton(hep->h_addr_list[0], &tmp) != 0) {
      in = tmp;
    }
  }

  return in;
} /* host2ip */
