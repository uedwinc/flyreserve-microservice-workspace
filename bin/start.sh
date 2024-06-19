#!/usr/bin/env bash
set -eu

export COMPOSE_PROJECT_NAME=flyreserve

export wkdr=$PWD
cd $wkdr/flyreserve-ms-flights && make start
cd $wkdr/flyreserve-ms-reservations && make start

cd $wkdr
make proxystart

unset wkdr
