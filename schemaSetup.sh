#!/bin/bash

mkdir -p "/map"
DATABASE_FILE="/map/fullGNAF.db"

cat /root/scripts/ddl.sql | sqlite3 ${DATABASE_FILE}
cat /root/scripts/addressView.sql | sqlite3 ${DATABASE_FILE}

