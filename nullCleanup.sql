-- Converts empty values imported into the database into NULL value.

UPDATE ADDRESS_ALIAS_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE ADDRESS_CHANGE_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE ADDRESS_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE FLAT_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE GEOCODED_LEVEL_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE GEOCODE_RELIABILITY_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE GEOCODE_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE LEVEL_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE LOCALITY_ALIAS_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE LOCALITY_CLASS_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE MB_2011
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
mb_2011_code= (CASE WHEN mb_2011_code = '' THEN NULL ELSE mb_2011_code END);

UPDATE MB_2016
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
mb_2016_code= (CASE WHEN mb_2016_code = '' THEN NULL ELSE mb_2016_code END);

UPDATE MB_MATCH_CODE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE PS_JOIN_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE STATE
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
state_name= (CASE WHEN state_name = '' THEN NULL ELSE state_name END),
state_abbreviation= (CASE WHEN state_abbreviation = '' THEN NULL ELSE state_abbreviation END);

UPDATE STREET_CLASS_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE STREET_LOCALITY_ALIAS_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE STREET_SUFFIX_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE STREET_TYPE_AUT
SET name= (CASE WHEN name = '' THEN NULL ELSE name END),
description= (CASE WHEN description = '' THEN NULL ELSE description END);

UPDATE ADDRESS_ALIAS
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
principal_pid= (CASE WHEN principal_pid = '' THEN NULL ELSE principal_pid END),
alias_pid= (CASE WHEN alias_pid = '' THEN NULL ELSE alias_pid END),
alias_type_code= (CASE WHEN alias_type_code = '' THEN NULL ELSE alias_type_code END),
alias_comment= (CASE WHEN alias_comment = '' THEN NULL ELSE alias_comment END);

UPDATE ADDRESS_DEFAULT_GEOCODE
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
address_detail_pid= (CASE WHEN address_detail_pid = '' THEN NULL ELSE address_detail_pid END),
geocode_type_code= (CASE WHEN geocode_type_code = '' THEN NULL ELSE geocode_type_code END),
longitude= (CASE WHEN longitude = '' THEN NULL ELSE longitude END),
latitude= (CASE WHEN latitude = '' THEN NULL ELSE latitude END);

UPDATE ADDRESS_DETAIL
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_last_modified= (CASE WHEN date_last_modified = '' THEN NULL ELSE date_last_modified END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
building_name= (CASE WHEN building_name = '' THEN NULL ELSE building_name END),
lot_number_prefix= (CASE WHEN lot_number_prefix = '' THEN NULL ELSE lot_number_prefix END),
lot_number= (CASE WHEN lot_number = '' THEN NULL ELSE lot_number END),
lot_number_suffix= (CASE WHEN lot_number_suffix = '' THEN NULL ELSE lot_number_suffix END),
flat_type_code= (CASE WHEN flat_type_code = '' THEN NULL ELSE flat_type_code END),
flat_number_prefix= (CASE WHEN flat_number_prefix = '' THEN NULL ELSE flat_number_prefix END),
flat_number= (CASE WHEN flat_number = '' THEN NULL ELSE flat_number END),
flat_number_suffix= (CASE WHEN flat_number_suffix = '' THEN NULL ELSE flat_number_suffix END),
level_type_code= (CASE WHEN level_type_code = '' THEN NULL ELSE level_type_code END),
level_number_prefix= (CASE WHEN level_number_prefix = '' THEN NULL ELSE level_number_prefix END),
level_number= (CASE WHEN level_number = '' THEN NULL ELSE level_number END),
level_number_suffix= (CASE WHEN level_number_suffix = '' THEN NULL ELSE level_number_suffix END),
number_first_prefix= (CASE WHEN number_first_prefix = '' THEN NULL ELSE number_first_prefix END),
number_first= (CASE WHEN number_first = '' THEN NULL ELSE number_first END),
number_first_suffix= (CASE WHEN number_first_suffix = '' THEN NULL ELSE number_first_suffix END),
number_last_prefix= (CASE WHEN number_last_prefix = '' THEN NULL ELSE number_last_prefix END),
number_last= (CASE WHEN number_last = '' THEN NULL ELSE number_last END),
number_last_suffix= (CASE WHEN number_last_suffix = '' THEN NULL ELSE number_last_suffix END),
street_locality_pid= (CASE WHEN street_locality_pid = '' THEN NULL ELSE street_locality_pid END),
location_description= (CASE WHEN location_description = '' THEN NULL ELSE location_description END),
locality_pid= (CASE WHEN locality_pid = '' THEN NULL ELSE locality_pid END),
alias_principal= (CASE WHEN alias_principal = '' THEN NULL ELSE alias_principal END),
postcode= (CASE WHEN postcode = '' THEN NULL ELSE postcode END),
private_street= (CASE WHEN private_street = '' THEN NULL ELSE private_street END),
legal_parcel_id= (CASE WHEN legal_parcel_id = '' THEN NULL ELSE legal_parcel_id END),
confidence= (CASE WHEN confidence = '' THEN NULL ELSE confidence END),
address_site_pid= (CASE WHEN address_site_pid = '' THEN NULL ELSE address_site_pid END),
level_geocoded_code= (CASE WHEN level_geocoded_code = '' THEN NULL ELSE level_geocoded_code END),
property_pid= (CASE WHEN property_pid = '' THEN NULL ELSE property_pid END),
gnaf_property_pid= (CASE WHEN gnaf_property_pid = '' THEN NULL ELSE gnaf_property_pid END),
primary_secondary= (CASE WHEN primary_secondary = '' THEN NULL ELSE primary_secondary END);

UPDATE ADDRESS_FEATURE
SET address_feature_pid= (CASE WHEN address_feature_pid = '' THEN NULL ELSE address_feature_pid END),
address_detail_pid= (CASE WHEN address_detail_pid = '' THEN NULL ELSE address_detail_pid END),
date_address_detail_created= (CASE WHEN date_address_detail_created = '' THEN NULL ELSE date_address_detail_created END),
date_address_detail_retired= (CASE WHEN date_address_detail_retired = '' THEN NULL ELSE date_address_detail_retired END),
address_change_type_code= (CASE WHEN address_change_type_code = '' THEN NULL ELSE address_change_type_code END);

UPDATE ADDRESS_MESH_BLOCK_2011
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
address_detail_pid= (CASE WHEN address_detail_pid = '' THEN NULL ELSE address_detail_pid END),
mb_match_code= (CASE WHEN mb_match_code = '' THEN NULL ELSE mb_match_code END),
mb_2011_pid= (CASE WHEN mb_2011_pid = '' THEN NULL ELSE mb_2011_pid END);

UPDATE ADDRESS_MESH_BLOCK_2016
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
address_detail_pid= (CASE WHEN address_detail_pid = '' THEN NULL ELSE address_detail_pid END),
mb_match_code= (CASE WHEN mb_match_code = '' THEN NULL ELSE mb_match_code END),
mb_2016_pid= (CASE WHEN mb_2016_pid = '' THEN NULL ELSE mb_2016_pid END);

UPDATE ADDRESS_SITE
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
address_type= (CASE WHEN address_type = '' THEN NULL ELSE address_type END),
address_site_name= (CASE WHEN address_site_name = '' THEN NULL ELSE address_site_name END);

UPDATE ADDRESS_SITE_GEOCODE
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
address_site_pid= (CASE WHEN address_site_pid = '' THEN NULL ELSE address_site_pid END),
geocode_site_name= (CASE WHEN geocode_site_name = '' THEN NULL ELSE geocode_site_name END),
geocode_site_description= (CASE WHEN geocode_site_description = '' THEN NULL ELSE geocode_site_description END),
geocode_type_code= (CASE WHEN geocode_type_code = '' THEN NULL ELSE geocode_type_code END),
reliability_code= (CASE WHEN reliability_code = '' THEN NULL ELSE reliability_code END),
boundary_extent= (CASE WHEN boundary_extent = '' THEN NULL ELSE boundary_extent END),
planimetric_accuracy= (CASE WHEN planimetric_accuracy = '' THEN NULL ELSE planimetric_accuracy END),
elevation= (CASE WHEN elevation = '' THEN NULL ELSE elevation END),
longitude= (CASE WHEN longitude = '' THEN NULL ELSE longitude END),
latitude= (CASE WHEN latitude = '' THEN NULL ELSE latitude END);

UPDATE LOCALITY
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
locality_name= (CASE WHEN locality_name = '' THEN NULL ELSE locality_name END),
primary_postcode= (CASE WHEN primary_postcode = '' THEN NULL ELSE primary_postcode END),
locality_class_code= (CASE WHEN locality_class_code = '' THEN NULL ELSE locality_class_code END),
state_pid= (CASE WHEN state_pid = '' THEN NULL ELSE state_pid END),
gnaf_locality_pid= (CASE WHEN gnaf_locality_pid = '' THEN NULL ELSE gnaf_locality_pid END),
gnaf_reliability_code= (CASE WHEN gnaf_reliability_code = '' THEN NULL ELSE gnaf_reliability_code END);

UPDATE LOCALITY_ALIAS
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
locality_pid= (CASE WHEN locality_pid = '' THEN NULL ELSE locality_pid END),
name= (CASE WHEN name = '' THEN NULL ELSE name END),
postcode= (CASE WHEN postcode = '' THEN NULL ELSE postcode END),
alias_type_code= (CASE WHEN alias_type_code = '' THEN NULL ELSE alias_type_code END),
state_pid= (CASE WHEN state_pid = '' THEN NULL ELSE state_pid END);

UPDATE LOCALITY_NEIGHBOUR
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
locality_pid= (CASE WHEN locality_pid = '' THEN NULL ELSE locality_pid END),
neighbour_locality_pid= (CASE WHEN neighbour_locality_pid = '' THEN NULL ELSE neighbour_locality_pid END);

UPDATE LOCALITY_POINT
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
locality_pid= (CASE WHEN locality_pid = '' THEN NULL ELSE locality_pid END),
planimetric_accuracy= (CASE WHEN planimetric_accuracy = '' THEN NULL ELSE planimetric_accuracy END),
longitude= (CASE WHEN longitude = '' THEN NULL ELSE longitude END),
latitude= (CASE WHEN latitude = '' THEN NULL ELSE latitude END);

UPDATE PRIMARY_SECONDARY
SET primary_pid= (CASE WHEN primary_pid = '' THEN NULL ELSE primary_pid END),
secondary_pid= (CASE WHEN secondary_pid = '' THEN NULL ELSE secondary_pid END),
date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
ps_join_type_code= (CASE WHEN ps_join_type_code = '' THEN NULL ELSE ps_join_type_code END),
ps_join_comment= (CASE WHEN ps_join_comment = '' THEN NULL ELSE ps_join_comment END);

UPDATE STREET_LOCALITY
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
street_class_code= (CASE WHEN street_class_code = '' THEN NULL ELSE street_class_code END),
street_name= (CASE WHEN street_name = '' THEN NULL ELSE street_name END),
street_type_code= (CASE WHEN street_type_code = '' THEN NULL ELSE street_type_code END),
street_suffix_code= (CASE WHEN street_suffix_code = '' THEN NULL ELSE street_suffix_code END),
locality_pid= (CASE WHEN locality_pid = '' THEN NULL ELSE locality_pid END),
gnaf_street_pid= (CASE WHEN gnaf_street_pid = '' THEN NULL ELSE gnaf_street_pid END),
gnaf_street_confidence= (CASE WHEN gnaf_street_confidence = '' THEN NULL ELSE gnaf_street_confidence END),
gnaf_reliability_code= (CASE WHEN gnaf_reliability_code = '' THEN NULL ELSE gnaf_reliability_code END);

UPDATE STREET_LOCALITY_ALIAS
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
street_locality_pid= (CASE WHEN street_locality_pid = '' THEN NULL ELSE street_locality_pid END),
street_name= (CASE WHEN street_name = '' THEN NULL ELSE street_name END),
street_type_code= (CASE WHEN street_type_code = '' THEN NULL ELSE street_type_code END),
street_suffix_code= (CASE WHEN street_suffix_code = '' THEN NULL ELSE street_suffix_code END),
alias_type_code= (CASE WHEN alias_type_code = '' THEN NULL ELSE alias_type_code END);

UPDATE STREET_LOCALITY_POINT
SET date_created= (CASE WHEN date_created = '' THEN NULL ELSE date_created END),
date_retired= (CASE WHEN date_retired = '' THEN NULL ELSE date_retired END),
street_locality_pid= (CASE WHEN street_locality_pid = '' THEN NULL ELSE street_locality_pid END),
boundary_extent= (CASE WHEN boundary_extent = '' THEN NULL ELSE boundary_extent END),
planimetric_accuracy= (CASE WHEN planimetric_accuracy = '' THEN NULL ELSE planimetric_accuracy END),
longitude= (CASE WHEN longitude = '' THEN NULL ELSE longitude END),
latitude= (CASE WHEN latitude = '' THEN NULL ELSE latitude END);

