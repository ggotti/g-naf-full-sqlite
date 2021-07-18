# G-NAF in SQLite

This repo is for the production of a Docker image which contains a SQLite database
containing data loaded from the 
[Geoscape Geocoded National Address File (G-NAF)](https://data.gov.au/dataset/ds-dga-19432f89-dc3a-4ef3-b943-5326ef1dbecc/details?q=).
The schema definition has been modified to work with SQLite, such as defining primary and
foreign keys at table creation.

The sqlite file is located in `/map/fullGNAF.db` after the build is complete. 
Docker image can be accessed using `docker pull ggotti/g-naf-full-sqlite:latest`.

If you would like to obtain the SQLite database, you can run the following script:
```
docker pull ggotti/g-naf-full-sqlite:latest
docker run -v ${PWD}:/app --rm ggotti/g-naf-full-sqlite:latest cp /map/fullGNAF.db /app/

# then run the following command if you do not wish to keep the docker image
# docker rmi ggotti/g-naf-full-sqlite:latest
```
After running the script you would have the SQLite database in your current host directory.

The intent of this image is to use the normalised GNAF data for some other purpose. You
must adhere to the [G-NAF  End User Licence Agreement (EULA)](https://data.gov.au/dataset/ds-dga-19432f89-dc3a-4ef3-b943-5326ef1dbecc/distribution/dist-dga-09f74802-08b1-4214-a6ea-3591b2753d30/details?q=) to use this image.
