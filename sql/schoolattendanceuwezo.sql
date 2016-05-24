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

ALTER TABLE IF EXISTS ONLY public.schoolattendance DROP CONSTRAINT IF EXISTS schoolattendance_pkey;
DROP TABLE IF EXISTS public.schoolattendance;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schoolattendance; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE schoolattendance (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: schoolattendance; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schoolattendance (geo_level, geo_code, "school attendance", total) FROM stdin;
country	TZ	dropped out of primary school	15
region	1	dropped out of primary school	2
region	2	dropped out of primary school	5
region	3	dropped out of primary school	23
region	4	dropped out of primary school	29
region	5	dropped out of primary school	24
region	6	dropped out of primary school	10
region	7	dropped out of primary school	17
region	8	dropped out of primary school	28
region	9	dropped out of primary school	24
region	10	dropped out of primary school	25
region	11	dropped out of primary school	15
region	12	dropped out of primary school	14
region	13	dropped out of primary school	6
region	14	dropped out of primary school	7
region	15	dropped out of primary school	14
region	16	dropped out of primary school	29
region	17	dropped out of primary school	22
region	18	dropped out of primary school	1
region	19	dropped out of primary school	13
region	20	dropped out of primary school	26
region	21	dropped out of primary school	22
region	22	dropped out of primary school	8
region	23	dropped out of primary school	28
region	24	dropped out of primary school	9
region	25	dropped out of primary school	2
region	26	dropped out of primary school	19
region	27	dropped out of primary school	15
country	TZ	out of school	8
region	1	out of school	28
region	2	out of school	11
region	3	out of school	5
region	4	out of school	6
region	5	out of school	18
region	6	out of school	6
region	7	out of school	15
region	8	out of school	25
region	9	out of school	16
region	10	out of school	24
region	11	out of school	20
region	12	out of school	4
region	13	out of school	29
region	14	out of school	20
region	15	out of school	12
region	16	out of school	18
region	17	out of school	24
region	18	out of school	25
region	19	out of school	25
region	20	out of school	18
region	21	out of school	13
region	22	out of school	14
region	23	out of school	9
region	24	out of school	25
region	25	out of school	12
region	26	out of school	1
region	27	out of school	26
\.
--
-- Name: schoolattendance_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schoolattendance
    ADD CONSTRAINT schoolattendance_pkey PRIMARY KEY (geo_level, geo_code, "school attendance");


--
-- PostgreSQL database dump complete
--

