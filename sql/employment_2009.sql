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

ALTER TABLE IF EXISTS ONLY public.employmentactivitystatus_sex DROP CONSTRAINT IF EXISTS employmentactivitystatus_sex_pkey;
DROP TABLE IF EXISTS public.employmentactivitystatus_sex;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employmentactivitystatus_sex; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE employmentactivitystatus_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "employment activity status" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: employmentactivitystatus_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY employmentactivitystatus_sex (geo_level, geo_code, "employment activity status", sex, total) FROM stdin;
e
\.


--
-- Name: employmentactivitystatus_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY employmentactivitystatus_sex
    ADD CONSTRAINT employmentactivitystatus_sex_pkey PRIMARY KEY (geo_level, geo_code, "employment activity status", sex);


--
-- PostgreSQL database dump complete
--

