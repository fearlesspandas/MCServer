#!/bin/bash
LEVEL_NAME=`cat $SERVER_HOME/server.properties | grep level-name | sed 's/level-name=//g'`

$SERVER_HOME/mcopy $LEVEL_NAME
$SERVER_HOME/mcopy "$LEVEL_NAME"_nether
$SERVER_HOME/mcopy "$LEVEL_NAME"_the_end
$SERVER_HOME/pcopy
$SERVER_HOME/scopy
