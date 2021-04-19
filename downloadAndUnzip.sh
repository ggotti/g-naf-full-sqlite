#!/bin/bash

echo "### Downloading GNAF DataSet"
DOWNLOAD_URL="https://data.gov.au/data/dataset/19432f89-dc3a-4ef3-b943-5326ef1dbecc/resource/4b084096-65e4-4c8e-abbe-5e54ff85f42f/download/feb21_gnaf_pipeseparatedvalue.zip"
curl -o gnaf.zip "${DOWNLOAD_URL}"
unzip gnaf.zip  -d /tmp/gnafExport
rm -f gnaf.zip

echo "### Download & Unzip completed"
