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

COPY wazimap_geography (id, geo_level, geo_code, name, year, square_kms, parent_level, parent_code, long_name) FROM stdin;
1	region	1	arusha	2012	0	country	TZ	arusha
2	region	2	dar es salaam	2012	0	country	TZ	dar es salaam
3	region	3	dodoma	2012	0	country	TZ	dodoma
4	region	4	geita	2012	0	country	TZ	geita
5	region	5	iringa	2012	0	country	TZ	iringa
6	region	6	kagera	2012	0	country	TZ	kagera
7	region	7	kaskazini pemba	2012	0	country	TZ	kaskazini pemba
8	region	8	kaskazini ugunja	2012	0	country	TZ	kaskazini ugunja
9	region	9	katavi	2012	0	country	TZ	katavi
10	region	10	kigoma	2012	0	country	TZ	kigoma
11	region	11	kilimanjaro	2012	0	country	TZ	kilimanjaro
12	region	12	kusini pemba	2012	0	country	TZ	kusini pemba
13	region	13	kusini ugunja	2012	0	country	TZ	kusini ugunja
14	region	14	lindi	2012	0	country	TZ	lindi
15	region	15	manyara	2012	0	country	TZ	manyara
16	region	16	mara	2012	0	country	TZ	mara
17	region	17	mbeya	2012	0	country	TZ	mbeya
18	region	18	morogoro	2012	0	country	TZ	morogoro
19	region	19	mtwara	2012	0	country	TZ	mtwara
20	region	20	mwanza	2012	0	country	TZ	mwanza
21	region	21	njombe	2012	0	country	TZ	njombe
22	region	22	pwani	2012	0	country	TZ	pwani
23	region	23	rukwa	2012	0	country	TZ	rukwa
24	region	24	ruvuma	2012	0	country	TZ	ruvuma
25	region	25	shinyanga	2012	0	country	TZ	shinyanga
26	region	26	simiyu	2012	0	country	TZ	simiyu
27	region	27	singida	2012	0	country	TZ	singida
28	region	28	tanga	2012	0	country	TZ	tanga
29	region	29	tabora	2012	0	country	TZ	tabora
30	region	30	mjini magharibi	2012	0	country	TZ	mjini magharibi
31	district	31	Arusha city	2012	0	region	1	Arusha city
32	district	32	Arusha	2012	0	region	1	Arusha
33	district	33	Karatu	2012	0	region	1	Karatu
34	district	34	Longido	2012	0	region	1	Longido
35	district	35	Meru	2012	0	region	1	Meru
36	district	36	Monduli	2012	0	region	1	Monduli
37	district	37	Ngorongoro	2012	0	region	1	Ngorongoro
38	district	38	Ilala	2012	0	region	2	Ilala
39	district	39	Kinondoni	2012	0	region	2	Kinondoni
40	district	40	Temeke	2012	0	region	2	Temeke
41	district	41	Bahi	2012	0	region	3	Bahi
42	district	42	Chamwino	2012	0	region	3	Chamwino
43	district	43	Chemba	2012	0	region	3	Chemba
44	district	44	Dodoma municipal	2012	0	region	3	Dodoma municipal
45	district	45	Kondoa	2012	0	region	3	Kondoa
46	district	46	Kongwa	2012	0	region	3	Kongwa
47	district	47	Mpwapwa	2012	0	region	3	Mpwapwa
48	district	48	Bukombe	2012	0	region	4	Bukombe
49	district	49	Chato	2012	0	region	4	Chato
50	district	50	Geita	2012	0	region	4	Geita
51	district	51	Mbogwe	2012	0	region	4	Mbogwe
52	district	52	Nyang'hwale	2012	0	region	4	Nyang'hwale
53	district	53	Iringa	2012	0	region	5	Iringa
54	district	54	Iringa municipal	2012	0	region	5	Iringa municipal
55	district	55	Kilolo	2012	0	region	5	Kilolo
56	district	56	Mafina Urban	2012	0	region	5	Mafina Urban
57	district	57	Mufindi	2012	0	region	5	Mufindi
58	district	58	Biharamulo	2012	0	region	6	Biharamulo
59	district	59	Bukoba 	2012	0	region	6	Bukoba
60	district	60	Bukoba municipal	2012	0	region	6	Bukoba municipal
61	district	61	Karagwe	2012	0	region	6	Karagwe
62	district	62	Kyerwa	2012	0	region	6	Kyerwa
63	district	63	Misenyi	2012	0	region	6	Misenyi
64	district	64	Muleba	2012	0	region	6	Muleba
65	district	65	Ngara	2012	0	region	6	Ngara
66	district	66	Mlele	2012	0	region	7	Mlele
67	district	67	Mpanda	2012	0	region	7	Mpanda
68	district	68	Mpanda town	2012	0	region	7	Mpanda town
69	district	69	Buhigwe	2012	0	region	8	Buhigwe
70	district	70	Kakonko	2012	0	region	8	Kakonko
71	district	71	Kasulu	2012	0	region	8	Kasulu
72	district	72	Kasulu town	2012	0	region	8	Kasulu town
73	district	73	Kibondo	2012	0	region	8	Kibondo
74	district	74	Kigoma	2012	0	region	8	Kigoma
75	district	75	Kigoma-Ujiji	2012	0	region	8	Kigoma-Ujiji
76	district	76	Uvinza	2012	0	region	8	Uvinza
77	district	77	Hai	2012	0	region	9	Hai
78	district	78	Moshi 	2012	0	region	9	Moshi
79	district	79	Moshi municipal	2012	0	region	9	Moshi municipal
80	district	80	Mwanga	2012	0	region	9	Mwanga
81	district	81	Rombo	2012	0	region	9	Rombo
82	district	82	Same	2012	0	region	9	Same
83	district	83	Siha	2012	0	region	9	Siha
84	district	84	Kilwa	2012	0	region	10	Kilwa
85	district	85	Kiteto	2012	0	region	10	Kiteto
86	district	86	Lindi	2012	0	region	10	Lindi
87	district	87	Lindi municipal	2012	0	region	10	Lindi municipal
88	district	88	Liwale	2012	0	region	10	Liwale
89	district	89	Mbulu	2012	0	region	10	Mbulu
90	district	90	Nachingwea	2012	0	region	10	Nachingwea
91	district	91	Ruangwa	2012	0	region	10	Ruangwa
92	district	92	Simanjiro	2012	0	region	10	Simanjiro
93	district	93	Babati	2012	0	region	11	Babati
94	district	94	Babati Town	2012	0	region	11	Babati Town
95	district	95	Hanang	2012	0	region	11	Hanang
96	district	96	Bunda	2012	0	region	12	Bunda
97	district	97	Butiama	2012	0	region	12	Butiama
98	district	98	Musoma	2012	0	region	12	Musoma
99	district	99	Musoma municipal	2012	0	region	12	Musoma municipal
100	district	100	Rorya	2012	0	region	12	Rorya
101	district	101	Serengeti	2012	0	region	12	Serengeti
102	district	102	Tarime	2012	0	region	12	Tarime
103	district	103	Chunya	2012	0	region	13	Chunya
104	district	104	Ileje	2012	0	region	13	Ileje
105	district	105	Kyela	2012	0	region	13	Kyela
106	district	106	Mbarali	2012	0	region	13	Mbarali
107	district	107	Mbeya	2012	0	region	13	Mbeya
108	district	108	Mbeya city	2012	0	region	13	Mbeya city
109	district	109	Mbozi	2012	0	region	13	Mbozi
110	district	110	Momba	2012	0	region	13	Momba
111	district	111	Rungwe	2012	0	region	13	Rungwe
112	district	112	Tunduma	2012	0	region	13	Tunduma
113	district	113	Kilombero	2012	0	region	14	Kilombero
114	district	114	Kilosa	2012	0	region	14	Kilosa
115	district	115	Morogoro	2012	0	region	14	Morogoro
116	district	116	Morogoro municipal	2012	0	region	14	Morogoro municipal
117	district	117	Mvomero	2012	0	region	14	Mvomero
118	district	118	Ulanga	2012	0	region	14	Ulanga
119	district	119	Gairo	2012	0	region	14	Gairo
120	district	120	Masasi	2012	0	region	15	Masasi
121	district	121	Masasi town	2012	0	region	15	Masasi town
122	district	122	Mtwara 	2012	0	region	15	Mtwara
123	district	123	Mtwara municipal	2012	0	region	15	Mtwara municipal
124	district	124	Nanyumbu	2012	0	region	15	Nanyumbu
125	district	125	Newala	2012	0	region	15	Newala
126	district	126	Tandahimba	2012	0	region	15	Tandahimba
127	district	127	Ilemela	2012	0	region	16	Ilemela
128	district	128	Kwimba	2012	0	region	16	Kwimba
129	district	129	Magu	2012	0	region	16	Magu
130	district	130	Missungwi	2012	0	region	16	Missungwi
131	district	131	Nyamagana	2012	0	region	16	Nyamagana
132	district	132	Sengerema	2012	0	region	16	Sengerema
133	district	133	Ukerewe	2012	0	region	16	Ukerewe
134	district	134	Ludewa	2012	0	region	17	Ludewa
135	district	135	Makambako	2012	0	region	17	Makambako
136	district	136	Makete	2012	0	region	17	Makete
137	district	137	Njombe	2012	0	region	17	Njombe
138	district	138	Njombe town	2012	0	region	17	Njombe town
139	district	139	Wanging'ombe	2012	0	region	17	Wanging'ombe
140	district	140	Bagamoyo	2012	0	region	18	Bagamoyo
141	district	141	Kibaha	2012	0	region	18	Kibaha
142	district	142	Kibaha town	2012	0	region	18	Kibaha town
143	district	143	Kisarawe	2012	0	region	18	Kisarawe
144	district	144	Mafia	2012	0	region	18	Mafia
145	district	145	Mkuranga	2012	0	region	18	Mkuranga
146	district	146	Rufiji	2012	0	region	18	Rufiji
147	district	147	Kalambo	2012	0	region	19	Kalambo
148	district	148	Nkasi	2012	0	region	19	Nkasi
149	district	149	Sumbawanga	2012	0	region	19	Sumbawanga
150	district	150	Sumbawanga municipal	2012	0	region	19	Sumbawanga municipal
151	district	151	Mbinga	2012	0	region	20	Mbinga
152	district	152	Namtumbo	2012	0	region	20	Namtumbo
153	district	153	Nyasa	2012	0	region	20	Nyasa
154	district	154	Songea 	2012	0	region	20	Songea
155	district	155	Songea municipal	2012	0	region	20	Songea municipal
156	district	156	Tunduru	2012	0	region	20	Tunduru
157	district	157	Kahama	2012	0	region	21	Kahama
158	district	158	Kahama town	2012	0	region	21	Kahama town
159	district	159	Kishapu	2012	0	region	21	Kishapu
160	district	160	Shinyanga 	2012	0	region	21	Shinyanga
161	district	161	Shinyanga municipal	2012	0	region	21	Shinyanga municipal
162	district	162	Bariadi	2012	0	region	22	Bariadi
163	district	163	Busega	2012	0	region	22	Busega
164	district	164	Itilima	2012	0	region	22	Itilima
165	district	165	Maswa	2012	0	region	22	Maswa
166	district	166	Meatu	2012	0	region	22	Meatu
167	district	167	Ikungi	2012	0	region	23	Ikungi
168	district	168	Iramba	2012	0	region	23	Iramba
169	district	169	Manyoni	2012	0	region	23	Manyoni
170	district	170	Mkalama	2012	0	region	23	Mkalama
171	district	171	Singida	2012	0	region	23	Singida
172	district	172	Singida municipal	2012	0	region	23	Singida municipal
173	district	173	Igunga	2012	0	region	24	Igunga
174	district	174	Kaliua	2012	0	region	24	Kaliua
175	district	175	Nzega	2012	0	region	24	Nzega
176	district	176	Sikonge	2012	0	region	24	Sikonge
177	district	177	Tabora minicipal	2012	0	region	24	Tabora minicipal
178	district	178	Urambo	2012	0	region	24	Urambo
179	district	179	Uyui	2012	0	region	24	Uyui
180	district	180	Handeni	2012	0	region	25	Handeni
181	district	181	Handeni town	2012	0	region	25	Handeni town
182	district	182	Kilindi	2012	0	region	25	Kilindi
183	district	183	Korogwe	2012	0	region	25	Korogwe
184	district	184	Korogwe town	2012	0	region	25	Korogwe town
185	district	185	Lushoto	2012	0	region	25	Lushoto
186	district	186	Mkinga	2012	0	region	25	Mkinga
187	district	187	Muheza	2012	0	region	25	Muheza
188	district	188	Pangani	2012	0	region	25	Pangani
189	district	189	Tanga city	2012	0	region	25	Tanga city
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

