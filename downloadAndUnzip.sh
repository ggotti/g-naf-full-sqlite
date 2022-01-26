#!/bin/bash

echo "### Downloading GNAF DataSet"
DOWNLOAD_URL="https://data.gov.au/data/dataset/19432f89-dc3a-4ef3-b943-5326ef1dbecc/resource/fdce090a-b356-4afe-91bb-c78fbf88082a/download/g-naf_nov21_australia_gda2020_psv_104.zip"
curl -o gnaf.zip "${DOWNLOAD_URL}"
unzip gnaf.zip  -d /tmp/gnafExport
rm -f gnaf.zip

echo "### Download & Unzip completed"
