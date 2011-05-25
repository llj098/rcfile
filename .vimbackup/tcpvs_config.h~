#ifndef _TCPVS_CONFIG_H
#define _TCPVS_CONFIG_H

#include "tcp_vs.h"


struct tcpvs_service {
	/* server ident */
	struct tcp_vs_ident ident;

	/* server configuration */
	struct tcp_vs_config conf;

	/* real servers */
	struct tcp_vs_dest_u *dests;
	unsigned int num_dests;

	/* rules */
	struct tcp_vs_rule_u *rules;
	unsigned int num_rules;
};


struct tcpvs_config {
	/* services */
	struct tcpvs_service *services;
	unsigned int num_services;
};

extern int tcpvs_parse_config(const char *filename,
			      struct tcpvs_config *config);

#endif				/* _TCPVS_CONFIG_H */
