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

DROP INDEX IF EXISTS public.wazimap_geography_name_36b79089_like;
DROP INDEX IF EXISTS public.wazimap_geography_d7d547e9;
DROP INDEX IF EXISTS public.wazimap_geography_b068931c;
DROP INDEX IF EXISTS public.wazimap_geography_84cdc76c;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_pkey;
ALTER TABLE IF EXISTS ONLY public.wazimap_geography DROP CONSTRAINT IF EXISTS wazimap_geography_geo_level_9a5128d2_uniq;
ALTER TABLE IF EXISTS public.wazimap_geography ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.wazimap_geography_id_seq;
DROP TABLE IF EXISTS public.wazimap_geography;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wazimap_geography; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wazimap_geography (
    id integer NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    name character varying(40) NOT NULL,
    year integer,
    osm_area_id integer,
    square_kms double precision,
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(128) NOT NULL
);


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wazimap_geography_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wazimap_geography_id_seq OWNED BY wazimap_geography.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wazimap_geography ALTER COLUMN id SET DEFAULT nextval('wazimap_geography_id_seq'::regclass);


--
-- Data for Name: wazimap_geography; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wazimap_geography (id, geo_level, geo_code, name, year, osm_area_id, square_kms, parent_level, parent_code, long_name) FROM stdin;
1	country	TZ	Tanzania	2009	13	5117	/N	/N	Tanzania
2	region	1	Arusha	2009	40648	13473	country	TZ	Arusha
3	region	2	Dar-es-salaam	2009	49956	23198	country	TZ	Dar-es-salaam
4	region	3	Dodoma	2009	46312	24523	country	TZ	Dodoma
5	region	4	Iringa	2009	17953	15308	country	TZ	Iringa
6	region	5	Kagera	2009	33917	10345	country	TZ	Kagera
7	region	6	Kaskazini-Pemba	2009	31668	39319	country	TZ	Kaskazini-Pemba
8	region	7	 Kaskazini-Unguja	2009	14434	10146	country	TZ	 Kaskazini-Unguja
9	region	8	Kigoma	2009	6303	23612	country	TZ	Kigoma
10	region	9	Kilimanjaro	2009	37763	12674	country	TZ	Kilimanjaro
11	region	10	Kusini Pemba	2009	40126	31144	country	TZ	Kusini Pemba
12	region	11	Lindi	2009	17743	31259	country	TZ	Lindi
13	region	12	Manyara	2009	40145	22786	country	TZ	Manyara
14	region	13	Mara	2009	7426	11133	country	TZ	Mara
15	region	14	Mbeya	2009	15916	32637	country	TZ	Mbeya
16	region	15	Morogoro	2009	44211	19069	country	TZ	Morogoro
17	region	16	Mtwara	2009	43102	33695	country	TZ	Mtwara
18	region	17	Mwanza	2009	5194	19323	country	TZ	Mwanza
19	region	18	Pwani	2009	38757	27014	country	TZ	Pwani
20	region	19	Rukwa	2009	35418	7896	country	TZ	Rukwa
21	region	20	Ruvuma	2009	7120	31251	country	TZ	Ruvuma
22	region	21	Shinyanga	2009	35555	9209	country	TZ	Shinyanga
23	region	22	Simiyu	2009	8108	32399	country	TZ	Simiyu
24	region	23	Singida	2009	21032	35420	country	TZ	Singida
25	region	24	Tabora	2009	20684	25389	country	TZ	Tabora
26	region	25	Tanga	2009	41562	18823	country	TZ	Tanga
27	region	26	Zanzibar South and Central	2009	19811	40272	country	TZ	'Zanzibar South and Central'
28	region	27	Zanzibar West	2009	28667	2031	country	TZ	'Zanzibar West'
\.


--
-- Name: wazimap_geography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wazimap_geography_id_seq', 48, true);


--
-- Name: wazimap_geography_geo_level_9a5128d2_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_geo_level_9a5128d2_uniq UNIQUE (geo_level, geo_code);


--
-- Name: wazimap_geography_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wazimap_geography
    ADD CONSTRAINT wazimap_geography_pkey PRIMARY KEY (id);


--
-- Name: wazimap_geography_84cdc76c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_84cdc76c ON wazimap_geography USING btree (year);


--
-- Name: wazimap_geography_b068931c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_b068931c ON wazimap_geography USING btree (name);


--
-- Name: wazimap_geography_d7d547e9; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_d7d547e9 ON wazimap_geography USING btree (osm_area_id);


--
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_name_36b79089_like ON wazimap_geography USING btree (name varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

