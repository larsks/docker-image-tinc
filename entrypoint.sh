#!/bin/sh

: ${TINC_NETWORK:=private}
: ${TINC_KEYSIZE:=4096}

TINCDIR=/etc/tinc/$TINC_NETWORK

mkdir -p $TINCDIR

if ! [ -f $TINCDIR/rsa_key.priv ]; then
	tincd -n $TINC_NETWORK --generate-keys=${TINC_KEYSIZE} < /dev/null
fi

export TINC_NETWORK
exec "$@"

