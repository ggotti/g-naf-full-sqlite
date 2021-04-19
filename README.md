# G-NAF in SQLite

This repo is for the production of a Docker image which contains a SQLite database
containing data loaded from the 
[Geoscape Geocoded National Address File (G-NAF)](https://data.gov.au/dataset/ds-dga-19432f89-dc3a-4ef3-b943-5326ef1dbecc/details?q=).
The schema definition has been modified to work with SQLite, such as defining primary and
foreign keys at table creation.

The sqlite file is located in `/map/fullGNAF.db` after the build is complete.

The intent of this image is to use the normalised GNAF data for some other purpose. You
must adhere to the [G-NAF  End User Licence Agreement (EULA)](https://data.gov.au/dataset/ds-dga-19432f89-dc3a-4ef3-b943-5326ef1dbecc/distribution/dist-dga-09f74802-08b1-4214-a6ea-3591b2753d30/details?q=) to use this image.
