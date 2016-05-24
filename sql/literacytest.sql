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

ALTER TABLE IF EXISTS ONLY public.literacytest DROP CONSTRAINT IF EXISTS literacytest_pkey;
DROP TABLE IF EXISTS public.literacytest;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: literacytest; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE literacytest (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "literacy test" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: literacytest; Type: TABLE DATA; Schema: public; Owner: -
--

COPY literacytest (geo_level, geo_code, "literacy test", total) FROM stdin;
country	TZ	all subject tests	67
region	1	all subject tests	93
region	2	all subject tests	71
region	3	all subject tests	62
region	4	all subject tests	78
region	5	all subject tests	55
region	6	all subject tests	80
region	7	all subject tests	53
region	8	all subject tests	78
region	9	all subject tests	67
region	10	all subject tests	99
region	11	all subject tests	81
region	12	all subject tests	76
region	13	all subject tests	60
region	14	all subject tests	60
region	15	all subject tests	74
region	16	all subject tests	78
region	17	all subject tests	89
region	18	all subject tests	48
region	19	all subject tests	20
region	20	all subject tests	95
region	21	all subject tests	68
region	22	all subject tests	71
region	23	all subject tests	64
region	24	all subject tests	66
region	25	all subject tests	81
region	26	all subject tests	68
region	27	all subject tests	63
country	TZ	swahili literacy test	59
region	1	swahili literacy test	35
region	2	swahili literacy test	46
region	3	swahili literacy test	62
region	4	swahili literacy test	97
region	5	swahili literacy test	76
region	6	swahili literacy test	50
region	7	swahili literacy test	79
region	8	swahili literacy test	97
region	9	swahili literacy test	41
region	10	swahili literacy test	46
region	11	swahili literacy test	73
region	12	swahili literacy test	56
region	13	swahili literacy test	52
region	14	swahili literacy test	33
region	15	swahili literacy test	62
region	16	swahili literacy test	56
region	17	swahili literacy test	87
region	18	swahili literacy test	21
region	19	swahili literacy test	40
region	20	swahili literacy test	67
region	21	swahili literacy test	28
region	22	swahili literacy test	70
region	23	swahili literacy test	49
region	24	swahili literacy test	89
region	25	swahili literacy test	29
region	26	swahili literacy test	92
region	27	swahili literacy test	49
country	TZ	english literacy test	82
region	1	english literacy test	21
region	2	english literacy test	51
region	3	english literacy test	93
region	4	english literacy test	50
region	5	english literacy test	22
region	6	english literacy test	38
region	7	english literacy test	34
region	8	english literacy test	65
region	9	english literacy test	54
region	10	english literacy test	72
region	11	english literacy test	87
region	12	english literacy test	89
region	13	english literacy test	59
region	14	english literacy test	15
region	15	english literacy test	78
region	16	english literacy test	71
region	17	english literacy test	35
region	18	english literacy test	63
region	19	english literacy test	20
region	20	english literacy test	51
region	21	english literacy test	74
region	22	english literacy test	66
region	23	english literacy test	80
region	24	english literacy test	82
region	25	english literacy test	91
region	26	english literacy test	84
region	27	english literacy test	51
country	TZ	numeracy test	67
region	1	numeracy test	75
region	2	numeracy test	57
region	3	numeracy test	31
region	4	numeracy test	95
region	5	numeracy test	17
region	6	numeracy test	75
region	7	numeracy test	72
region	8	numeracy test	50
region	9	numeracy test	35
region	10	numeracy test	13
region	11	numeracy test	48
region	12	numeracy test	50
region	13	numeracy test	74
region	14	numeracy test	78
region	15	numeracy test	59
region	16	numeracy test	79
region	17	numeracy test	75
region	18	numeracy test	84
region	19	numeracy test	55
region	20	numeracy test	80
region	21	numeracy test	89
region	22	numeracy test	88
region	23	numeracy test	61
region	24	numeracy test	91
region	25	numeracy test	28
region	26	numeracy test	58
region	27	numeracy test	66
\.
--
-- Name: literacytest_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY literacytest
    ADD CONSTRAINT literacytest_pkey PRIMARY KEY (geo_level, geo_code, "literacy test");


--
-- PostgreSQL database dump complete
--