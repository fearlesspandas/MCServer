#!/bin/bash
LEVEL_NAME=`cat $SERVER_HOME/server.properties | grep level-name | sed 's/level-name=//g'`

$ADMIN_HOME/mcopy $LEVEL_NAME
$ADMIN_HOME/mcopy "$LEVEL_NAME"_nether
$ADMIN_HOME/mcopy "$LEVEL_NAME"_the_end
$ADMIN_HOME/pcopy
$ADMIN_HOME/scopy
