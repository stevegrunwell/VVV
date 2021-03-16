#!/bin/bash
DEBIAN_FRONTEND=noninteractive
TZ=Europe/London

. "/srv/provision/tests/provisioners.sh"

pre_hook
provision_main
provision_dashboard
if [ "${VVV_DOCKER}" != 1 ]; then
	provision_utility_sources
	provision_utilities
	provision_sites
fi
post_hook
