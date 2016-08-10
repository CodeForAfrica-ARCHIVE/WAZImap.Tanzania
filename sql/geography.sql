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
    parent_level character varying(15),
    parent_code character varying(10),
    long_name character varying(128) NOT NULL,
    year integer,
    square_kms double precision
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

COPY wazimap_geography (id, geo_level, geo_code, name, parent_level, parent_code, long_name, year, square_kms) FROM stdin;
1	region	1	Arusha	country	TZ	Arusha	2012	34516
2	region	2	Dar es salaam	country	TZ	Dar es salaam	2012	1393
3	region	3	Dodoma	country	TZ	Dodoma	2012	41311
4	region	4	Geita	country	TZ	Geita	2012	20054
5	region	5	Iringa	country	TZ	Iringa	2012	58936
6	region	6	Kagera	country	TZ	Kagera	2012	39627
7	region	7	Kaskazini pemba	country	TZ	Kaskazini pemba	2012	574
8	region	8	Kaskazini unguja	country	TZ	Kaskazini unguja	2012	470
9	region	9	Katavi	country	TZ	Katavi	2012	45843moro
10	region	10	Kigoma	country	TZ	Kigoma	2012	45066
11	region	11	Kilimanjaro	country	TZ	Kilimanjaro	2012	13209
12	region	12	Kusini pemba	country	TZ	Kusini pemba	2012	332
13	region	13	Kusini unguja	country	TZ	Kusini unguja	2012	854
14	region	14	Lindi	country	TZ	Lindi	2012	67000
15	region	15	Manyara	country	TZ	Manyara	2012	47913
16	region	16	Mara	country	TZ	Mara	2012	31150
17	region	17	Mbeya	country	TZ	Mbeya	2012	62420
18	region	18	Morogoro	country	TZ	Morogoro	2012	73139
19	region	19	Mtwara	country	TZ	Mtwara	2012	16707
20	region	20	Mwanza	country	TZ	Mwanza	2012	35187
21	region	21	Njombe	country	TZ	Njombe	2012	21347
22	region	22	Pwani	country	TZ	Pwani	2012	32407
23	region	23	Rukwa	country	TZ	Rukwa	2012	75240
24	region	24	Ruvuma	country	TZ	Ruvuma	2012	66477
25	region	25	Shinyanga	country	TZ	Shinyanga	2012	40781
26	region	26	Simiyu	country	TZ	Simiyu	2012	2380
27	region	27	Singida	country	TZ	Singida	2012	49437
28	region	28	Tanga	country	TZ	Tanga	2012	27348
29	region	29	Tabora	country	TZ	Tabora	2012	76151
30	region	30	Mjini magharibi	country	TZ	Mjini magharibi	2012	230
31	district	22	Lushoto	region	28	Lushoto	2012	3500
32	district	23	Korogwe	region	28	Korogwe	2012	3756
33	district	24	Muheza	region	28	Muheza	2012	4818
34	district	25	Tanga	region	28	Tanga	2012	474
35	district	26	Pangani	region	28	Pangani	2012	1019
36	district	27	Handeni	region	28	Handeni	2012	6112
37	district	28	Kilindi	region	28	Kilindi	2012	7091
38	district	29	Mkinga	region	28	Mkinga	2012	2711
39	district	30	Korogwe urban	region	28	Korogwe urban	2012	1323
40	district	31	Handeni urban	region	28	Handeni urban	2012	7366
41	district	89	Nzega	region	29	Nzega	2012	6961
42	district	90	Igunga	region	29	Igunga	2012	6788
43	district	91	Uyui	region	29	Uyui	2012	0
44	district	92	Urambo	region	29	Urambo	2012	21299
45	district	93	Sikonge	region	29	Sikonge	2012	21000
46	district	94	Tabora urban	region	29	Tabora urban	2012	20104
47	district	95	Kaliua	region	29	Kaliua	2012	0
48	district	167	Chake chake	region	12	Chake chake	2012	332
49	district	168	Mkoani	region	12	Mkoani	2012	0
50	district	128	Tarime	region	16	Tarime	2012	3885
51	district	129	Serengeti	region	16	Serengeti	2012	10942
52	district	130	Musoma	region	16	Musoma	2012	1929
53	district	131	Bunda	region	16	Bunda	2012	2782
54	district	132	Rorya	region	16	Rorya	2012	0
55	district	133	Butiama	region	16	Butiama	2012	0
56	district	169	Musoma urban	region	16	Musoma urban	2012	28
57	district	134	Babati	region	15	Babati	2012	4969
58	district	135	Hanang	region	15	Hanang	2012	2918
59	district	136	Mbulu	region	15	Mbulu	2012	3316
60	district	137	Simanjiro	region	15	Simanjiro	2012	18851
61	district	138	Kiteto	region	15	Kiteto	2012	16305
62	district	139	Babati urban	region	15	Babati urban	2012	0
63	district	161	Kati	region	13	Kati	2012	854
64	district	162	Kusini	region	13	Kusini	2012	0
65	district	49	Kilwa	region	14	Kilwa	2012	13920
66	district	50	Lindi rural	region	14	Lindi rural	2012	0
67	district	51	Nachingwea	region	14	Nachingwea	2012	7070
68	district	52	Liwale	region	14	Liwale	2012	36084
69	district	53	Ruangwa	region	14	Ruangwa	2012	2080
70	district	54	Lindi urban	region	14	Lindi urban	2012	7846
71	district	96	Kalambo	region	23	Kalambo	2012	0
72	district	97	Sumbawanga rural	region	23	Sumbawanga rural	2012	12836
73	district	98	Nkasi	region	23	Nkasi	2012	9375
74	district	99	Sumbawanga urban	region	23	Sumbawanga urban	2012	581
75	district	55	Mtwara rural	region	19	Mtwara rural	2012	3597
76	district	56	Newala	region	19	Newala	2012	2126
77	district	57	Masasi	region	19	Masasi	2012	8940
78	district	58	Tandahimba	region	19	Tandahimba	2012	1894
79	district	59	Mtwara urban	region	19	Mtwara urban	2012	163
80	district	60	Nanyumbu	region	19	Nanyumbu	2012	0
81	district	61	Masasi urban	region	19	Masasi urban	2012	0
82	district	46	Kinondoni	region	2	Kinondoni	2012	527
83	district	47	Ilala	region	2	Ilala	2012	210
84	district	48	Temeke	region	2	Temeke	2012	656
85	district	163	Magharibi	region	30	Magharibi	2012	0
86	district	164	Mjini	region	30	Mjini	2012	230
87	district	108	Shinyanga urban	region	25	Shinyanga urban	2012	548
88	district	109	Kishapu	region	25	Kishapu	2012	4334
89	district	110	Shinyanga rural	region	25	Shinyanga rural	2012	4212
90	district	111	Kahama	region	25	Kahama	2012	9461
91	district	112	Kahama urban	region	25	Kahama urban	2012	0
92	district	15	Rombo	region	11	Rombo	2012	1482
93	district	16	Mwanga	region	11	Mwanga	2012	2170
94	district	17	Same	region	11	Same	2012	5730
95	district	18	Moshi	region	11	Moshi	2012	1500
96	district	19	Hai	region	11	Hai	2012	2369
97	district	20	Moshi urban	region	11	Moshi urban	2012	58
98	district	21	Siha	region	11	Siha	2012	0
99	district	100	Kibondo	region	10	Kibondo	2012	15722
100	district	101	Kasulu	region	10	Kasulu	2012	9128
101	district	102	Kigoma rural	region	10	Kigoma rural	2012	11545
102	district	103	Kigoma urban	region	10	Kigoma urban	2012	128
103	district	104	Uvinza	region	10	Uvinza	2012	0
104	district	105	Buhigwe	region	10	Buhigwe	2012	0
105	district	106	Kakonko	region	10	Kakonko	2012	0
106	district	107	Kasulu urban	region	10	Kasulu urban	2012	0
107	district	1	Kondoa	region	3	Kondoa	2012	13210
108	district	2	Mpwapwa	region	3	Mpwapwa	2012	7479
109	district	3	Kongwa	region	3	Kongwa	2012	4041
110	district	4	Chamwino	region	3	Chamwino	2012	0
111	district	5	Dodoma urban	region	3	Dodoma urban	2012	2576
112	district	6	Bahi	region	3	Bahi	2012	0
113	district	7	Chemba	region	3	Chemba	2012	0
114	district	39	Bagamoyo	region	22	Bagamoyo	2012	9842
115	district	40	Kibaha	region	22	Kibaha	2012	1812
116	district	41	Kisarawe	region	22	Kisarawe	2012	4464
117	district	42	Mkuranga	region	22	Mkuranga	2012	2432
118	district	43	Rufiji	region	22	Rufiji	2012	0
119	district	44	Mafia	region	22	Mafia	2012	518
120	district	45	Kibaha urban	region	22	Kibaha urban	2012	0
121	district	32	Kilosa	region	18	Kilosa	2012	14245
122	district	33	Morogoro	region	18	Morogoro	2012	11711
123	district	34	Kilombero	region	18	Kilombero	2012	13577
124	district	35	Ulanga	region	18	Ulanga	2012	23681
125	district	36	Morogoro urban	region	18	Morogoro urban	2012	260
126	district	37	Mvomero	region	18	Mvomero	2012	7325
127	district	38	Gairo	region	18	Gairo	2012	0
128	district	159	Kaskazini a	region	8	Kaskazini a	2012	470
129	district	160	Kaskazini b	region	8	Kaskazini b	2012	0
130	district	165	Wete	region	7	Wete	2012	574
131	district	166	Micheweni	region	7	Micheweni	2012	0
132	district	83	Iramba	region	27	Iramba	2012	7900
133	district	84	Singida	region	27	Singida	2012	12164
134	district	85	Manyoni	region	27	Manyoni	2012	28620
135	district	86	Singida urban	region	27	Singida urban	2012	657
136	district	87	Ikungi	region	27	Ikungi	2012	0
137	district	88	Mkalama	region	27	Mkalama	2012	0
138	district	149	Bariadi	region	26	Bariadi	2012	9777
139	district	150	Itilima	region	26	Itilima	2012	0
140	district	151	Meatu	region	26	Meatu	2012	8871
141	district	152	Maswa	region	26	Maswa	2012	2736
142	district	153	Busega	region	26	Busega	2012	0
143	district	140	Njombe urban	region	21	Njombe urban	2012	0
144	district	141	Wanging'ombe	region	21	Wanging'ombe	2012	0
145	district	142	Makete	region	21	Makete	2012	3178
146	district	143	Njombe rural	region	21	Njombe rural	2012	9868
147	district	144	Ludewa	region	21	Ludewa	2012	5597
148	district	145	Makambako urban	region	21	Makambako urban	2012	0
149	district	121	Ukerewe	region	20	Ukerewe	2012	640
150	district	122	Magu	region	20	Magu	2012	3070
151	district	123	Nyamagana	region	20	Nyamagana	2012	425
152	district	124	Kwimba	region	20	Kwimba	2012	3599
153	district	125	Sengerema	region	20	Sengerema	2012	3335
154	district	126	Ilemela	region	20	Ilemela	2012	895
155	district	127	Misungwi	region	20	Misungwi	2012	1947
156	district	113	Karagwe	region	6	Karagwe	2012	5450
157	district	114	Bukoba rural	region	6	Bukoba rural	2012	6993
158	district	115	Muleba	region	6	Muleba	2012	2499
159	district	116	Biharamulo	region	6	Biharamulo	2012	8938
160	district	117	Ngara	region	6	Ngara	2012	4428
161	district	118	Bukoba urban	region	6	Bukoba urban	2012	80
162	district	119	Missenyi	region	6	Missenyi	2012	0
163	district	120	Kyerwa	region	6	Kyerwa	2012	0
164	district	8	Monduli	region	1	Monduli	2012	14070
165	district	9	Meru	region	1	Meru	2012	6936
166	district	10	Arusha urban	region	1	Arusha urban	2012	83
167	district	11	Karatu	region	1	Karatu	2012	3300
168	district	12	Ngorongoro	region	1	Ngorongoro	2012	13460
169	district	13	Arusha	region	1	Arusha	2012	0
170	district	14	Longido	region	1	Longido	2012	0
171	district	68	Iringa rural	region	5	Iringa rural	2012	19898
172	district	69	Mufindi	region	5	Mufindi	2012	0
173	district	70	Iringa urban	region	5	Iringa urban	2012	160
174	district	71	Kilolo	region	5	Kilolo	2012	6804
175	district	72	Mafinga urban	region	5	Mafinga urban	2012	6177
176	district	146	Mpanda urban	region	9	Mpanda urban	2012	0
177	district	147	Mpanda rural	region	9	Mpanda rural	2012	45843
178	district	148	Mlele	region	9	Mlele	2012	0
179	district	73	Chunya	region	17	Chunya	2012	27065
180	district	74	Mbeya rural	region	17	Mbeya rural	2012	2334
181	district	75	Kyela	region	17	Kyela	2012	791
182	district	76	Rungwe	region	17	Rungwe	2012	0
183	district	77	Ileje	region	17	Ileje	2012	0
184	district	78	Mbozi	region	17	Mbozi	2012	9586
185	district	79	Mbarali	region	17	Mbarali	2012	16000
186	district	80	Mbeya urban	region	17	Mbeya urban	2012	185
187	district	81	Momba	region	17	Momba	2012	0
188	district	82	Tunduma	region	17	Tunduma	2012	0
189	district	62	Tunduru	region	24	Tunduru	2012	18778
190	district	63	Songea rural	region	24	Songea rural	2012	12164
191	district	64	Mbinga	region	24	Mbinga	2012	11396
192	district	65	Songea urban	region	24	Songea urban	2012	657
193	district	66	Namtumbo	region	24	Namtumbo	2012	0
194	district	67	Nyasa	region	24	Nyasa	2012	0
195	district	154	Geita	region	4	Geita	2012	5880
196	district	155	Nyang'hwale	region	4	Nsyang'hwale	2012	0
197	district	156	Mbogwe	region	4	Mbogwe	2012	0
198	district	157	Bukombe	region	4	Bukombe	2012	10842
199	district	158	Chato	region	4	Chato	2012	0
200	country	TZ	Tanzania	\N	\N	Tanzania	2012	0
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
-- Name: wazimap_geography_name_36b79089_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wazimap_geography_name_36b79089_like ON wazimap_geography USING btree (name varchar_pattern_ops);


--
-- PostgreSQL database dump complete
--

