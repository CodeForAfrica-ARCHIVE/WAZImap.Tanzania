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

ALTER TABLE IF EXISTS ONLY public.maintypeofroofingmaterial DROP CONSTRAINT IF EXISTS maintypeofroofingmaterial_pkey;
DROP TABLE IF EXISTS public.maintypeofroofingmaterial;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeofroofingmaterial; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE maintypeofroofingmaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of roofing material" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: maintypeofroofingmaterial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY maintypeofroofingmaterial (geo_level, geo_code, "main type of roofing material", total) FROM stdin;
country	TZ	asbestos sheets	197217
country	TZ	concrete	311379
country	TZ	corrugated iron sheets	6398622
country	TZ	grass	1194210
country	TZ	makuti	283141
country	TZ	mud/dung	69715
country	TZ	other	64866
country	TZ	tiles	193792
country	TZ	tin	25155
region	30	asbestos sheets	1597
region	30	concrete	127
region	30	corrugated iron sheets	64044
region	30	grass	42860
region	30	makuti	223
region	30	mud/dung	68
region	30	other	266
region	30	tiles	1109
region	30	tin	132
region	36	asbestos sheets	2417
region	36	concrete	1280
region	36	corrugated iron sheets	126571
region	36	grass	41326
region	36	makuti	336
region	36	mud/dung	158
region	36	other	48
region	36	tiles	1641
region	36	tin	517
region	39	asbestos sheets	7131
region	39	concrete	363
region	39	corrugated iron sheets	210417
region	39	grass	49928
region	39	makuti	229
region	39	mud/dung	116
region	39	other	351
region	39	tiles	1534
region	39	tin	532
region	40	asbestos sheets	2568
region	40	concrete	150
region	40	corrugated iron sheets	77297
region	40	grass	72762
region	40	makuti	214
region	40	mud/dung	38
region	40	other	153
region	40	tiles	798
region	40	tin	100
region	28	asbestos sheets	890
region	28	concrete	65
region	28	corrugated iron sheets	44911
region	28	grass	30179
region	28	makuti	161
region	28	mud/dung	56
region	28	other	446
region	28	tiles	720
region	28	tin	110
region	14	asbestos sheets	3090
region	14	concrete	710
region	14	corrugated iron sheets	121230
region	14	grass	4325
region	14	makuti	169
region	14	mud/dung	51
region	14	other	54
region	14	tiles	1424
region	14	tin	145
region	7	asbestos sheets	2427
region	7	concrete	220
region	7	corrugated iron sheets	28769
region	7	grass	59267
region	7	makuti	4537
region	7	mud/dung	769
region	7	other	836
region	7	tiles	744
region	7	tin	701
region	43	asbestos sheets	3289
region	43	concrete	131
region	43	corrugated iron sheets	169537
region	43	grass	31181
region	43	makuti	259
region	43	mud/dung	78
region	43	other	43
region	43	tiles	1144
region	43	tin	446
region	11	asbestos sheets	459
region	11	concrete	100
region	11	corrugated iron sheets	19025
region	11	grass	6499
region	11	makuti	1823
region	11	mud/dung	1060
region	11	other	1576
region	11	tiles	208
region	11	tin	555
region	34	asbestos sheets	5520
region	34	concrete	5799
region	34	corrugated iron sheets	115996
region	34	grass	18406
region	34	makuti	693
region	34	mud/dung	17838
region	34	other	1215
region	34	tiles	6884
region	34	tin	712
region	37	asbestos sheets	8605
region	37	concrete	509
region	37	corrugated iron sheets	272421
region	37	grass	70575
region	37	makuti	284
region	37	mud/dung	143
region	37	other	160
region	37	tiles	2066
region	37	tin	612
region	35	asbestos sheets	1568
region	35	concrete	1483
region	35	corrugated iron sheets	103851
region	35	grass	18671
region	35	makuti	134
region	35	mud/dung	92
region	35	other	134
region	35	tiles	1037
region	35	tin	255
region	22	asbestos sheets	8616
region	22	concrete	30984
region	22	corrugated iron sheets	423968
region	22	grass	845
region	22	makuti	540
region	22	mud/dung	119
region	22	other	649
region	22	tiles	15256
region	22	tin	810
region	3	asbestos sheets	5039
region	3	concrete	3498
region	3	corrugated iron sheets	83604
region	3	grass	14458
region	3	makuti	88633
region	3	mud/dung	84
region	3	other	218
region	3	tiles	1978
region	3	tin	339
region	20	asbestos sheets	4011
region	20	concrete	1287
region	20	corrugated iron sheets	146203
region	20	grass	956
region	20	makuti	41
region	20	mud/dung	49
region	20	other	182
region	20	tiles	1155
region	20	tin	97
region	45	asbestos sheets	8598
region	45	concrete	1669
region	45	corrugated iron sheets	225456
region	45	grass	30638
region	45	makuti	443
region	45	mud/dung	124
region	45	other	49
region	45	tiles	1604
region	45	tin	873
region	42	asbestos sheets	6075
region	42	concrete	2370
region	42	corrugated iron sheets	192366
region	42	grass	20515
region	42	makuti	231
region	42	mud/dung	108
region	42	other	144
region	42	tiles	3841
region	42	tin	487
region	15	asbestos sheets	3385
region	15	concrete	298
region	15	corrugated iron sheets	156845
region	15	grass	41198
region	15	makuti	753
region	15	mud/dung	127
region	15	other	264
region	15	tiles	2257
region	15	tin	285
region	2	asbestos sheets	2199
region	2	concrete	250
region	2	corrugated iron sheets	45196
region	2	grass	12240
region	2	makuti	60569
region	2	mud/dung	63
region	2	other	228
region	2	tiles	695
region	2	tin	251
region	31	asbestos sheets	2776
region	31	concrete	1432
region	31	corrugated iron sheets	83142
region	31	grass	9620
region	31	makuti	442
region	31	mud/dung	2627
region	31	other	963
region	31	tiles	1423
region	31	tin	656
region	5	asbestos sheets	656
region	5	concrete	2464
region	5	corrugated iron sheets	6955
region	5	grass	3611
region	5	makuti	7670
region	5	mud/dung	16
region	5	other	495
region	5	tiles	70
region	5	tin	76
region	16	asbestos sheets	4114
region	16	concrete	8066
region	16	corrugated iron sheets	235065
region	16	grass	11777
region	16	makuti	313
region	16	mud/dung	132
region	16	other	284
region	16	tiles	4278
region	16	tin	313
region	17	asbestos sheets	2195
region	17	concrete	276
region	17	corrugated iron sheets	161275
region	17	grass	20425
region	17	makuti	447
region	17	mud/dung	53
region	17	other	68
region	17	tiles	1425
region	17	tin	116
region	9	asbestos sheets	531
region	9	concrete	142
region	9	corrugated iron sheets	14372
region	9	grass	77307
region	9	makuti	31088
region	9	mud/dung	265
region	9	other	1009
region	9	tiles	619
region	9	tin	138
region	10	asbestos sheets	584
region	10	concrete	27
region	10	corrugated iron sheets	15613
region	10	grass	13789
region	10	makuti	6661
region	10	mud/dung	452
region	10	other	18606
region	10	tiles	126
region	10	tin	853
region	12	asbestos sheets	10844
region	12	concrete	1092
region	12	corrugated iron sheets	352331
region	12	grass	10920
region	12	makuti	1133
region	12	mud/dung	375
region	12	other	303
region	12	tiles	2998
region	12	tin	509
region	44	asbestos sheets	4341
region	44	concrete	211
region	44	corrugated iron sheets	136532
region	44	grass	37312
region	44	makuti	175
region	44	mud/dung	86
region	44	other	50
region	44	tiles	1098
region	44	tin	165
region	1	asbestos sheets	8338
region	1	concrete	24683
region	1	corrugated iron sheets	201639
region	1	grass	261
region	1	makuti	11418
region	1	mud/dung	344
region	1	other	332
region	1	tiles	9111
region	1	tin	1128
region	21	asbestos sheets	4132
region	21	concrete	4372
region	21	corrugated iron sheets	228723
region	21	grass	332
region	21	makuti	86
region	21	mud/dung	110
region	21	other	85
region	21	tiles	3005
region	21	tin	1487
region	47	asbestos sheets	30463
region	47	concrete	208148
region	47	corrugated iron sheets	641697
region	47	grass	185
region	47	makuti	711
region	47	mud/dung	283
region	47	other	1638
region	47	tiles	95617
region	47	tin	4373
region	32	asbestos sheets	13084
region	32	concrete	3613
region	32	corrugated iron sheets	354675
region	32	grass	23801
region	32	makuti	661
region	32	mud/dung	547
region	32	other	2999
region	32	tiles	8644
region	32	tin	1073
region	29	asbestos sheets	2110
region	29	concrete	113
region	29	corrugated iron sheets	126222
region	29	grass	22662
region	29	makuti	150
region	29	mud/dung	33
region	29	other	187
region	29	tiles	1189
region	29	tin	223
region	33	asbestos sheets	4998
region	33	concrete	191
region	33	corrugated iron sheets	82259
region	33	grass	56817
region	33	makuti	1942
region	33	mud/dung	18677
region	33	other	2720
region	33	tiles	808
region	33	tin	655
region	46	asbestos sheets	1793
region	46	concrete	218
region	46	corrugated iron sheets	96374
region	46	grass	6561
region	46	makuti	148
region	46	mud/dung	30
region	46	other	10
region	46	tiles	901
region	46	tin	30
region	18	asbestos sheets	2864
region	18	concrete	252
region	18	corrugated iron sheets	135489
region	18	grass	1138
region	18	makuti	102
region	18	mud/dung	22
region	18	other	1679
region	18	tiles	866
region	18	tin	81
region	19	asbestos sheets	4441
region	19	concrete	2375
region	19	corrugated iron sheets	190494
region	19	grass	898
region	19	makuti	148
region	19	mud/dung	47
region	19	other	207
region	19	tiles	2376
region	19	tin	367
region	25	asbestos sheets	439
region	25	concrete	32
region	25	corrugated iron sheets	10747
region	25	grass	5257
region	25	makuti	5576
region	25	mud/dung	17966
region	25	other	5713
region	25	tiles	349
region	25	tin	1152
region	41	asbestos sheets	1861
region	41	concrete	198
region	41	corrugated iron sheets	130934
region	41	grass	63799
region	41	makuti	200
region	41	mud/dung	69
region	41	other	56
region	41	tiles	1224
region	41	tin	323
region	6	asbestos sheets	2098
region	6	concrete	299
region	6	corrugated iron sheets	60246
region	6	grass	4678
region	6	makuti	1064
region	6	mud/dung	82
region	6	other	166
region	6	tiles	884
region	6	tin	522
region	4	asbestos sheets	681
region	4	concrete	19
region	4	corrugated iron sheets	12498
region	4	grass	26680
region	4	makuti	6576
region	4	mud/dung	19
region	4	other	546
region	4	tiles	193
region	4	tin	62
region	13	asbestos sheets	855
region	13	concrete	10
region	13	corrugated iron sheets	21477
region	13	grass	4769
region	13	makuti	65
region	13	mud/dung	10
region	13	other	29
region	13	tiles	159
region	13	tin	15
region	26	asbestos sheets	4836
region	26	concrete	286
region	26	corrugated iron sheets	138404
region	26	grass	22979
region	26	makuti	280
region	26	mud/dung	83
region	26	other	844
region	26	tiles	1721
region	26	tin	199
region	23	asbestos sheets	1447
region	23	concrete	53
region	23	corrugated iron sheets	16925
region	23	grass	42370
region	23	makuti	43605
region	23	mud/dung	195
region	23	other	16104
region	23	tiles	456
region	23	tin	1780
region	27	asbestos sheets	5088
region	27	concrete	1150
region	27	corrugated iron sheets	170243
region	27	grass	15613
region	27	makuti	171
region	27	mud/dung	114
region	27	other	2403
region	27	tiles	6432
region	27	tin	402
region	38	asbestos sheets	3026
region	38	concrete	239
region	38	corrugated iron sheets	113898
region	38	grass	4694
region	38	makuti	90
region	38	mud/dung	46
region	38	other	23
region	38	tiles	891
region	38	tin	334
region	8	asbestos sheets	399
region	8	concrete	93
region	8	corrugated iron sheets	9230
region	8	grass	76293
region	8	makuti	1708
region	8	mud/dung	152
region	8	other	188
region	8	tiles	319
region	8	tin	111
region	24	asbestos sheets	739
region	24	concrete	32
region	24	corrugated iron sheets	23456
region	24	grass	62833
region	24	makuti	239
region	24	mud/dung	5739
region	24	other	143
region	24	tiles	515
region	24	tin	53
\.


--
-- Name: maintypeofroofingmaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY maintypeofroofingmaterial
    ADD CONSTRAINT maintypeofroofingmaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of roofing material");


--
-- PostgreSQL database dump complete
--

