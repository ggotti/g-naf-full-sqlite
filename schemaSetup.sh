#!/bin/bash

mkdir -p "/map"
DATABASE_FILE="/map/fullGNAF.db"

cat ddl.sql | sqlite3 ${DATABASE_FILE}
cat addressView.sql | sqlite3 ${DATABASE_FILE}

