--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.health_facilities_type DROP CONSTRAINT IF EXISTS health_facilities_type_pkey;
DROP TABLE IF EXISTS public.health_facilities_type;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthfacilities_type; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE health_facilities_type (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    type character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: health_facilities_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY health_facilities_type (geo_level, geo_code, type, total) FROM stdin;
country	TZ	Stand Alone VCT Centre	174
country	TZ	Health Training Institution	7
country	TZ	Sub District Hospital	137
country	TZ	Rural Health Training Centre	1
country	TZ	Regional Blood Transfusion Centre	2
country	TZ	Radiology Unit	9
country	TZ	Provincial General Hospital	9
country	TZ	Other Hospital	246
country	TZ	Nursing Hospital	199
country	TZ	Unlisted	23
country	TZ	National Referral Hospital	3
country	TZ	Medical Clinic	3183
country	TZ	Medical Centre	29
country	TZ	Maternity Home	49
country	TZ	Stand Alone Labs	57
country	TZ	Health Project	8
country	TZ	Health Programme	14
country	TZ	Health Centre	1107
country	TZ	Stand Alone Funeral Home	1
country	TZ	Eye Clinic	3
country	TZ	Eye Centre	10
country	TZ	District Hospital	138
country	TZ	District Health Office	4
country	TZ	Dispensary	4624
country	TZ	Dental Clinic	30
country	TZ	Blood Bank	1
region	28	Dispensary	90
region	28	District Hospital	2
region	28	Health Centre	22
region	28	Medical Clinic	3
region	28	Other Hospital	2
region	28	Sub District Hospital	5
region	14	Dispensary	93
region	14	District Health Office	1
region	14	District Hospital	2
region	14	Health Centre	13
region	14	Maternity Home	1
region	14	Medical Clinic	50
region	14	Nursing Home	3
region	14	Other Hospital	4
region	14	Provincial General Hospital	1
region	14	Regional Blood Transfusion Centre	1
region	14	Sub District Hospital	2
region	14	Health Training Institution  	1
region	14	Stand Alone VCT Centre 	6
region	7	Dispensary	62
region	7	District Hospital	3
region	7	Health Centre	22
region	7	Medical Centre	1
region	7	Medical Clinic	54
region	7	Nursing Home	6
region	7	Other Hospital	6
region	7	Provincial General Hospital	1
region	7	Sub District Hospital	4
region	22	Dispensary	135
region	22	District Hospital	3
region	22	Health Centre	40
region	22	Health Programme	1
region	22	Maternity Home	3
region	22	Medical Centre	1
region	22	Medical Clinic	242
region	22	Nursing Home	11
region	22	Other Hospital	24
region	22	Provincial General Hospital	1
region	22	Sub District Hospital	4
region	22	Stand Alone VCT Centre	6
region	3	Dispensary	102
region	3	District Hospital	3
region	3	Health Centre	16
region	3	Medical Clinic	120
region	3	Nursing Home	6
region	3	Other Hospital	5
region	3	Sub District Hospital	2
region	3	Stand Alone VCT Centre	3
region	20	Dental Clinic	1
region	20	Dispensary	65
region	20	District Hospital	1
region	20	Eye Centre	2
region	20	Health Centre	25
region	20	Stand Alone Labs	19
region	20	Maternity Home	1
region	20	Medical Clinic	114
region	20	Unlisted	1
region	20	Nursing Home	9
region	20	Other Hospital	1
region	20	Radiology Unit	1
region	20	Sub District Hospital	3
region	15	Dispensary	269
region	15	District Hospital	3
region	15	Health Centre	37
region	15	Medical Centre	1
region	15	Medical Clinic	61
region	15	Nursing Home	13
region	15	Other Hospital	3
region	15	Sub District Hospital	8
region	2	Dispensary	68
region	2	District Hospital	3
region	2	Health Centre	10
region	2	Medical Clinic	28
region	2	Unlisted	1
region	2	Other Hospital	2
region	2	Stand Alone VCT Centre	3
region	31	Dispensary	65
region	31	District Hospital	3
region	31	Health Centre	9
region	31	Health Programme	1
region	31	Medical Centre	1
region	31	Medical Clinic	25
region	31	Unlisted	1
region	31	Nursing Home	2
region	31	Other Hospital	4
region	31	Sub District Hospital	1
region	31	Stand Alone VCT Centre	3
region	5	Dispensary	22
region	5	District Hospital	1
region	5	Health Centre	5
region	5	Medical Clinic	13
region	5	Nursing Home	1
region	5	Sub District Hospital	2
region	5	Stand Alone VCT Centre	1
region	16	Dispensary	151
region	16	District Hospital	5
region	16	Health Centre	31
region	16	Maternity Home	3
region	16	Medical Clinic	146
region	16	Unlisted	1
region	16	Nursing Home	3
region	16	Other Hospital	3
region	16	Provincial General Hospital	1
region	16	Stand Alone VCT Centre	9
region	17	Dispensary	170
region	17	District Hospital	4
region	17	Health Centre	26
region	17	Medical Centre	1
region	17	Medical Clinic	39
region	17	Nursing Home	5
region	17	Other Hospital	3
region	17	Sub District Hospital	6
region	17	Stand Alone VCT Centre	3
region	9	Dispensary	28
region	9	District Hospital	3
region	9	Health Centre	21
region	9	Medical Clinic	21
region	9	Nursing Home	9
region	9	Sub District Hospital	2
region	10	Dispensary	65
region	10	District Hospital	2
region	10	Health Centre	18
region	10	Stand Alone Labs	2
region	10	Medical Centre	1
region	10	Medical Clinic	21
region	10	Nursing Home	3
region	10	Other Hospital	2
region	12	Dental Clinic	3
region	12	Dispensary	144
region	12	District Health Office	1
region	12	District Hospital	5
region	12	Eye Centre	1
region	12	Eye Clinic	1
region	12	Stand Alone Funeral Home	1
region	12	Health Centre	28
region	12	Stand Alone Labs	9
region	12	Maternity Home	3
region	12	Medical Centre	3
region	12	Medical Clinic	218
region	12	Unlisted	14
region	12	Nursing Home	5
region	12	Other Hospital	10
region	12	Radiology Unit	2
region	12	Sub District Hospital	9
region	12	Health Training Institution	1
region	12	Stand Alone VCT Centre	2
region	1	Dispensary	43
region	1	District Hospital	2
region	1	Health Centre	12
region	1	Health Programme	1
region	1	Maternity Home	2
region	1	Medical Centre	1
region	1	Medical Clinic	220
region	1	Nursing Home	10
region	1	Other Hospital	16
region	1	Provincial General Hospital	1
region	1	Regional Blood Transfusion Centre	1
region	1	Stand Alone VCT Centre	9
region	8	Dispensary	72
region	8	District Hospital	4
region	8	Health Centre	27
region	8	Medical Centre	1
region	8	Medical Clinic	42
region	8	Nursing Home	4
region	8	Other Hospital	1
region	8	Sub District Hospital	6
region	24	Dispensary	97
region	24	District Hospital	2
region	24	Health Centre	7
region	24	Medical Clinic	15
region	24	Other Hospital	1
region	21	Dispensary	130
region	21	District Hospital	2
region	21	Health Centre	17
region	21	Stand Alone Labs	1
region	21	Maternity Home	1
region	21	Medical Centre	1
region	21	Medical Clinic	118
region	21	Nursing Home	3
region	21	Other Hospital	3
region	46	Sub District Hospital	5
region	18	Dispensary	49
region	18	District Hospital	1
region	18	Health Centre	24
region	18	Maternity Home	1
region	18	Medical Centre	1
region	18	Medical Clinic	66
region	18	Other Hospital	2
region	18	Sub District Hospital	1
region	19	Dental Clinic	7
region	19	Dispensary	129
region	19	District Hospital	2
region	19	Eye Centre	4
region	19	Health Centre	24
region	19	Stand Alone Labs 	9
region	19	Maternity Home	3
region	19	Medical Clinic	248
region	19	Nursing Home	3
region	19	Other Hospital	5
region	19	Provincial General Hospital	1
region	19	Radiology Unit	3
region	19	Sub District Hospital	2
region	19	Stand Alone VCT Centre	2
region	25	Dispensary	73
region	25	District Hospital	1
region	25	Health Centre	5
region	25	Medical Clinic	15
region	25	Other Hospital	1
region	25	SubDistrict Hospital	1
region	6	Dispensary	47
region	6	District Hospital	3
region	6	Health Centre	17
region	6	Medical Clinic	19
region	6	Nursing Home	1
region	6	Other Hospital	2
region	6	Sub District Hospital	2
region	4	Dispensary	49
region	4	District Hospital	2
region	4	Health Centre	5
region	4	Maternity Home	1
region	4	Medical Clinic	8
region	13	Dispensary	70
region	13	District Hospital	3
region	13	Health Centre	13
region	13	Medical Centre	1
region	13	Medical Clinic	35
region	13	Other Hospital	4
region	13	Sub District Hospital	1
region	13	Stand Alone VCT Centre	1
region	26	Dental Clinic	4
region	26	Dispensary	56
region	26	District Hospital	3
region	26	Eye Clinic	1
region	26	Health Centre	9
region	26	Health Programme	1
region	26	Laboratory (	1
region	26	Medical Clinic	62
region	26	Unlisted	3
region	26	Nursing Home	2
region	26	Other Hospital	5
region	26	Radiology Unit	1
region	26	Sub District Hospital	1
region	26	Stand Alone VCT Centre	2
region	23	Dispensary	111
region	23	District Hospital	3
region	23	Health Centre	17
region	23	Health Programme	2
region	23	Medical Clinic	25
region	23	Other Hospital	2
region	23	Sub District Hospital	2
region	23	Health Training Institution	1
region	23	Stand Alone VCT Centre	1
region	27	Blood Bank	1
region	27	Dispensary	102
region	27	District Hospital	2
region	27	Health Centre	26
region	27	Maternity Home	1
region	27	Medical Clinic	42
region	27	National Referral Hospital	1
region	27	Nursing Home	1
region	27	Other Hospital	9
region	27	Sub District Hospital	1
region	27	Stand Alone VCT Centre 	29
\.
--
--
-- Name: health_facilities_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY health_facilities_type
    ADD CONSTRAINT health_facilities_type_pkey PRIMARY KEY (geo_level, geo_code, type, total);


--
-- PostgreSQL database dump complete
--

