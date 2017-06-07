#!/bin/bash

# Adapted from https://github.com/w3c/sensors.

: ${W3C_USERNAME:?"ENV VAR W3C_USERNAME is not set."}
: ${W3C_PASSWORD:?"ENV VAR W3C_PASSWORD is not set."}

DECISION="https://lists.w3.org/Archives/Public/public-device-apis/2015Oct/att-0037/minutes-2015-10-15.html#item05"

# use --force option to allow building the spec despite not having a level.
# Use --md-status=WD to pretend that this is a Working Draft, in case it's not.
CMD="bikeshed echidna --u $W3C_USERNAME --d $DECISION --md-status=WD --self-contained --force"

echo $CMD && eval $CMD "--p $W3C_PASSWORD"
