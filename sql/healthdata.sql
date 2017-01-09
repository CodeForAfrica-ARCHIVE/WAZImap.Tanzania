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

ALTER TABLE IF EXISTS ONLY public.causesofdeathunderfive DROP CONSTRAINT IF EXISTS causesofdeathunderfive_pkey;
DROP TABLE IF EXISTS public.causesofdeathunderfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: causesofdeathunderfive; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE causesofdeathunderfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "causes of death under five" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: causesofdeathunderfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY causesofdeathunderfive (geo_level, geo_code, "causes of death under five", total) FROM stdin;
region	1	acute respiratory infections	1
region	1	diarrhoeal diseases	43
region	1	malaria	39
region	1	nutritional disorders	21
region	1	anaemia	19
region	1	pneumonia	237
region	1	pre-natal conditions	17
region	1	HIV/AIDS	21
region	1	others	84
region	3	acute respiratory infections	52
region	3	diarrhoeal diseases	34
region	3	malaria	56
region	3	nutritional disorders	22
region	3	anaemia	27
region	3	pneumonia	105
region	3	pre-natal conditions	64
region	3	HIV/AIDS	27
region	3	others	118
region	2	acute respiratory infections	0
region	2	diarrhoeal diseases	31
region	2	malaria	234
region	2	nutritional disorders	6
region	2	anaemia	180
region	2	pneumonia	223
region	2	pre-natal conditions	517
region	2	HIV/AIDS	10
region	2	others	106
region	4	acute respiratory infections	18
region	4	diarrhoeal diseases	42
region	4	malaria	260
region	4	nutritional disorders	4
region	4	anaemia	157
region	4	pneumonia	45
region	4	pre-natal conditions	15
region	4	HIV/AIDS	16
region	4	others	21
region	5	acute respiratory infections	4
region	5	diarrhoeal diseases	15
region	5	malaria	34
region	5	nutritional disorders	7
region	5	anaemia	9
region	5	pneumonia	80
region	5	pre-natal conditions	3
region	5	HIV/AIDS	5
region	5	others	21
region	6	acute respiratory infections	6
region	6	diarrhoeal diseases	26
region	6	malaria	438
region	6	nutritional disorders	58
region	6	anaemia	176
region	6	pneumonia	169
region	6	pre-natal conditions	23
region	6	HIV/AIDS	7
region	6	others	43
region	9	acute respiratory infections	9
region	9	diarrhoeal diseases	52
region	9	malaria	161
region	9	nutritional disorders	11
region	9	anaemia	110
region	9	pneumonia	55
region	9	pre-natal conditions	18
region	9	HIV/AIDS	4
region	9	others	76
region	10	acute respiratory infections	23
region	10	diarrhoeal diseases	8
region	10	malaria	338
region	10	nutritional disorders	17
region	10	anaemia	128
region	10	pneumonia	136
region	10	pre-natal conditions	60
region	10	HIV/AIDS	2
region	10	others	163
region	11	acute respiratory infections	31
region	11	diarrhoeal diseases	14
region	11	malaria	66
region	11	nutritional disorders	14
region	11	anaemia	8
region	11	pneumonia	50
region	11	pre-natal conditions	3
region	11	HIV/AIDS	13
region	11	others	50
region	14	acute respiratory infections	1
region	14	diarrhoeal diseases	27
region	14	malaria	143
region	14	nutritional disorders	0
region	14	anaemia	14
region	14	pneumonia	20
region	14	pre-natal conditions	0
region	14	HIV/AIDS	1
region	14	others	5
region	15	acute respiratory infections	1
region	15	diarrhoeal diseases	11
region	15	malaria	62
region	15	nutritional disorders	16
region	15	anaemia	24
region	15	pneumonia	58
region	15	pre-natal conditions	4
region	15	HIV/AIDS	5
region	15	others	153
region	16	acute respiratory infections	69
region	16	diarrhoeal diseases	66
region	16	malaria	551
region	16	nutritional disorders	20
region	16	anaemia	287
region	16	pneumonia	100
region	16	pre-natal conditions	0
region	16	HIV/AIDS	0
region	16	others	78
region	17	acute respiratory infections	14
region	17	diarrhoeal diseases	104
region	17	malaria	76
region	17	nutritional disorders	46
region	17	anaemia	36
region	17	pneumonia	170
region	17	pre-natal conditions	33
region	17	HIV/AIDS	5
region	17	others	340
region	18	acute respiratory infections	11
region	18	diarrhoeal diseases	21
region	18	malaria	288
region	18	nutritional disorders	12
region	18	anaemia	79
region	18	pneumonia	142
region	18	pre-natal conditions	47
region	18	HIV/AIDS	82
region	18	others	329
region	19	acute respiratory infections	13
region	19	diarrhoeal diseases	14
region	19	malaria	172
region	19	nutritional disorders	0
region	19	anaemia	64
region	19	pneumonia	46
region	19	pre-natal conditions	79
region	19	HIV/AIDS	1
region	19	others	40
region	20	acute respiratory infections	2
region	20	diarrhoeal diseases	19
region	20	malaria	349
region	20	nutritional disorders	18
region	20	anaemia	135
region	20	pneumonia	74
region	20	pre-natal conditions	4
region	20	HIV/AIDS	21
region	20	others	18
region	21	acute respiratory infections	13
region	21	diarrhoeal diseases	9
region	21	malaria	43
region	21	nutritional disorders	12
region	21	anaemia	15
region	21	pneumonia	30
region	21	pre-natal conditions	0
region	21	HIV/AIDS	8
region	21	others	25
region	22	acute respiratory infections	0
region	22	diarrhoeal diseases	25
region	22	malaria	72
region	22	nutritional disorders	2
region	22	anaemia	25
region	22	pneumonia	45
region	22	pre-natal conditions	27
region	22	HIV/AIDS	10
region	22	others	23
region	23	acute respiratory infections	11
region	23	diarrhoeal diseases	34
region	23	malaria	128
region	23	nutritional disorders	28
region	23	anaemia	52
region	23	pneumonia	53
region	23	pre-natal conditions	2
region	23	HIV/AIDS	0
region	23	others	24
region	24	acute respiratory infections	1
region	24	diarrhoeal diseases	21
region	24	malaria	271
region	24	nutritional disorders	19
region	24	anaemia	70
region	24	pneumonia	74
region	24	pre-natal conditions	12
region	24	HIV/AIDS	10
region	24	others	42
region	25	acute respiratory infections	0
region	25	diarrhoeal diseases	10
region	25	malaria	370
region	25	nutritional disorders	3
region	25	anaemia	100
region	25	pneumonia	45
region	25	pre-natal conditions	0
region	25	HIV/AIDS	0
region	25	others	33
region	26	acute respiratory infections	2
region	26	diarrhoeal diseases	12
region	26	malaria	205
region	26	nutritional disorders	20
region	26	anaemia	241
region	26	pneumonia	49
region	26	pre-natal conditions	12
region	26	HIV/AIDS	10
region	26	others	126
region	27	acute respiratory infections	38
region	27	diarrhoeal diseases	76
region	27	malaria	146
region	27	nutritional disorders	23
region	27	anaemia	45
region	27	pneumonia	92
region	27	pre-natal conditions	25
region	27	HIV/AIDS	7
region	27	others	75
region	29	acute respiratory infections	2
region	29	diarrhoeal diseases	60
region	29	malaria	380
region	29	nutritional disorders	16
region	29	anaemia	172
region	29	pneumonia	93
region	29	pre-natal conditions	0
region	29	HIV/AIDS	44
region	29	others	123
region	28	acute respiratory infections	34
region	28	diarrhoeal diseases	26
region	28	malaria	149
region	28	nutritional disorders	1
region	28	anaemia	68
region	28	pneumonia	124
region	28	pre-natal conditions	2
region	28	HIV/AIDS	40
region	28	others	22
region	7	acute respiratory infections	0
region	7	diarrhoeal diseases	0
region	7	malaria	0
region	7	nutritional disorders	0
region	7	anaemia	0
region	7	pneumonia	0
region	7	pre-natal conditions	0
region	7	HIV/AIDS	0
region	7	others	0
region	8	acute respiratory infections	0
region	8	diarrhoeal diseases	0
region	8	malaria	0
region	8	nutritional disorders	0
region	8	anaemia	0
region	8	pneumonia	0
region	8	pre-natal conditions	0
region	8	HIV/AIDS	0
region	8	others	0
region	12	acute respiratory infections	0
region	12	diarrhoeal diseases	0
region	12	malaria	0
region	12	nutritional disorders	0
region	12	anaemia	0
region	12	pneumonia	0
region	12	pre-natal conditions	0
region	12	HIV/AIDS	0
region	12	others	0
region	13	acute respiratory infections	0
region	13	diarrhoeal diseases	0
region	13	malaria	0
region	13	nutritional disorders	0
region	13	anaemia	0
region	13	pneumonia	0
region	13	pre-natal conditions	0
region	13	HIV/AIDS	0
region	13	others	0
region	30	acute respiratory infections	0
region	30	diarrhoeal diseases	0
region	30	malaria	0
region	30	nutritional disorders	0
region	30	anaemia	0
region	30	pneumonia	0
region	30	pre-natal conditions	0
region	30	HIV/AIDS	0
region	30	others	0
country	TZ	acute respiratory infections	356
country	TZ	diarrhoeal diseases	800
country	TZ	malaria	5031
country	TZ	nutritional disorders	396
country	TZ	anaemia	2241
country	TZ	pneumonia	2315
country	TZ	pre-natal conditions	967
country	TZ	HIV/AIDS	349
country	TZ	others	2138
\.
--
-- Name: causesofdeathunderfive_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY causesofdeathunderfive
    ADD CONSTRAINT causesofdeathunderfive_pkey PRIMARY KEY (geo_level, geo_code, "causes of death under five");


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.causesofdeathoverfive DROP CONSTRAINT IF EXISTS causesofdeathoverfive_pkey;
DROP TABLE IF EXISTS public.causesofdeathoverfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: causesofdeathoverfive; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE causesofdeathoverfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "causes of death over five" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: causesofdeathoverfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY causesofdeathoverfive (geo_level, geo_code, "causes of death over five", total) FROM stdin;
region	1	diarrhoeal diseases	8
region	1	malaria	77
region	1	TB	97
region	1	anaemia	96
region	1	cardiac failure	123
region	1	hypertension	61
region	1	pneumonia	139
region	1	HIV/AIDS	345
region	1	Diabetes Mellitus	64
region	1	others	534
region	3	diarrhoeal diseases	21
region	3	malaria	138
region	3	TB	41
region	3	anaemia	50
region	3	cardiac failure	14
region	3	hypertension	32
region	3	pneumonia	51
region	3	HIV/AIDS	164
region	3	Diabetes Mellitus	5
region	3	others	80
region	2	diarrhoeal diseases	30
region	2	malaria	300
region	2	TB	271
region	2	anaemia	297
region	2	cardiac failure	178
region	2	hypertension	259
region	2	pneumonia	205
region	2	HIV/AIDS	437
region	2	Diabetes Mellitus	112
region	2	others	696
region	4	diarrhoeal diseases	5
region	4	malaria	205
region	4	TB	22
region	4	anaemia	63
region	4	cardiac failure	7
region	4	hypertension	10
region	4	pneumonia	5
region	4	HIV/AIDS	90
region	4	Diabetes Mellitus	3
region	4	others	47
region	5	diarrhoeal diseases	45
region	5	malaria	87
region	5	TB	13
region	5	anaemia	34
region	5	cardiac failure	95
region	5	hypertension	88
region	5	pneumonia	51
region	5	HIV/AIDS	38
region	5	Diabetes Mellitus	19
region	5	others	91
region	6	diarrhoeal diseases	24
region	6	malaria	184
region	6	TB	48
region	6	anaemia	53
region	6	cardiac failure	42
region	6	hypertension	56
region	6	pneumonia	54
region	6	HIV/AIDS	124
region	6	Diabetes Mellitus	21
region	6	others	264
region	9	diarrhoeal diseases	9
region	9	malaria	217
region	9	TB	29
region	9	anaemia	92
region	9	cardiac failure	47
region	9	hypertension	12
region	9	pneumonia	44
region	9	HIV/AIDS	61
region	9	Diabetes Mellitus	36
region	9	others	271
region	10	diarrhoeal diseases	23
region	10	malaria	54
region	10	TB	3
region	10	anaemia	33
region	10	cardiac failure	5
region	10	hypertension	10
region	10	pneumonia	21
region	10	HIV/AIDS	49
region	10	Diabetes Mellitus	2
region	10	others	94
region	11	diarrhoeal diseases	15
region	11	malaria	92
region	11	TB	39
region	11	anaemia	42
region	11	cardiac failure	85
region	11	hypertension	99
region	11	pneumonia	100
region	11	HIV/AIDS	63
region	11	Diabetes Mellitus	38
region	11	others	227
region	14	diarrhoeal diseases	10
region	14	malaria	169
region	14	TB	16
region	14	anaemia	19
region	14	cardiac failure	5
region	14	hypertension	38
region	14	pneumonia	22
region	14	HIV/AIDS	32
region	14	Diabetes Mellitus	6
region	14	others	41
region	15	diarrhoeal diseases	16
region	15	malaria	112
region	15	TB	92
region	15	anaemia	28
region	15	cardiac failure	63
region	15	hypertension	13
region	15	pneumonia	104
region	15	HIV/AIDS	60
region	15	Diabetes Mellitus	10
region	15	others	295
region	16	diarrhoeal diseases	36
region	16	malaria	648
region	16	TB	36
region	16	anaemia	86
region	16	cardiac failure	11
region	16	hypertension	5
region	16	pneumonia	17
region	16	HIV/AIDS	306
region	16	Diabetes Mellitus	16
region	16	others	584
region	17	diarrhoeal diseases	74
region	17	malaria	243
region	17	TB	100
region	17	anaemia	151
region	17	cardiac failure	61
region	17	hypertension	19
region	17	pneumonia	159
region	17	HIV/AIDS	212
region	17	Diabetes Mellitus	31
region	17	others	357
region	18	diarrhoeal diseases	24
region	18	malaria	283
region	18	TB	74
region	18	anaemia	66
region	18	cardiac failure	12
region	18	hypertension	20
region	18	pneumonia	49
region	18	HIV/AIDS	187
region	18	Diabetes Mellitus	19
region	18	others	150
region	19	diarrhoeal diseases	26
region	19	malaria	270
region	19	TB	33
region	19	anaemia	82
region	19	cardiac failure	40
region	19	hypertension	79
region	19	pneumonia	33
region	19	HIV/AIDS	61
region	19	Diabetes Mellitus	20
region	19	others	260
region	20	diarrhoeal diseases	19
region	20	malaria	105
region	20	TB	23
region	20	anaemia	36
region	20	cardiac failure	1
region	20	hypertension	14
region	20	pneumonia	17
region	20	HIV/AIDS	118
region	20	Diabetes Mellitus	7
region	20	others	143
region	21	diarrhoeal diseases	19
region	21	malaria	82
region	21	TB	11
region	21	anaemia	36
region	21	cardiac failure	15
region	21	hypertension	16
region	21	pneumonia	39
region	21	HIV/AIDS	1717
region	21	Diabetes Mellitus	3
region	21	others	147
region	22	diarrhoeal diseases	14
region	22	malaria	59
region	22	TB	36
region	22	anaemia	22
region	22	cardiac failure	19
region	22	hypertension	27
region	22	pneumonia	24
region	22	HIV/AIDS	42
region	22	Diabetes Mellitus	7
region	22	others	121
region	23	diarrhoeal diseases	13
region	23	malaria	169
region	23	TB	11
region	23	anaemia	57
region	23	cardiac failure	3
region	23	hypertension	8
region	23	pneumonia	37
region	23	HIV/AIDS	5
region	23	Diabetes Mellitus	1
region	23	others	104
region	24	diarrhoeal diseases	14
region	24	malaria	148
region	24	TB	18
region	24	anaemia	25
region	24	cardiac failure	47
region	24	hypertension	33
region	24	pneumonia	65
region	24	HIV/AIDS	76
region	24	Diabetes Mellitus	2
region	24	others	150
region	25	diarrhoeal diseases	11
region	25	malaria	302
region	25	TB	11
region	25	anaemia	114
region	25	cardiac failure	5
region	25	hypertension	12
region	25	pneumonia	14
region	25	HIV/AIDS	53
region	25	Diabetes Mellitus	4
region	25	others	97
region	26	diarrhoeal diseases	13
region	26	malaria	79
region	26	TB	64
region	26	anaemia	89
region	26	cardiac failure	31
region	26	hypertension	23
region	26	pneumonia	7
region	26	HIV/AIDS	75
region	26	Diabetes Mellitus	9
region	26	others	79
region	27	diarrhoeal diseases	46
region	27	malaria	468
region	27	TB	31
region	27	anaemia	56
region	27	cardiac failure	34
region	27	hypertension	23
region	27	pneumonia	38
region	27	HIV/AIDS	46
region	27	Diabetes Mellitus	10
region	27	others	501
region	29	diarrhoeal diseases	80
region	29	malaria	348
region	29	TB	37
region	29	anaemia	79
region	29	cardiac failure	29
region	29	hypertension	49
region	29	pneumonia	73
region	29	HIV/AIDS	236
region	29	Diabetes Mellitus	25
region	29	others	208
region	28	diarrhoeal diseases	29
region	28	malaria	163
region	28	TB	46
region	28	anaemia	75
region	28	cardiac failure	47
region	28	hypertension	61
region	28	pneumonia	55
region	28	HIV/AIDS	185
region	28	Diabetes Mellitus	65
region	28	others	287
region	7	diarrhoeal diseases	0
region	7	malaria	0
region	7	TB	0
region	7	anaemia	0
region	7	cardiac failure	0
region	7	hypertension	0
region	7	pneumonia	0
region	7	HIV/AIDS	0
region	7	Diabetes Mellitus	0
region	7	others	0
region	8	diarrhoeal diseases	0
region	8	malaria	0
region	8	TB	0
region	8	anaemia	0
region	8	cardiac failure	0
region	8	hypertension	0
region	8	pneumonia	0
region	8	HIV/AIDS	0
region	8	Diabetes Mellitus	0
region	8	others	0
region	12	diarrhoeal diseases	0
region	12	malaria	0
region	12	TB	0
region	12	anaemia	0
region	12	cardiac failure	0
region	12	hypertension	0
region	12	pneumonia	0
region	12	HIV/AIDS	0
region	12	Diabetes Mellitus	0
region	12	others	0
region	13	diarrhoeal diseases	0
region	13	malaria	0
region	13	TB	0
region	13	anaemia	0
region	13	cardiac failure	0
region	13	hypertension	0
region	13	pneumonia	0
region	13	HIV/AIDS	0
region	13	Diabetes Mellitus	0
region	13	others	0
region	30	diarrhoeal diseases	0
region	30	malaria	0
region	30	TB	0
region	30	anaemia	0
region	30	cardiac failure	0
region	30	hypertension	0
region	30	pneumonia	0
region	30	HIV/AIDS	0
region	30	Diabetes Mellitus	0
region	30	others	0
country	TZ	diarrhoeal diseases	624
country	TZ	malaria	5002
country	TZ	TB	1202
country	TZ	anaemia	1781
country	TZ	cardiac failure	1019
country	TZ	hypertension	1067
country	TZ	pneumonia	1423
country	TZ	HIV/AIDS	4782
country	TZ	Diabetes Mellitus	535
country	TZ	others	5828
\.
--
-- Name: causesofdeathoverfive_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY causesofdeathoverfive
    ADD CONSTRAINT causesofdeathoverfive_pkey PRIMARY KEY (geo_level, geo_code, "causes of death over five");


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.familyplanningclients DROP CONSTRAINT IF EXISTS familyplanningclients_pkey;
DROP TABLE IF EXISTS public.familyplanningclients;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: familyplanningclients; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE familyplanningclients (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "family planning clients" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: familyplanningclients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY familyplanningclients (geo_level, geo_code, "family planning clients", total) FROM stdin;
region	1	total	181397
region	1	new client rate	31.5
region	3	total	394359
region	3	new client rate	44.7
region	2	total	560997
region	2	new client rate	60.4
region	4	total	70517
region	4	new client rate	62.4
region	5	total	106703
region	5	new client rate	24.6
region	6	total	213373
region	6	new client rate	33.4
region	9	total	51826
region	9	new client rate	24.1
region	10	total	233129
region	10	new client rate	37.8
region	11	total	217253
region	11	new client rate	26.4
region	14	total	154135
region	14	new client rate	31.3
region	15	total	100378
region	15	new client rate	43.1
region	16	total	164283
region	16	new client rate	37
region	17	total	285693
region	17	new client rate	39.1
region	18	total	205754
region	18	new client rate	29.1
region	19	total	220667
region	19	new client rate	41.9
region	20	total	210661
region	20	new client rate	67.5
region	21	total	78217
region	21	new client rate	27
region	22	total	188698
region	22	new client rate	40.3
region	23	total	99729
region	23	new client rate	52.1
region	24	total	152679
region	24	new client rate	35.4
region	25	total	115849
region	25	new client rate	53.9
region	26	total	73089
region	26	new client rate	64.4
region	27	total	175278
region	27	new client rate	36.4
region	29	total	120894
region	29	new client rate	43.7
region	28	total	308559
region	28	new client rate	25.4
region 	7	total	\N
region 	7	new client rate	\N
region 	8	total	\N
region 	8	new client rate	\N
region 	12	total	\N
region 	12	new client rate	\N
region 	13	total	\N
region 	13	new client rate	\N
region	30	total	\N
region	30	new client rate	\N
country	TZ	total	4684117
country	TZ	new client rate	40.5
\.
--
-- Name: familyplanningclients_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY familyplanningclients
    ADD CONSTRAINT familyplanningclients_pkey PRIMARY KEY (geo_level, geo_code, "family planning clients");


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.placeofdelivery DROP CONSTRAINT IF EXISTS placeofdelivery_pkey;
DROP TABLE IF EXISTS public.placeofdelivery;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: placeofdelivery; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE placeofdelivery (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "place of delivery" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: placeofdelivery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY placeofdelivery (geo_level, geo_code, "place of delivery", total) FROM stdin;
region	1	ANC projection	50037
region	1	facility delivery	42278
region	1	birth before arrival	1090
region	1	traditional birth attendance	5535
region	1	home delivery	4530
region	1	facility birth rate	84
region	3	ANC projection	166517
region	3	facility delivery	128853
region	3	birth before arrival	2709
region	3	traditional birth attendance	1974
region	3	home delivery	7562
region	3	facility birth rate	77
region	2	ANC projection	60631
region	2	facility delivery	63208
region	2	birth before arrival	2451
region	2	traditional birth attendance	3740
region	2	home delivery	3982
region	2	facility birth rate	104
region	4	ANC projection	83170
region	4	facility delivery	40494
region	4	birth before arrival	985
region	4	traditional birth attendance	1189
region	4	home delivery	4630
region	4	facility birth rate	49
region	5	ANC projection	27730
region	5	facility delivery	32025
region	5	birth before arrival	712
region	5	traditional birth attendance	228
region	5	home delivery	686
region	5	facility birth rate	115
region	6	ANC projection	83081
region	6	facility delivery	50414
region	6	birth before arrival	1918
region	6	traditional birth attendance	5103
region	6	home delivery	9354
region	6	facility birth rate	61
region	9	ANC projection	48256
region	9	facility delivery	18419
region	9	birth before arrival	421
region	9	traditional birth attendance	1153
region	9	home delivery	498
region	9	facility birth rate	38
region	10	ANC projection	71514
region	10	facility delivery	50898
region	10	birth before arrival	1885
region	10	traditional birth attendance	6767
region	10	home delivery	4172
region	10	facility birth rate	71
region	11	ANC projection	44906
region	11	facility delivery	37581
region	11	birth before arrival	657
region	11	traditional birth attendance	350
region	11	home delivery	911
region	11	facility birth rate	84
region	14	ANC projection	57743
region	14	facility delivery	24335
region	14	birth before arrival	699
region	14	traditional birth attendance	504
region	14	home delivery	1593
region	14	facility birth rate	42
region	15	ANC projection	46334
region	15	facility delivery	29942
region	15	birth before arrival	776
region	15	traditional birth attendance	3240
region	15	home delivery	4313
region	15	facility birth rate	65
region	16	ANC projection	97685
region	16	facility delivery	43715
region	16	birth before arrival	2422
region	16	traditional birth attendance	5265
region	16	home delivery	10586
region	16	facility birth rate	45
region	17	ANC projection	137992
region	17	facility delivery	78732
region	17	birth before arrival	3132
region	17	traditional birth attendance	1788
region	17	home delivery	7171
region	17	facility birth rate	57
region	18	ANC projection	89524
region	18	facility delivery	62457
region	18	birth before arrival	2191
region	18	traditional birth attendance	3625
region	18	home delivery	1658
region	18	facility birth rate	70
region	19	ANC projection	38104
region	19	facility delivery	33546
region	19	birth before arrival	809
region	19	traditional birth attendance	1854
region	19	home delivery	2055
region	19	facility birth rate	88
region	20	ANC projection	200284
region	20	facility delivery	79077
region	20	birth before arrival	2365
region	20	traditional birth attendance	2365
region	20	home delivery	5942
region	20	facility birth rate	39
region	21	ANC projection	31513
region	21	facility delivery	22725
region	21	birth before arrival	632
region	21	traditional birth attendance	91
region	21	home delivery	439
region	21	facility birth rate	72
region	22	ANC projection	36707
region	22	facility delivery	49378
region	22	birth before arrival	662
region	22	traditional birth attendance	600
region	22	home delivery	1189
region	22	facility birth rate	135
region	23	ANC projection	66540
region	23	facility delivery	35457
region	23	birth before arrival	731
region	23	traditional birth attendance	2376
region	23	home delivery	1171
region	23	facility birth rate	53
region	24	ANC projection	61013
region	24	facility delivery	46851
region	24	birth before arrival	1394
region	24	traditional birth attendance	1868
region	24	home delivery	1290
region	24	facility birth rate	77
region	25	ANC projection	89101
region	25	facility delivery	46461
region	25	birth before arrival	1704
region	25	traditional birth attendance	1831
region	25	home delivery	2612
region	25	facility birth rate	52
region	26	ANC projection	93745
region	26	facility delivery	31226
region	26	birth before arrival	1171
region	26	traditional birth attendance	2897
region	26	home delivery	8336
region	26	facility birth rate	33
region	27	ANC projection	67761
region	27	facility delivery	38609
region	27	birth before arrival	1443
region	27	traditional birth attendance	2151
region	27	home delivery	3943
region	27	facility birth rate	57
region	29	ANC projection	136937
region	29	facility delivery	61457
region	29	birth before arrival	2595
region	29	traditional birth attendance	1247
region	29	home delivery	5733
region	29	facility birth rate	45
region	28	ANC projection	123375
region	28	facility delivery	47611
region	28	birth before arrival	1522
region	28	traditional birth attendance	3190
region	28	home delivery	4475
region	28	facility birth rate	39
region 	7	ANC projection	\N
region 	7	facility delivery	\N
region 	7	birth before arrival	\N
region 	7	traditional birth attendance	\N
region 	7	home delivery	\N
region 	7	facility birth rate	\N
region 	8	ANC projection	\N
region 	8	facility delivery	\N
region 	8	birth before arrival	\N
region 	8	traditional birth attendance	\N
region 	8	home delivery	\N
region 	8	facility birth rate	\N
region 	12	ANC projection	\N
region 	12	facility delivery	\N
region 	12	birth before arrival	\N
region 	12	traditional birth attendance	\N
region 	12	home delivery	\N
region 	12	facility birth rate	\N
region 	13	ANC projection	\N
region 	13	facility delivery	\N
region 	13	birth before arrival	\N
region 	13	traditional birth attendance	\N
region 	13	home delivery	\N
region 	13	facility birth rate	\N
region	30	ANC projection	\N
region	30	facility delivery	\N
region	30	birth before arrival	\N
region	30	traditional birth attendance	\N
region	30	home delivery	\N
region	30	facility birth rate	\N
country	TZ	ANC projection	2010200
country	TZ	facility delivery	1195749
country	TZ	birth before arrival	37076
country	TZ	traditional birth attendance	60931
country	TZ	home delivery	98831
country	TZ	facility birth rate	66.08
\.
--
-- Name: placeofdelivery_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY placeofdelivery
    ADD CONSTRAINT placeofdelivery_pkey PRIMARY KEY (geo_level, geo_code, "place of delivery");


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.healthworkers DROP CONSTRAINT IF EXISTS healthworkers_pkey;
DROP TABLE IF EXISTS public.healthworkers;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthworkers; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE healthworkers (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "health workers" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: healthworkers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY healthworkers (geo_level, geo_code, "health workers", total) FROM stdin;
region	1	assistant medical oficer	67
region	1	assistant nursing officer	258
region	1	clinical assistant	35
region	1	clinical officer	326
region	1	medical attendant	944
region	1	medical officers	82
region	1	nurses	693
region	1	nursing officer	98
region	1	nutrition officer	3
region	1	total	1806943
region	1	MO and AMO per 10000	0.82
region	1	nurses and midwives per 10000	3.84
region	1	pharmacists per 10000	0.07
region	1	clinicians per 10000	3.01
region	1	HRH patient ratio	6.85
region	3	assistant medical oficer	217
region	3	assistant nursing officer	1352
region	3	clinical assistant	48
region	3	clinical officer	653
region	3	medical attendant	1640
region	3	medical officers	541
region	3	nurses	1546
region	3	nursing officer	604
region	3	nutrition officer	15
region	3	total	4980562
region	3	MO and AMO per 10000	1.52
region	3	nurses and midwives per 10000	3.1
region	3	pharmacists per 10000	0.2
region	3	clinicians per 10000	3.66
region	3	HRH patient ratio	6.77
region	2	assistant medical oficer	72
region	2	assistant nursing officer	201
region	2	clinical assistant	50
region	2	clinical officer	298
region	2	medical attendant	748
region	2	medical officers	98
region	2	nurses	704
region	2	nursing officer	88
region	2	nutrition officer	3
region	2	total	2187955
region	2	MO and AMO per 10000	0.78
region	2	nurses and midwives per 10000	3.22
region	2	pharmacists per 10000	0.11
region	2	clinicians per 10000	2.47
region	2	HRH patient ratio	5.69
region	4	assistant medical oficer	37
region	4	assistant nursing officer	115
region	4	clinical assistant	44
region	4	clinical officer	134
region	4	medical attendant	340
region	4	medical officers	15
region	4	nurses	283
region	4	nursing officer	6
region	4	nutrition officer	0
region	4	total	1850181
region	4	MO and AMO per 10000	0.28
region	4	nurses and midwives per 10000	1.53
region	4	pharmacists per 10000	0.02
region	4	clinicians per 10000	1.25
region	4	HRH patient ratio	2.78
region	5	assistant medical oficer	53
region	5	assistant nursing officer	90
region	5	clinical assistant	51
region	5	clinical officer	241
region	5	medical attendant	509
region	5	medical officers	51
region	5	nurses	617
region	5	nursing officer	26
region	5	nutrition officer	4
region	5	total	966616
region	5	MO and AMO per 10000	1.08
region	5	nurses and midwives per 10000	6.38
region	5	pharmacists per 10000	0.17
region	5	clinicians per 10000	4.24
region	5	HRH patient ratio	10.62
region	6	assistant medical oficer	64
region	6	assistant nursing officer	281
region	6	clinical assistant	31
region	6	clinical officer	203
region	6	medical attendant	1002
region	6	medical officers	31
region	6	nurses	745
region	6	nursing officer	56
region	6	nutrition officer	2
region	6	total	2647538
region	6	MO and AMO per 10000	0.36
region	6	nurses and midwives per 10000	2.81
region	6	pharmacists per 10000	0.03
region	6	clinicians per 10000	1.28
region	6	HRH patient ratio	4.09
region	9	assistant medical oficer	18
region	9	assistant nursing officer	20
region	9	clinical assistant	9
region	9	clinical officer	31
region	9	medical attendant	140
region	9	medical officers	7
region	9	nurses	66
region	9	nursing officer	4
region	9	nutrition officer	0
region	9	total	609141
region	9	MO and AMO per 10000	0.41
region	9	nurses and midwives per 10000	1.08
region	9	pharmacists per 10000	0.03
region	9	clinicians per 10000	1.08
region	9	HRH patient ratio	2.17
region	10	assistant medical oficer	61
region	10	assistant nursing officer	107
region	10	clinical assistant	52
region	10	clinical officer	124
region	10	medical attendant	612
region	10	medical officers	13
region	10	nurses	409
region	10	nursing officer	23
region	10	nutrition officer	0
region	10	total	2251233
region	10	MO and AMO per 10000	0.33
region	10	nurses and midwives per 10000	1.82
region	10	pharmacists per 10000	0.03
region	10	clinicians per 10000	1.14
region	10	HRH patient ratio	2.95
region	11	assistant medical oficer	151
region	11	assistant nursing officer	505
region	11	clinical assistant	60
region	11	clinical officer	488
region	11	medical attendant	1927
region	11	medical officers	100
region	11	nurses	1074
region	11	nursing officer	164
region	11	nutrition officer	4
region	11	total	1708904
region	11	MO and AMO per 10000	1.47
region	11	nurses and midwives per 10000	6.28
region	11	pharmacists per 10000	0.11
region	11	clinicians per 10000	4.95
region	11	HRH patient ratio	11.24
region	14	assistant medical oficer	57
region	14	assistant nursing officer	150
region	14	clinical assistant	28
region	14	clinical officer	166
region	14	medical attendant	647
region	14	medical officers	27
region	14	nurses	333
region	14	nursing officer	8
region	14	nutrition officer	0
region	14	total	883804
region	14	MO and AMO per 10000	0.95
region	14	nurses and midwives per 10000	3.77
region	14	pharmacists per 10000	0.03
region	14	clinicians per 10000	3.27
region	14	HRH patient ratio	7.04
region	15	assistant medical oficer	51
region	15	assistant nursing officer	354
region	15	clinical assistant	41
region	15	clinical officer	176
region	15	medical attendant	729
region	15	medical officers	37
region	15	nurses	459
region	15	nursing officer	41
region	15	nutrition officer	2
region	15	total	1535376
region	15	MO and AMO per 10000	0.57
region	15	nurses and midwives per 10000	2.99
region	15	pharmacists per 10000	0.05
region	15	clinicians per 10000	2.05
region	15	HRH patient ratio	5.04
region	16	assistant medical oficer	49
region	16	assistant nursing officer	136
region	16	clinical assistant	55
region	16	clinical officer	201
region	16	medical attendant	622
region	16	medical officers	33
region	16	nurses	640
region	16	nursing officer	50
region	16	nutrition officer	2
region	16	total	1847564
region	16	MO and AMO per 10000	0.44
region	16	nurses and midwives per 10000	3.46
region	16	pharmacists per 10000	0.04
region	16	clinicians per 10000	1.88
region	16	HRH patient ratio	5.35
region	17	assistant medical oficer	126
region	17	assistant nursing officer	379
region	17	clinical assistant	124
region	17	clinical officer	384
region	17	medical attendant	1846
region	17	medical officers	200
region	17	nurses	1332
region	17	nursing officer	193
region	17	nutrition officer	9
region	17	total	2885735
region	17	MO and AMO per 10000	1.13
region	17	nurses and midwives per 10000	4.62
region	17	pharmacists per 10000	0.14
region	17	clinicians per 10000	3.07
region	17	HRH patient ratio	7.69
region	18	assistant medical oficer	134
region	18	assistant nursing officer	233
region	18	clinical assistant	68
region	18	clinical officer	529
region	18	medical attendant	1032
region	18	medical officers	75
region	18	nurses	793
region	18	nursing officer	167
region	18	nutrition officer	1
region	18	total	2344502
region	18	MO and AMO per 10000	0.89
region	18	nurses and midwives per 10000	3.38
region	18	pharmacists per 10000	0.06
region	18	clinicians per 10000	3.58
region	18	HRH patient ratio	6.97
region	19	assistant medical oficer	54
region	19	assistant nursing officer	212
region	19	clinical assistant	29
region	19	clinical officer	157
region	19	medical attendant	567
region	19	medical officers	42
region	19	nurses	370
region	19	nursing officer	17
region	19	nutrition officer	1
region	19	total	1307897
region	19	MO and AMO per 10000	0.73
region	19	nurses and midwives per 10000	2.83
region	19	pharmacists per 10000	0.03
region	19	clinicians per 10000	2.23
region	19	HRH patient ratio	5.06
region	20	assistant medical oficer	66
region	20	assistant nursing officer	381
region	20	clinical assistant	72
region	20	clinical officer	280
region	20	medical attendant	1177
region	20	medical officers	117
region	20	nurses	985
region	20	nursing officer	72
region	20	nutrition officer	1
region	20	total	2973165
region	20	MO and AMO per 10000	0.62
region	20	nurses and midwives per 10000	3.31
region	20	pharmacists per 10000	0.07
region	20	clinicians per 10000	1.94
region	20	HRH patient ratio	5.25
region	21	assistant medical oficer	33
region	21	assistant nursing officer	126
region	21	clinical assistant	52
region	21	clinical officer	108
region	21	medical attendant	600
region	21	medical officers	22
region	21	nurses	531
region	21	nursing officer	28
region	21	nutrition officer	0
region	21	total	715320
region	21	MO and AMO per 10000	0.77
region	21	nurses and midwives per 10000	7.42
region	21	pharmacists per 10000	0.13
region	21	clinicians per 10000	3.16
region	21	HRH patient ratio	10.58
region	22	assistant medical oficer	74
region	22	assistant nursing officer	114
region	22	clinical assistant	31
region	22	clinical officer	406
region	22	medical attendant	621
region	22	medical officers	59
region	22	nurses	469
region	22	nursing officer	126
region	22	nutrition officer	1
region	22	total	1155892
region	22	MO and AMO per 10000	1.15
region	22	nurses and midwives per 10000	4.06
region	22	pharmacists per 10000	0.16
region	22	clinicians per 10000	5.16
region	22	HRH patient ratio	9.22
region	23	assistant medical oficer	26
region	23	assistant nursing officer	72
region	23	clinical assistant	33
region	23	clinical officer	102
region	23	medical attendant	516
region	23	medical officers	25
region	23	nurses	276
region	23	nursing officer	12
region	23	nutrition officer	0
region	23	total	1083056
region	23	MO and AMO per 10000	0.47
region	23	nurses and midwives per 10000	2.55
region	23	pharmacists per 10000	0.04
region	23	clinicians per 10000	1.76
region	23	HRH patient ratio	4.31
region	24	assistant medical oficer	66
region	24	assistant nursing officer	116
region	24	clinical assistant	66
region	24	clinical officer	181
region	24	medical attendant	925
region	24	medical officers	25
region	24	nurses	602
region	24	nursing officer	32
region	24	nutrition officer	5
region	24	total	1447205
region	24	MO and AMO per 10000	0.63
region	24	nurses and midwives per 10000	4.16
region	24	pharmacists per 10000	0.04
region	24	clinicians per 10000	2.45
region	24	HRH patient ratio	6.61
region	25	assistant medical oficer	39
region	25	assistant nursing officer	162
region	25	clinical assistant	53
region	25	clinical officer	162
region	25	medical attendant	650
region	25	medical officers	15
region	25	nurses	431
region	25	nursing officer	18
region	25	nutrition officer	1
region	25	total	1610823
region	25	MO and AMO per 10000	0.34
region	25	nurses and midwives per 10000	2.68
region	25	pharmacists per 10000	0.04
region	25	clinicians per 10000	1.71
region	25	HRH patient ratio	4.38
region	26	assistant medical oficer	23
region	26	assistant nursing officer	70
region	26	clinical assistant	53
region	26	clinical officer	104
region	26	medical attendant	415
region	26	medical officers	11
region	26	nurses	223
region	26	nursing officer	1
region	26	nutrition officer	0
region	26	total	1654107
region	26	MO and AMO per 10000	0.21
region	26	nurses and midwives per 10000	1.35
region	26	pharmacists per 10000	0.02
region	26	clinicians per 10000	1.19
region	26	HRH patient ratio	2.54
region	27	assistant medical oficer	44
region	27	assistant nursing officer	113
region	27	clinical assistant	24
region	27	clinical officer	125
region	27	medical attendant	655
region	27	medical officers	14
region	27	nurses	460
region	27	nursing officer	53
region	27	nutrition officer	3
region	27	total	1447399
region	27	MO and AMO per 10000	0.4
region	27	nurses and midwives per 10000	3.18
region	27	pharmacists per 10000	0.03
region	27	clinicians per 10000	1.47
region	27	HRH patient ratio	4.65
region	29	assistant medical oficer	47
region	29	assistant nursing officer	155
region	29	clinical assistant	45
region	29	clinical officer	139
region	29	medical attendant	548
region	29	medical officers	11
region	29	nurses	372
region	29	nursing officer	18
region	29	nutrition officer	0
region	29	total	2454533
region	29	MO and AMO per 10000	0.24
region	29	nurses and midwives per 10000	1.52
region	29	pharmacists per 10000	0
region	29	clinicians per 10000	1.02
region	29	HRH patient ratio	2.53
region	28	assistant medical oficer	108
region	28	assistant nursing officer	199
region	28	clinical assistant	62
region	28	clinical officer	446
region	28	medical attendant	1210
region	28	medical officers	58
region	28	nurses	667
region	28	nursing officer	56
region	28	nutrition officer	3
region	28	total	2155180
region	28	MO and AMO per 10000	0.77
region	28	nurses and midwives per 10000	3.09
region	28	pharmacists per 10000	0.08
region	28	clinicians per 10000	3.3
region	28	HRH patient ratio	6.39
region	7	assistant medical oficer	\N
region	7	assistant nursing officer	\N
region	7	clinical assistant	\N
region	7	clinical officer	\N
region	7	medical attendant	\N
region	7	medical officers	\N
region	7	nurses	\N
region	7	nursing officer	\N
region	7	nutrition officer	\N
region	7	total	\N
region	7	MO and AMO per 10000	\N
region	7	nurses and midwives per 10000	\N
region	7	pharmacists per 10000	\N
region	7	clinicians per 10000	\N
region	7	HRH patient ratio	\N
region	8	assistant medical oficer	\N
region	8	assistant nursing officer	\N
region	8	clinical assistant	\N
region	8	clinical officer	\N
region	8	medical attendant	\N
region	8	medical officers	\N
region	8	nurses	\N
region	8	nursing officer	\N
region	8	nutrition officer	\N
region	8	total	\N
region	8	MO and AMO per 10000	\N
region	8	nurses and midwives per 10000	\N
region	8	pharmacists per 10000	\N
region	8	clinicians per 10000	\N
region	8	HRH patient ratio	\N
region	12	assistant medical oficer	\N
region	12	assistant nursing officer	\N
region	12	clinical assistant	\N
region	12	clinical officer	\N
region	12	medical attendant	\N
region	12	medical officers	\N
region	12	nurses	\N
region	12	nursing officer	\N
region	12	nutrition officer	\N
region	12	total	\N
region	12	MO and AMO per 10000	\N
region	12	nurses and midwives per 10000	\N
region	12	pharmacists per 10000	\N
region	12	clinicians per 10000	\N
region	12	HRH patient ratio	\N
region	13	assistant medical oficer	\N
region	13	assistant nursing officer	\N
region	13	clinical assistant	\N
region	13	clinical officer	\N
region	13	medical attendant	\N
region	13	medical officers	\N
region	13	nurses	\N
region	13	nursing officer	\N
region	13	nutrition officer	\N
region	13	total	\N
region	13	MO and AMO per 10000	\N
region	13	nurses and midwives per 10000	\N
region	13	pharmacists per 10000	\N
region	13	clinicians per 10000	\N
region	13	HRH patient ratio	\N
region	30	assistant medical oficer	\N
region	30	assistant nursing officer	\N
region	30	clinical assistant	\N
region	30	clinical officer	\N
region	30	medical attendant	\N
region	30	medical officers	\N
region	30	nurses	\N
region	30	nursing officer	\N
region	30	nutrition officer	\N
region	30	total	\N
region	30	MO and AMO per 10000	\N
region	30	nurses and midwives per 10000	\N
region	30	pharmacists per 10000	\N
region	30	clinicians per 10000	\N
region	30	HRH patient ratio	\N
country	TZ	assistant medical oficer	1737
country	TZ	assistant nursing officer	5901
country	TZ	clinical assistant	1216
country	TZ	clinical officer	6164
country	TZ	medical attendant	20622
country	TZ	medical officers	1709
country	TZ	nurses	15080
country	TZ	nursing officer	1961
country	TZ	nutrition officer	60
country	TZ	total	46510631
country	TZ	MO and AMO per 10000	0.69
country	TZ	nurses and midwives per 10000	3.38
country	TZ	pharmacists per 10000	0.07
country	TZ	clinicians per 10000	2.49
country	TZ	HRH patient ratio	5.87
\.
--
-- Name: healthworkers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY healthworkers
    ADD CONSTRAINT healthworkers_pkey PRIMARY KEY (geo_level, geo_code, "health workers");


--
-- PostgreSQL database dump complete
--
