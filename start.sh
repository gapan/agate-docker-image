#!/bin/sh

if [ -z "$AGATE_HOSTNAME" ]; then
	echo "ERROR: You need to set the AGATE_HOSTNAME variable."
	exit 1
fi

/app/agate \
	--addr 0.0.0.0:1965 \
	--content /var/content \
	--certs /var/certs/ \
	--hostname $AGATE_HOSTNAME \
	--lang en-US \
	--log-ip

