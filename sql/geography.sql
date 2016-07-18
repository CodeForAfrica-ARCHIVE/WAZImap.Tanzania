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
1	region	1	arusha	country	TZ	arusha	2012	0
2	region	2	dar es salaam	country	TZ	dar es salaam	2012	0
3	region	3	dodoma	country	TZ	dodoma	2012	0
4	region	4	geita	country	TZ	geita	2012	0
5	region	5	iringa	country	TZ	iringa	2012	0
6	region	6	kagera	country	TZ	kagera	2012	0
7	region	7	kaskazini pemba	country	TZ	kaskazini pemba	2012	0
8	region	8	kaskazini ugunja	country	TZ	kaskazini ugunja	2012	0
9	region	9	katavi	country	TZ	katavi	2012	0
10	region	10	kigoma	country	TZ	kigoma	2012	0
11	region	11	kilimanjaro	country	TZ	kilimanjaro	2012	0
12	region	12	kusini pemba	country	TZ	kusini pemba	2012	0
13	region	13	kusini ungunja	country	TZ	kusini ugunja	2012	0
14	region	14	lindi	country	TZ	lindi	2012	0
15	region	15	manyara	country	TZ	manyara	2012	0
16	region	16	mara	country	TZ	mara	2012	0
17	region	17	mbeya	country	TZ	mbeya	2012	0
18	region	18	morogoro	country	TZ	morogoro	2012	0
19	region	19	mtwara	country	TZ	mtwara	2012	0
20	region	20	mwanza	country	TZ	mwanza	2012	0
21	region	21	njombe	country	TZ	njombe	2012	0
22	region	22	pwani	country	TZ	pwani	2012	0
23	region	23	rukwa	country	TZ	rukwa	2012	0
24	region	24	ruvuma	country	TZ	ruvuma	2012	0
25	region	25	shinyanga	country	TZ	shinyanga	2012	0
26	region	26	simiyu	country	TZ	simiyu	2012	0
27	region	27	singida	country	TZ	singida	2012	0
28	region	28	tanga	country	TZ	tanga	2012	0
29	region	29	tabora	country	TZ	tabora	2012	0
30	region	30	mjini magharibi	country	TZ	mjini magharibi	2012	0
31	district	22	lushoto	region	28	lushoto	2012	0
32	district	23	korogwe	region	28	korogwe	2012	0
33	district	24	muheza	region	28	muheza	2012	0
34	district	25	tanga	region	28	tanga	2012	0
35	district	26	pangani	region	28	pangani	2012	0
36	district	27	handeni	region	28	handeni	2012	0
37	district	28	kilindi	region	28	kilindi	2012	0
38	district	29	mkinga	region	28	mkinga	2012	0
39	district	30	korogwe urban	region	28	korogwe urban	2012	0
40	district	31	handeni urban	region	28	handeni urban	2012	0
41	district	89	nzega	region	29	nzega	2012	0
42	district	90	igunga	region	29	igunga	2012	0
43	district	91	uyui	region	29	uyui	2012	0
44	district	92	urambo	region	29	urambo	2012	0
45	district	93	sikonge	region	29	sikonge	2012	0
46	district	94	tabora urban	region	29	tabora urban	2012	0
47	district	95	kaliua	region	29	kaliua	2012	0
48	district	167	chake chake	region	12	chake chake	2012	0
49	district	168	mkoani	region	12	mkoani	2012	0
50	district	128	tarime	region	16	tarime	2012	0
51	district	129	serengeti	region	16	serengeti	2012	0
52	district	130	musoma	region	16	musoma	2012	0
53	district	131	bunda	region	16	bunda	2012	0
54	district	132	rorya	region	16	rorya	2012	0
55	district	133	butiama	region	16	butiama	2012	0
56	district	169	musoma urban	region	16	musoma urban	2012	0
57	district	134	babati	region	15	babati	2012	0
58	district	135	hanang	region	15	hanang	2012	0
59	district	136	mbulu	region	15	mbulu	2012	0
60	district	137	simanjiro	region	15	simanjiro	2012	0
61	district	138	kiteto	region	15	kiteto	2012	0
62	district	139	babati urban	region	15	babati urban	2012	0
63	district	161	kati	region	13	kati	2012	0
64	district	162	kusini	region	13	kusini	2012	0
65	district	49	kilwa	region	14	kilwa	2012	0
66	district	50	lindi rural	region	14	lindi rural	2012	0
67	district	51	nachingwea	region	14	nachingwea	2012	0
68	district	52	liwale	region	14	liwale	2012	0
69	district	53	ruangwa	region	14	ruangwa	2012	0
70	district	54	lindi urban	region	14	lindi urban	2012	0
71	district	96	kalambo	region	23	kalambo	2012	0
72	district	97	sumbawanga rural	region	23	sumbawanga rural	2012	0
73	district	98	nkasi	region	23	nkasi	2012	0
74	district	99	sumbawanga urban	region	23	sumbawanga urban	2012	0
75	district	55	mtwara rural	region	19	mtwara rural	2012	0
76	district	56	newala	region	19	newala	2012	0
77	district	57	masasi	region	19	masasi	2012	0
78	district	58	tandahimba	region	19	tandahimba	2012	0
79	district	59	mtwara urban	region	19	mtwara urban	2012	0
80	district	60	nanyumbu	region	19	nanyumbu	2012	0
81	district	61	masasi urban	region	19	masasi urban	2012	0
82	district	46	kinondoni	region	2	kinondoni	2012	0
83	district	47	ilala	region	2	ilala	2012	0
84	district	48	temeke	region	2	temeke	2012	0
85	district	163	magharibi	region	30	magharibi	2012	0
86	district	164	mjini	region	30	mjini	2012	0
87	district	108	shinyanga urban	region	25	shinyanga urban	2012	0
88	district	109	kishapu	region	25	kishapu	2012	0
89	district	110	shinyanga rural	region	25	shinyanga rural	2012	0
90	district	111	kahama	region	25	kahama	2012	0
91	district	112	kahama urban	region	25	kahama urban	2012	0
92	district	15	rombo	region	11	rombo	2012	0
93	district	16	mwanga	region	11	mwanga	2012	0
94	district	17	same	region	11	same	2012	0
95	district	18	moshi	region	11	moshi	2012	0
96	district	19	hai	region	11	hai	2012	0
97	district	20	moshi urban	region	11	moshi urban	2012	0
98	district	21	siha	region	11	siha	2012	0
99	district	100	kibondo	region	10	kibondo	2012	0
100	district	101	kasulu	region	10	kasulu	2012	0
101	district	102	kigoma rural	region	10	kigoma rural	2012	0
102	district	103	kigoma urban	region	10	kigoma urban	2012	0
103	district	104	uvinza	region	10	uvinza	2012	0
104	district	105	buhigwe	region	10	buhigwe	2012	0
105	district	106	kakonko	region	10	kakonko	2012	0
106	district	107	kasulu urban	region	10	kasulu urban	2012	0
107	district	1	kondoa	region	3	kondoa	2012	0
108	district	2	mpwapwa	region	3	mpwapwa	2012	0
109	district	3	kongwa	region	3	kongwa	2012	0
110	district	4	chamwino	region	3	chamwino	2012	0
111	district	5	dodoma urban	region	3	dodoma urban	2012	0
112	district	6	bahi	region	3	bahi	2012	0
113	district	7	chemba	region	3	chemba	2012	0
114	district	39	bagamoyo	region	22	bagamoyo	2012	0
115	district	40	kibaha	region	22	kibaha	2012	0
116	district	41	kisarawe	region	22	kisarawe	2012	0
117	district	42	mkuranga	region	22	mkuranga	2012	0
118	district	43	rufiji	region	22	rufiji	2012	0
119	district	44	mafia	region	22	mafia	2012	0
120	district	45	kibaha urban	region	22	kibaha urban	2012	0
121	district	32	kilosa	region	18	kilosa	2012	0
122	district	33	morogoro	region	18	morogoro	2012	0
123	district	34	kilombero	region	18	kilombero	2012	0
124	district	35	ulanga	region	18	ulanga	2012	0
125	district	36	morogoro urban	region	18	morogoro urban	2012	0
126	district	37	mvomero	region	18	mvomero	2012	0
127	district	38	gairo	region	18	gairo	2012	0
128	district	159	kaskazini a	region	8	kaskazini a	2012	0
129	district	160	kaskazini b	region	8	kaskazini b	2012	0
130	district	165	wete	region	7	wete	2012	0
131	district	166	micheweni	region	7	micheweni	2012	0
132	district	83	iramba	region	27	iramba	2012	0
133	district	84	singida	region	27	singida	2012	0
134	district	85	manyoni	region	27	manyoni	2012	0
135	district	86	singida urban	region	27	singida urban	2012	0
136	district	87	ikungi	region	27	ikungi	2012	0
137	district	88	mkalama	region	27	mkalama	2012	0
138	district	149	bariadi	region	26	bariadi	2012	0
139	district	150	itilima	region	26	itilima	2012	0
140	district	151	meatu	region	26	meatu	2012	0
141	district	152	maswa	region	26	maswa	2012	0
142	district	153	busega	region	26	busega	2012	0
143	district	140	njombe urban	region	21	njombe urban	2012	0
144	district	141	wanging'ombe	region	21	wanging'ombe	2012	0
145	district	142	makete	region	21	makete	2012	0
146	district	143	njombe rural	region	21	njombe rural	2012	0
147	district	144	ludewa	region	21	ludewa	2012	0
148	district	145	makambako urban	region	21	makambako urban	2012	0
149	district	121	ukerewe	region	20	ukerewe	2012	0
150	district	122	magu	region	20	magu	2012	0
151	district	123	nyamagana	region	20	nyamagana	2012	0
152	district	124	kwimba	region	20	kwimba	2012	0
153	district	125	sengerema	region	20	sengerema	2012	0
154	district	126	ilemela	region	20	ilemela	2012	0
155	district	127	misungwi	region	20	misungwi	2012	0
156	district	113	karagwe	region	6	karagwe	2012	0
157	district	114	bukoba rural	region	6	bukoba rural	2012	0
158	district	115	muleba	region	6	muleba	2012	0
159	district	116	biharamulo	region	6	biharamulo	2012	0
160	district	117	ngara	region	6	ngara	2012	0
161	district	118	bukoba urban	region	6	bukoba urban	2012	0
162	district	119	missenyi	region	6	missenyi	2012	0
163	district	120	kyerwa	region	6	kyerwa	2012	0
164	district	8	monduli	region	1	monduli	2012	0
165	district	9	meru	region	1	meru	2012	0
166	district	10	arusha urban	region	1	arusha urban	2012	0
167	district	11	karatu	region	1	karatu	2012	0
168	district	12	ngorongoro	region	1	ngorongoro	2012	0
169	district	13	arusha	region	1	arusha	2012	0
170	district	14	longido	region	1	longido	2012	0
171	district	68	iringa rural	region	5	iringa rural	2012	0
172	district	69	mufindi	region	5	mufindi	2012	0
173	district	70	iringa urban	region	5	iringa urban	2012	0
174	district	71	kilolo	region	5	kilolo	2012	0
175	district	72	mafinga urban	region	5	mafinga urban	2012	0
176	district	146	mpanda urban	region	9	mpanda urban	2012	0
177	district	147	mpanda rural	region	9	mpanda rural	2012	0
178	district	148	mlele	region	9	mlele	2012	0
179	district	73	chunya	region	17	chunya	2012	0
180	district	74	mbeya rural	region	17	mbeya rural	2012	0
181	district	75	kyela	region	17	kyela	2012	0
182	district	76	rungwe	region	17	rungwe	2012	0
183	district	77	ileje	region	17	ileje	2012	0
184	district	78	mbozi	region	17	mbozi	2012	0
185	district	79	mbarali	region	17	mbarali	2012	0
186	district	80	mbeya urban	region	17	mbeya urban	2012	0
187	district	81	momba	region	17	momba	2012	0
188	district	82	tunduma	region	17	tunduma	2012	0
189	district	62	tunduru	region	24	tunduru	2012	0
190	district	63	songea rural	region	24	songea rural	2012	0
191	district	64	mbinga	region	24	mbinga	2012	0
192	district	65	songea urban	region	24	songea urban	2012	0
193	district	66	namtumbo	region	24	namtumbo	2012	0
194	district	67	nyasa	region	24	nyasa	2012	0
195	district	154	geita	region	4	geita	2012	0
196	district	155	nyang'hwale	region	4	nsyang'hwale	2012	0
197	district	156	mbogwe	region	4	mbogwe	2012	0
198	district	157	bukombe	region	4	bukombe	2012	0
199	district	158	chato	region	4	chato	2012	0
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

