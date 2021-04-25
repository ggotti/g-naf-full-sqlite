#!/bin/bash

DOWNLOAD_DIRECTORY="/tmp/gnafExport/FEB21_GNAF_PipeSeparatedValue_20210222101749/G-NAF/G-NAF FEBRUARY 2021"
DATABASE_FILE="/map/fullGNAF.db"

echo "### Loading Data into ${DATABASE_FILE}"

echo "### Loading Authority Data"
find "$DOWNLOAD_DIRECTORY/Authority Code" -name "*.psv" -print0 |
while IFS= read -r -d '' line; do
  fileName="$(basename -- "$line")"
  tableName="$(echo $fileName | sed -rn 's/Authority_Code_(.*)_psv.psv/\1/p')"
  (echo .mode csv; echo .separator "|"; echo .import \"${line}\" ${tableName}) | sqlite3 ${DATABASE_FILE}
done

echo "### Loading Standard Data"
find "$DOWNLOAD_DIRECTORY/Standard" -name "*.psv" -print0 |
while IFS= read -r -d '' line; do
  fileName="$(basename -- "$line")"
  tableName="$(echo $fileName | sed -rn 's/(WA|NT|VIC|NSW|SA|TAS|OT|ACT|QLD)_(.*)_psv.psv/\2/p')"
  (echo .mode csv; echo .separator "|"; echo .import \"${line}\" ${tableName}) | sqlite3 ${DATABASE_FILE}
done

# This is to cleanup the empty values in the import to NULL. Makes life easier later.
cat /root/scripts/nullCleanup.sql | sqlite3 ${DATABASE_FILE}

