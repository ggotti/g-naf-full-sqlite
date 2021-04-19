--
-- SQL script to Create the published ANSI compliant G-NAF database tables
--
-- Hand merge of create_tables_ansi.sql and add_fk_constraints.sql
-- for SQLLite compatability

PRAGMA foreign_keys = ON;

drop table if exists ADDRESS_ALIAS;

drop table if exists ADDRESS_ALIAS_TYPE_AUT;

drop table if exists ADDRESS_CHANGE_TYPE_AUT;

drop table if exists ADDRESS_DEFAULT_GEOCODE;

drop table if exists ADDRESS_DETAIL;

drop table if exists ADDRESS_FEATURE;

drop table if exists ADDRESS_MESH_BLOCK_2011;

drop table if exists ADDRESS_MESH_BLOCK_2016;

drop table if exists ADDRESS_SITE;

drop table if exists ADDRESS_SITE_GEOCODE;

drop table if exists ADDRESS_TYPE_AUT;

drop table if exists FLAT_TYPE_AUT;

drop table if exists GEOCODED_LEVEL_TYPE_AUT;

drop table if exists GEOCODE_RELIABILITY_AUT;

drop table if exists GEOCODE_TYPE_AUT;

drop table if exists LEVEL_TYPE_AUT;

drop table if exists LOCALITY;

drop table if exists LOCALITY_ALIAS;

drop table if exists LOCALITY_ALIAS_TYPE_AUT;

drop table if exists LOCALITY_CLASS_AUT;

drop table if exists LOCALITY_NEIGHBOUR;

drop table if exists LOCALITY_POINT;

drop table if exists MB_2011;

drop table if exists MB_2016;

drop table if exists MB_MATCH_CODE_AUT;

drop table if exists PRIMARY_SECONDARY;

drop table if exists PS_JOIN_TYPE_AUT;

drop table if exists STATE;

drop table if exists STREET_CLASS_AUT;

drop table if exists STREET_LOCALITY;

drop table if exists STREET_LOCALITY_ALIAS;

drop table if exists STREET_LOCALITY_ALIAS_TYPE_AUT;

drop table if exists STREET_LOCALITY_POINT;

drop table if exists STREET_SUFFIX_AUT;

drop table if exists STREET_TYPE_AUT;

-- ********************************************************************************************
-- ********************************************************************************************
-- Create ANSI tables
-- ********************************************************************************************
-- ********************************************************************************************

CREATE TABLE ADDRESS_ALIAS_TYPE_AUT (
 code varchar(10) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE ADDRESS_CHANGE_TYPE_AUT (
 code varchar(50) NOT NULL PRIMARY KEY,
 name varchar(100) NOT NULL,
 description varchar(500)
);

CREATE TABLE ADDRESS_TYPE_AUT (
 code varchar(8) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE FLAT_TYPE_AUT (
 code varchar(7) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE GEOCODED_LEVEL_TYPE_AUT (
 code numeric(2) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(70)
);

CREATE TABLE GEOCODE_RELIABILITY_AUT (
 code numeric(1) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(100)
);

CREATE TABLE GEOCODE_TYPE_AUT (
 code varchar(4) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(250)
);

CREATE TABLE LEVEL_TYPE_AUT (
 code varchar(4) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE LOCALITY_ALIAS_TYPE_AUT (
 code varchar(10) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(100)
);

CREATE TABLE LOCALITY_CLASS_AUT (
 code char(1) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(200)
);

CREATE TABLE MB_2011 (
 mb_2011_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 mb_2011_code varchar(15) NOT NULL
);

CREATE TABLE MB_2016 (
 mb_2016_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 mb_2016_code varchar(15) NOT NULL
);

CREATE TABLE MB_MATCH_CODE_AUT (
 code varchar(15) NOT NULL PRIMARY KEY,
 name varchar(100) NOT NULL,
 description varchar(250)
);

CREATE TABLE PS_JOIN_TYPE_AUT (
 code numeric(2) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(500)
);

CREATE TABLE STATE (
 state_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 state_name varchar(50) NOT NULL,
 state_abbreviation varchar(3) NOT NULL
);

CREATE TABLE STREET_CLASS_AUT (
 code char(1) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(200)
);

CREATE TABLE STREET_LOCALITY_ALIAS_TYPE_AUT (
 code varchar(10) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(15)
);

CREATE TABLE STREET_SUFFIX_AUT (
 code varchar(15) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE STREET_TYPE_AUT (
 code varchar(15) NOT NULL PRIMARY KEY,
 name varchar(50) NOT NULL,
 description varchar(15)
);


-- sdsd

CREATE TABLE ADDRESS_ALIAS (
 address_alias_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 principal_pid varchar(15) NOT NULL,
 alias_pid varchar(15) NOT NULL,
 alias_type_code varchar(10) NOT NULL,
 alias_comment varchar(200),
 FOREIGN KEY(alias_pid) REFERENCES ADDRESS_DETAIL(address_detail_pid),
 FOREIGN KEY (alias_type_code) REFERENCES ADDRESS_ALIAS_TYPE_AUT (code),
 FOREIGN KEY (principal_pid) REFERENCES ADDRESS_DETAIL (address_detail_pid)
);

CREATE TABLE ADDRESS_DEFAULT_GEOCODE (
 address_default_geocode_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 address_detail_pid varchar(15) NOT NULL,
 geocode_type_code varchar(4) NOT NULL,
 longitude numeric(11,8),
 latitude numeric(10,8),
  FOREIGN KEY(address_detail_pid) REFERENCES ADDRESS_DETAIL (address_detail_pid),
  FOREIGN KEY(geocode_type_code) REFERENCES GEOCODE_TYPE_AUT (code)
);

CREATE TABLE ADDRESS_DETAIL (
 address_detail_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_last_modified date,
 date_retired date,
 building_name varchar(200),
 lot_number_prefix varchar(2),
 lot_number varchar(5),
 lot_number_suffix varchar(2),
 flat_type_code varchar(7),
 flat_number_prefix varchar(2),
 flat_number numeric(5),
 flat_number_suffix varchar(2),
 level_type_code varchar(4),
 level_number_prefix varchar(2),
 level_number numeric(3),
 level_number_suffix varchar(2),
 number_first_prefix varchar(3),
 number_first numeric(6),
 number_first_suffix varchar(2),
 number_last_prefix varchar(3),
 number_last numeric(6),
 number_last_suffix varchar(2),
 street_locality_pid varchar(15),
 location_description varchar(45),
 locality_pid varchar(15) NOT NULL,
 alias_principal char(1),
 postcode varchar(4),
 private_street varchar(75),
 legal_parcel_id varchar(20),
 confidence numeric(1),
 address_site_pid varchar(15) NOT NULL,
 level_geocoded_code numeric(2) NOT NULL,
 property_pid varchar(15),
 gnaf_property_pid varchar(15),
 primary_secondary varchar(1),
 FOREIGN KEY(address_site_pid) REFERENCES ADDRESS_SITE (address_site_pid),
 FOREIGN KEY(flat_type_code) REFERENCES FLAT_TYPE_AUT (code),
 FOREIGN KEY(level_geocoded_code) REFERENCES GEOCODED_LEVEL_TYPE_AUT (code),
 FOREIGN KEY(level_type_code) REFERENCES LEVEL_TYPE_AUT (code),
 FOREIGN KEY(locality_pid) REFERENCES LOCALITY (locality_pid),
 FOREIGN KEY(street_locality_pid) REFERENCES STREET_LOCALITY (street_locality_pid)
);


CREATE TABLE ADDRESS_FEATURE (
 address_feature_id varchar(16) NOT NULL PRIMARY KEY,
 address_feature_pid varchar(16) NOT NULL,
 address_detail_pid varchar(15) NOT NULL,
 date_address_detail_created date NOT NULL,
 date_address_detail_retired date,
 address_change_type_code varchar(50),
 FOREIGN KEY(address_change_type_code) REFERENCES ADDRESS_CHANGE_TYPE_AUT (code),
 FOREIGN KEY(address_detail_pid) REFERENCES ADDRESS_DETAIL (address_detail_pid)
);

CREATE TABLE ADDRESS_MESH_BLOCK_2011 (
 address_mesh_block_2011_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 address_detail_pid varchar(15) NOT NULL,
 mb_match_code varchar(15) NOT NULL,
 mb_2011_pid varchar(15) NOT NULL,
 FOREIGN KEY(address_detail_pid) REFERENCES ADDRESS_DETAIL (address_detail_pid),
 FOREIGN KEY(mb_2011_pid) REFERENCES MB_2011 (mb_2011_pid),
  FOREIGN KEY(mb_match_code) REFERENCES MB_MATCH_CODE_AUT (code)
);

CREATE TABLE ADDRESS_MESH_BLOCK_2016 (
 address_mesh_block_2016_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 address_detail_pid varchar(15) NOT NULL,
 mb_match_code varchar(15) NOT NULL,
 mb_2016_pid varchar(15) NOT NULL,
 FOREIGN KEY(address_detail_pid) REFERENCES ADDRESS_DETAIL (address_detail_pid),
 FOREIGN KEY(mb_2016_pid) REFERENCES MB_2016 (mb_2016_pid),
 FOREIGN KEY(mb_match_code) REFERENCES MB_MATCH_CODE_AUT (code)
);

CREATE TABLE ADDRESS_SITE (
 address_site_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 address_type varchar(8),
 address_site_name varchar(200),
 FOREIGN KEY(address_type) REFERENCES ADDRESS_TYPE_AUT (code)
);

CREATE TABLE ADDRESS_SITE_GEOCODE (
 address_site_geocode_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 address_site_pid varchar(15),
 geocode_site_name varchar(200),
 geocode_site_description varchar(45),
 geocode_type_code varchar(4),
 reliability_code numeric(1) NOT NULL,
 boundary_extent numeric(7),
 planimetric_accuracy numeric(12),
 elevation numeric(7),
 longitude numeric(11,8),
 latitude numeric(10,8),
 FOREIGN KEY(address_site_pid) REFERENCES ADDRESS_SITE (address_site_pid),
 FOREIGN KEY(geocode_type_code) REFERENCES GEOCODE_TYPE_AUT (code),
 FOREIGN KEY(reliability_code) REFERENCES GEOCODE_RELIABILITY_AUT (code)
);

CREATE TABLE LOCALITY (
 locality_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 locality_name varchar(100) NOT NULL,
 primary_postcode varchar(4),
 locality_class_code char(1) NOT NULL,
 state_pid varchar(15) NOT NULL,
 gnaf_locality_pid varchar(15),
 gnaf_reliability_code numeric(1) NOT NULL,
 FOREIGN KEY(gnaf_reliability_code) REFERENCES GEOCODE_RELIABILITY_AUT (code),
 FOREIGN KEY(locality_class_code) REFERENCES LOCALITY_CLASS_AUT (code),
 FOREIGN KEY(state_pid) REFERENCES STATE (state_pid)
);

CREATE TABLE LOCALITY_ALIAS (
 locality_alias_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 locality_pid varchar(15) NOT NULL,
 name varchar(100) NOT NULL,
 postcode varchar(4),
 alias_type_code varchar(10) NOT NULL,
 state_pid varchar(15) NOT NULL,
 FOREIGN KEY(alias_type_code) REFERENCES LOCALITY_ALIAS_TYPE_AUT (code),
 FOREIGN KEY(locality_pid) REFERENCES LOCALITY (locality_pid)
);

CREATE TABLE LOCALITY_NEIGHBOUR (
 locality_neighbour_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 locality_pid varchar(15) NOT NULL,
 neighbour_locality_pid varchar(15) NOT NULL,
 FOREIGN KEY(locality_pid) REFERENCES LOCALITY (locality_pid),
 FOREIGN KEY(neighbour_locality_pid) REFERENCES LOCALITY (locality_pid)
);

CREATE TABLE LOCALITY_POINT (
 locality_point_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 locality_pid varchar(15) NOT NULL,
 planimetric_accuracy numeric(12),
 longitude numeric(11,8),
 latitude numeric(10,8),
 FOREIGN KEY(locality_pid) REFERENCES LOCALITY (locality_pid)
);

CREATE TABLE PRIMARY_SECONDARY (
 primary_secondary_pid varchar(15) NOT NULL PRIMARY KEY,
 primary_pid varchar(15) NOT NULL,
 secondary_pid varchar(15) NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 ps_join_type_code numeric(2) NOT NULL,
 ps_join_comment varchar(500),
 FOREIGN KEY(primary_pid) REFERENCES ADDRESS_DETAIL (address_detail_pid),
 FOREIGN KEY(ps_join_type_code) REFERENCES PS_JOIN_TYPE_AUT (code),
 FOREIGN KEY(secondary_pid) REFERENCES ADDRESS_DETAIL (address_detail_pid)
);

CREATE TABLE STREET_LOCALITY (
 street_locality_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 street_class_code char(1) NOT NULL,
 street_name varchar(100) NOT NULL,
 street_type_code varchar(15),
 street_suffix_code varchar(15),
 locality_pid varchar(15) NOT NULL,
 gnaf_street_pid varchar(15),
 gnaf_street_confidence numeric(1),
 gnaf_reliability_code numeric(1) NOT NULL,
 FOREIGN KEY(gnaf_reliability_code) REFERENCES GEOCODE_RELIABILITY_AUT (code),
 FOREIGN KEY(locality_pid) REFERENCES LOCALITY (locality_pid),
 FOREIGN KEY(street_class_code) REFERENCES STREET_CLASS_AUT (code),
 FOREIGN KEY(street_suffix_code) REFERENCES STREET_SUFFIX_AUT (code),
 FOREIGN KEY(street_type_code) REFERENCES STREET_TYPE_AUT (code)
);

CREATE TABLE STREET_LOCALITY_ALIAS (
 street_locality_alias_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 street_locality_pid varchar(15) NOT NULL,
 street_name varchar(100) NOT NULL,
 street_type_code varchar(15),
 street_suffix_code varchar(15),
 alias_type_code varchar(10) NOT NULL,
 FOREIGN KEY(alias_type_code) REFERENCES STREET_LOCALITY_ALIAS_TYPE_AUT (code),
 FOREIGN KEY(street_locality_pid) REFERENCES STREET_LOCALITY (street_locality_pid),
 FOREIGN KEY(street_suffix_code) REFERENCES STREET_SUFFIX_AUT (code),
 FOREIGN KEY(street_type_code) REFERENCES STREET_TYPE_AUT (code)
);

CREATE TABLE STREET_LOCALITY_POINT (
 street_locality_point_pid varchar(15) NOT NULL PRIMARY KEY,
 date_created date NOT NULL,
 date_retired date,
 street_locality_pid varchar(15) NOT NULL,
 boundary_extent numeric(7),
 planimetric_accuracy numeric(12),
 longitude numeric(11,8),
 latitude numeric(10,8),
 FOREIGN KEY(street_locality_pid) REFERENCES STREET_LOCALITY (street_locality_pid)
);
