#!/usr/bin/env bash
set -eu

export COMPOSE_PROJECT_NAME=flyreserve

export wkdr=$PWD
cd $wkdr/flyreserve-ms-flights && make stop
cd $wkdr/flyreserve-ms-reservations && make stop

cd $wkdr
make proxystop
unset wkdr
