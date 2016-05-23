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

ALTER TABLE IF EXISTS ONLY public.maintypeoffloormaterial DROP CONSTRAINT IF EXISTS maintypeoffloormaterial_pkey;
DROP TABLE IF EXISTS public.maintypeoffloormaterial;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeoffloormaterial; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE maintypeoffloormaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of floor material" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: maintypeoffloormaterial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY maintypeoffloormaterial (geo_level, geo_code, "main type of floor material", total) FROM stdin;
region	30	cement	110426
region	30	earth	1856
region	30	other	80603
region	30	tiles	27425
region	30	wood	332
region	36	cement	174294
region	36	earth	954
region	36	other	131613
region	36	tiles	41125
region	36	wood	405
region	39	cement	270601
region	39	earth	789
region	39	other	214459
region	39	tiles	53831
region	39	wood	1000
region	40	cement	154080
region	40	earth	527
region	40	other	115342
region	40	tiles	37401
region	40	wood	587
region	28	cement	77538
region	28	earth	734
region	28	other	59498
region	28	tiles	16756
region	28	wood	170
region	14	cement	131198
region	14	earth	648
region	14	other	76432
region	14	tiles	53256
region	14	wood	698
region	7	cement	98270
region	7	earth	594
region	7	other	78385
region	7	tiles	18419
region	7	wood	381
region	43	cement	206108
region	43	earth	663
region	43	other	154017
region	43	tiles	50331
region	43	wood	641
region	11	cement	31305
region	11	earth	126
region	11	other	21911
region	11	tiles	9047
region	11	wood	169
region	34	cement	173063
region	34	earth	538
region	34	other	66945
region	34	tiles	99118
region	34	wood	6210
region	37	cement	355375
region	37	earth	1612
region	37	other	285209
region	37	tiles	66150
region	37	wood	1204
region	35	cement	127225
region	35	earth	1005
region	35	other	77342
region	35	tiles	48287
region	35	wood	474
region	22	cement	481787
region	22	earth	2120
region	22	other	113189
region	22	tiles	355536
region	22	wood	10567
region	3	cement	197851
region	3	earth	515
region	3	other	129139
region	3	tiles	65473
region	3	wood	2288
region	20	cement	153981
region	20	earth	735
region	20	other	92239
region	20	tiles	60133
region	20	wood	680
region	45	cement	269454
region	45	earth	1379
region	45	other	208278
region	45	tiles	57974
region	45	wood	993
region	42	cement	226137
region	42	earth	932
region	42	other	125046
region	42	tiles	95973
region	42	wood	3612
region	15	cement	205412
region	15	earth	656
region	15	other	136153
region	15	tiles	67124
region	15	wood	1182
region	2	cement	121691
region	2	earth	211
region	2	other	85386
region	2	tiles	35161
region	2	wood	803
region	31	cement	103081
region	31	earth	1033
region	31	other	67685
region	31	tiles	33491
region	31	wood	651
region	5	cement	22013
region	5	earth	73
region	5	other	13705
region	5	tiles	8143
region	5	wood	65
region	16	cement	264342
region	16	earth	500
region	16	other	105122
region	16	tiles	154263
region	16	wood	4275
region	17	cement	186280
region	17	earth	404
region	17	other	99572
region	17	tiles	85016
region	17	wood	1148
region	9	cement	125471
region	9	earth	629
region	9	other	115087
region	9	tiles	9280
region	9	wood	152
region	10	cement	56711
region	10	earth	153
region	10	other	46871
region	10	tiles	9292
region	10	wood	143
region	12	cement	380505
region	12	earth	7188
region	12	other	226948
region	12	tiles	143636
region	12	wood	1691
region	44	cement	179970
region	44	earth	832
region	44	other	129541
region	44	tiles	48681
region	44	wood	697
region	1	cement	257254
region	1	earth	637
region	1	other	36368
region	1	tiles	207480
region	1	wood	12235
region	21	cement	242332
region	21	earth	1109
region	21	other	145502
region	21	tiles	94140
region	21	wood	1321
region	47	cement	983115
region	47	earth	19169
region	47	other	87228
region	47	tiles	809278
region	47	wood	66147
region	32	cement	409097
region	32	earth	3457
region	32	other	191454
region	32	tiles	208216
region	32	wood	5045
region	29	cement	152889
region	29	earth	699
region	29	other	105529
region	29	tiles	45787
region	29	wood	619
region	33	cement	169067
region	33	earth	1040
region	33	other	142236
region	33	tiles	24696
region	33	wood	419
region	46	cement	106065
region	46	earth	552
region	46	other	80843
region	46	tiles	24221
region	46	wood	361
region	18	cement	142493
region	18	earth	2218
region	18	other	98033
region	18	tiles	40989
region	18	wood	450
region	19	cement	201353
region	19	earth	3254
region	19	other	113669
region	19	tiles	83057
region	19	wood	1068
region	25	cement	47231
region	25	earth	165
region	25	other	39058
region	25	tiles	7821
region	25	wood	86
region	41	cement	198664
region	41	earth	734
region	41	other	139196
region	41	tiles	57585
region	41	wood	793
region	6	cement	70039
region	6	earth	200
region	6	other	38782
region	6	tiles	30485
region	6	wood	451
region	4	cement	47274
region	4	earth	138
region	4	other	41604
region	4	tiles	5366
region	4	wood	87
region	13	cement	27389
region	13	earth	195
region	13	other	22520
region	13	tiles	4590
region	13	wood	55
region	26	cement	169632
region	26	earth	814
region	26	other	123709
region	26	tiles	43706
region	26	wood	895
region	23	cement	122935
region	23	earth	1125
region	23	other	113145
region	23	tiles	8007
region	23	wood	205
region	27	cement	201616
region	27	earth	1561
region	27	other	102615
region	27	tiles	93401
region	27	wood	3501
region	38	cement	123241
region	38	earth	551
region	38	other	97630
region	38	tiles	24377
region	38	wood	468
region	8	cement	88493
region	8	earth	214
region	8	other	80979
region	8	tiles	6899
region	8	wood	131
region	24	cement	93749
region	24	earth	524
region	24	other	81304
region	24	tiles	11578
region	24	wood	137
country	KE	cement	8738097
country	KE	earth	65762
country	KE	other	4937121
country	KE	tiles	3582001
country	KE	wood	135692
\.


--
-- Name: maintypeoffloormaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY maintypeoffloormaterial
    ADD CONSTRAINT maintypeoffloormaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of floor material");


--
-- PostgreSQL database dump complete
--

