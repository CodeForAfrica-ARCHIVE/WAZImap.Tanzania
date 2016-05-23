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

ALTER TABLE IF EXISTS ONLY public.maintypeoflightingfuel DROP CONSTRAINT IF EXISTS maintypeoflightingfuel_pkey;
ALTER TABLE IF EXISTS ONLY public.mainsourceofwater DROP CONSTRAINT IF EXISTS mainsourceofwater_pkey;
ALTER TABLE IF EXISTS ONLY public.mainmodeofhumanwastedisposal DROP CONSTRAINT IF EXISTS mainmodeofhumanwastedisposal_pkey;
DROP TABLE IF EXISTS public.maintypeoflightingfuel;
DROP TABLE IF EXISTS public.mainsourceofwater;
DROP TABLE IF EXISTS public.mainmodeofhumanwastedisposal;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mainmodeofhumanwastedisposal; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mainmodeofhumanwastedisposal (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main mode of human waste disposal" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Name: mainsourceofwater; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE mainsourceofwater (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main source of water" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Name: maintypeoflightingfuel; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE maintypeoflightingfuel (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of lighting fuel" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: mainmodeofhumanwastedisposal; Type: TABLE DATA; Schema: public; Owner: -
--

COPY mainmodeofhumanwastedisposal (geo_level, geo_code, "main mode of human waste disposal", total) FROM stdin;
country	TZ	bucket	22828
country	TZ	bush	1196509
country	TZ	cess pool	29881
country	TZ	main sewer	674541
country	TZ	other	14104
country	TZ	septic tank	299030
region	2	bucket	196
region	2	bush	62342
region	2	cess pool	574
region	2	main sewer	614
region	2	other	166
region	2	septic tank	2723
region	3	bucket	1152
region	3	bush	67545
region	3	cess pool	930
region	3	main sewer	3234
region	3	other	273
region	5	bucket	92
region	5	bush	4822
region	5	cess pool	97
region	5	main sewer	75
region	5	other	78
region	5	septic tank	759
region	7	bucket	308
region	7	bush	46934
region	7	cess pool	150
region	7	main sewer	1121
region	7	other	557
region	7	septic tank	851
region	9	bucket	168
region	9	bush	82437
region	9	cess pool	226
region	9	main sewer	122
region	9	other	404
region	10	bucket	24
region	10	bush	36636
region	10	cess pool	23
region	10	main sewer	22
region	10	other	131
region	10	septic tank	118
region	11	bucket	36
region	11	bush	13739
region	11	cess pool	17
region	11	main sewer	1557
region	11	other	107
region	12	bucket	277
region	12	bush	8257
region	12	cess pool	874
region	12	main sewer	2306
region	12	other	540
region	12	septic tank	6029
region	14	bucket	78
region	14	bush	2188
region	14	cess pool	469
region	14	main sewer	3264
region	14	other	83
region	15	bucket	86
region	15	bush	63204
region	15	cess pool	217
region	15	main sewer	433
region	15	other	216
region	15	septic tank	1269
region	16	bucket	307
region	16	bush	6989
region	16	cess pool	1175
region	16	main sewer	11666
region	16	other	524
region	16	septic tank	8944
region	17	bucket	78
region	17	bush	3811
region	17	cess pool	249
region	17	main sewer	1032
region	17	other	74
region	20	bucket	245
region	20	bush	807
region	20	cess pool	252
region	20	main sewer	1222
region	20	other	147
region	20	septic tank	4985
region	40	bucket	135
region	40	bush	12033
region	40	cess pool	178
region	40	main sewer	545
region	40	other	223
region	21	bucket	116
region	21	bush	415
region	22	bucket	491
region	22	bush	1118
region	22	cess pool	1862
region	22	main sewer	31288
region	22	other	264
region	22	septic tank	44518
region	28	bucket	51
region	28	bush	14465
region	28	cess pool	33
region	28	main sewer	295
region	28	other	34
region	30	bucket	40
region	30	bush	47510
region	30	cess pool	80
region	30	main sewer	296
region	30	other	59
region	30	septic tank	1111
region	31	bucket	84
region	31	bush	11626
region	31	cess pool	194
region	31	main sewer	10324
region	31	other	70
region	34	bucket	232
region	34	bush	44197
region	34	cess pool	478
region	34	main sewer	2407
region	34	other	316
region	34	septic tank	17157
region	35	bucket	129
region	35	bush	10080
region	35	cess pool	107
region	35	main sewer	2695
region	35	other	78
region	36	bucket	96
region	36	bush	8639
region	36	cess pool	144
region	36	main sewer	565
region	36	other	113
region	36	septic tank	546
region	37	bucket	336
region	37	bush	4941
region	1	bucket	3040
region	1	bush	5723
region	1	cess pool	3698
region	1	main sewer	37225
region	1	other	494
region	1	septic tank	35307
region	3	septic tank	14764
region	4	bucket	104
region	4	bush	33291
region	4	cess pool	30
region	4	main sewer	132
region	4	other	103
region	4	septic tank	261
region	6	bucket	31
region	6	bush	3948
region	6	cess pool	185
region	6	main sewer	953
region	6	other	86
region	6	septic tank	3223
region	8	bucket	6660
region	8	bush	67723
region	8	cess pool	59
region	8	main sewer	151
region	8	other	239
region	8	septic tank	329
region	9	septic tank	87
region	11	septic tank	622
region	13	bucket	8
region	13	bush	2541
region	13	cess pool	9
region	13	main sewer	19
region	13	other	26
region	13	septic tank	81
region	14	septic tank	4076
region	17	septic tank	632
region	18	bucket	116
region	18	bush	223
region	18	cess pool	110
region	18	main sewer	346
region	18	other	39
region	18	septic tank	1022
region	19	bucket	196
region	19	bush	486
region	19	cess pool	584
region	19	main sewer	9633
region	19	other	34
region	19	septic tank	7083
region	25	bucket	19
region	25	bush	34746
region	25	cess pool	30
region	25	main sewer	94
region	25	other	33
region	25	septic tank	295
region	40	septic tank	808
region	21	cess pool	419
region	21	main sewer	3967
region	21	other	101
region	21	septic tank	3578
region	23	bucket	67
region	23	bush	100997
region	23	cess pool	133
region	23	main sewer	192
region	23	other	230
region	23	septic tank	252
region	24	bucket	41
region	24	bush	62901
region	24	cess pool	56
region	24	main sewer	132
region	24	other	42
region	24	septic tank	156
region	26	bucket	173
region	26	bush	4346
region	26	cess pool	200
region	26	main sewer	2802
region	26	other	261
region	26	septic tank	1377
region	27	bucket	293
region	27	bush	3374
region	27	cess pool	315
region	27	main sewer	16411
region	27	other	330
region	27	septic tank	6845
region	28	septic tank	333
region	29	bucket	58
region	29	bush	7173
region	29	cess pool	146
region	29	main sewer	599
region	29	other	295
region	29	septic tank	663
region	31	septic tank	1886
region	32	bucket	554
region	32	bush	11262
region	32	cess pool	3148
region	32	main sewer	32864
region	32	other	339
region	32	septic tank	14507
region	33	bucket	122
region	33	bush	81700
region	33	cess pool	122
region	33	main sewer	755
region	33	other	209
region	33	septic tank	1429
region	35	septic tank	1316
region	37	cess pool	466
region	37	main sewer	5272
region	37	other	570
region	37	septic tank	2879
region	38	bucket	55
region	38	bush	908
region	38	cess pool	78
region	38	main sewer	374
region	38	other	98
region	38	septic tank	275
region	39	bucket	303
region	39	bush	8060
region	39	cess pool	282
region	39	main sewer	1936
region	39	other	743
region	39	septic tank	2086
region	41	bucket	154
region	41	bush	39793
region	41	cess pool	199
region	41	main sewer	396
region	41	other	385
region	41	septic tank	512
region	42	bucket	275
region	42	bush	27440
region	42	cess pool	294
region	42	main sewer	10933
region	42	other	758
region	42	septic tank	5513
region	43	bucket	171
region	43	bush	79509
region	43	cess pool	111
region	43	main sewer	1869
region	43	other	481
region	43	septic tank	354
region	44	bucket	215
region	44	bush	59404
region	44	cess pool	125
region	44	main sewer	861
region	44	other	245
region	44	septic tank	595
region	45	bucket	128
region	45	bush	1726
region	45	cess pool	214
region	45	main sewer	1640
region	45	other	304
region	45	septic tank	1191
region	47	bucket	5205
region	47	bush	3962
region	47	cess pool	10489
region	47	main sewer	469830
region	47	other	3180
region	46	bucket	83
region	46	bush	538
region	46	cess pool	50
region	46	main sewer	72
region	46	other	22
region	46	septic tank	273
region	47	septic tank	95410
\.


--
-- Data for Name: mainsourceofwater; Type: TABLE DATA; Schema: public; Owner: -
--

COPY mainsourceofwater (geo_level, geo_code, "main source of water", total) FROM stdin;
region	22	jabia/rain/harvested	4620
region	22	lake	3873
region	22	other	164
region	22	piped	158445
region	22	piped into dwelling	60224
region	22	pond/dam	163
region	22	spring/well/borehole	153734
region	22	stream	57079
region	22	water vendor	44148
region	28	jabia/rain/harvested	148
region	28	lake	606
region	28	other	29
region	28	piped	13426
region	28	piped into dwelling	1856
region	28	pond/dam	60
region	28	spring/well/borehole	18869
region	28	stream	42315
region	28	water vendor	246
region	30	jabia/rain/harvested	440
region	30	lake	7123
region	30	other	3384
region	30	piped	13623
region	30	piped into dwelling	1925
region	30	pond/dam	2344
region	30	spring/well/borehole	22901
region	30	stream	57714
region	30	water vendor	1195
region	34	jabia/rain/harvested	1325
region	34	lake	6889
region	34	other	261
region	34	piped	48283
region	34	piped into dwelling	15602
region	34	pond/dam	299
region	34	spring/well/borehole	60198
region	34	stream	15482
region	34	water vendor	25125
region	35	jabia/rain/harvested	935
region	35	lake	1334
region	35	other	39
region	35	piped	23743
region	35	piped into dwelling	15249
region	35	pond/dam	90
region	35	spring/well/borehole	31603
region	35	stream	52052
region	35	water vendor	2536
region	36	jabia/rain/harvested	2353
region	36	lake	26480
region	36	other	49
region	36	piped	16819
region	36	piped into dwelling	7910
region	36	pond/dam	229
region	36	spring/well/borehole	44261
region	36	stream	75666
region	36	water vendor	1147
region	37	jabia/rain/harvested	1250
region	37	lake	2463
region	37	other	109
region	37	piped	14459
region	37	piped into dwelling	6263
region	37	pond/dam	264
region	3	lake	26218
region	7	jabia/rain/harvested	618
region	7	lake	3797
region	7	other	9514
region	7	piped	24492
region	7	piped into dwelling	3233
region	7	pond/dam	120
region	7	spring/well/borehole	46371
region	7	stream	7506
region	11	jabia/rain/harvested	71
region	11	lake	213
region	11	other	162
region	11	piped	13413
region	11	piped into dwelling	2010
region	11	pond/dam	3
region	11	spring/well/borehole	11018
region	11	stream	3386
region	14	jabia/rain/harvested	607
region	14	lake	4662
region	14	other	146
region	14	piped	37288
region	14	piped into dwelling	11810
region	14	pond/dam	99
region	14	spring/well/borehole	32127
region	14	stream	40822
region	14	water vendor	4122
region	15	jabia/rain/harvested	1336
region	15	lake	9583
region	15	other	49
region	15	piped	13758
region	15	piped into dwelling	1968
region	15	pond/dam	294
region	20	jabia/rain/harvested	756
region	20	lake	318
region	20	other	79
region	20	piped	51515
region	20	piped into dwelling	10975
region	20	pond/dam	28
region	20	spring/well/borehole	24356
region	20	stream	63242
region	40	jabia/rain/harvested	260
region	40	lake	1800
region	40	other	44
region	40	piped	7689
region	40	piped into dwelling	986
region	40	pond/dam	5033
region	40	spring/well/borehole	118850
region	40	stream	18793
region	40	water vendor	770
region	37	spring/well/borehole	248628
region	37	stream	80202
region	37	water vendor	2041
region	39	jabia/rain/harvested	394
region	39	lake	729
region	39	other	55
region	39	piped	23765
region	39	piped into dwelling	4186
region	39	pond/dam	168
region	39	spring/well/borehole	212514
region	39	stream	25720
region	39	water vendor	3293
region	42	jabia/rain/harvested	2362
region	42	lake	9735
region	42	other	72
region	42	piped	49658
region	42	piped into dwelling	7653
region	42	pond/dam	5287
region	42	spring/well/borehole	76589
region	42	stream	55491
region	43	jabia/rain/harvested	1353
region	43	lake	24289
region	43	other	114
region	43	piped	9969
region	43	piped into dwelling	1625
region	43	pond/dam	34914
region	43	spring/well/borehole	66615
region	43	stream	64696
region	43	water vendor	2680
region	45	jabia/rain/harvested	2510
region	45	lake	437
region	45	other	55
region	45	piped	8007
region	45	piped into dwelling	2449
region	45	pond/dam	147
region	45	spring/well/borehole	170166
region	45	stream	84837
region	21	jabia/rain/harvested	8537
region	21	lake	1583
region	21	other	82
region	21	piped	46955
region	21	piped into dwelling	10802
region	21	pond/dam	96
region	21	spring/well/borehole	57400
region	21	stream	112927
region	21	water vendor	4108
region	29	jabia/rain/harvested	859
region	29	lake	1656
region	29	other	30
region	29	piped	17747
region	29	piped into dwelling	3234
region	29	pond/dam	116
region	29	spring/well/borehole	64729
region	29	stream	64381
region	29	water vendor	1321
region	31	jabia/rain/harvested	1580
region	31	lake	7847
region	31	other	48
region	31	piped	21809
region	31	piped into dwelling	8753
region	31	pond/dam	40
region	31	spring/well/borehole	32560
region	31	stream	26873
region	31	water vendor	3604
region	32	jabia/rain/harvested	15511
region	32	lake	8131
region	32	other	609
region	32	piped	118036
region	32	piped into dwelling	32572
region	32	pond/dam	1625
region	32	spring/well/borehole	106202
region	32	stream	69081
region	32	water vendor	58069
region	33	jabia/rain/harvested	1589
region	33	lake	22845
region	33	other	672
region	33	piped	10241
region	33	piped into dwelling	1401
region	33	pond/dam	291
region	33	spring/well/borehole	43601
region	33	stream	78939
region	33	water vendor	9641
region	44	jabia/rain/harvested	802
region	44	lake	9615
region	44	other	232
region	44	piped	2901
region	44	piped into dwelling	1359
region	44	pond/dam	11291
region	44	spring/well/borehole	81080
region	44	stream	71603
region	44	water vendor	1328
region	46	jabia/rain/harvested	2140
region	46	lake	660
region	46	other	11
region	46	piped	3666
region	46	piped into dwelling	713
region	46	pond/dam	52
region	46	spring/well/borehole	66466
region	46	stream	32287
region	46	water vendor	390
region	47	jabia/rain/harvested	1691
region	47	lake	2761
region	47	other	687
region	47	piped	514943
region	47	piped into dwelling	230704
region	47	pond/dam	99
region	47	spring/well/borehole	70729
region	47	stream	1345
region	47	water vendor	162057
region	2	jabia/rain/harvested	701
region	2	lake	25370
region	2	other	125
region	2	piped	31361
region	2	piped into dwelling	3080
region	2	pond/dam	265
region	2	spring/well/borehole	45131
region	2	stream	13470
region	5	jabia/rain/harvested	1652
region	5	lake	1396
region	5	other	29
region	5	piped	5030
region	5	piped into dwelling	1732
region	5	pond/dam	146
region	5	spring/well/borehole	11402
region	5	stream	532
region	9	jabia/rain/harvested	6167
region	9	lake	34942
region	9	other	353
region	9	piped	5769
region	9	piped into dwelling	1426
region	9	pond/dam	118
region	9	spring/well/borehole	51713
region	9	stream	8410
region	9	water vendor	16599
region	10	jabia/rain/harvested	1008
region	10	lake	5599
region	10	other	53
region	10	piped	3747
region	10	piped into dwelling	147
region	10	pond/dam	724
region	10	spring/well/borehole	39266
region	10	stream	350
region	12	jabia/rain/harvested	3276
region	12	lake	1214
region	12	other	832
region	12	piped	170912
region	12	piped into dwelling	29737
region	12	pond/dam	449
region	12	spring/well/borehole	43660
region	12	stream	102300
region	12	water vendor	28646
region	15	spring/well/borehole	87259
region	15	stream	83955
region	15	water vendor	7289
region	16	jabia/rain/harvested	1920
region	16	lake	20640
region	16	other	138
region	16	piped	27785
region	16	piped into dwelling	9809
region	16	pond/dam	155
region	16	spring/well/borehole	114074
region	16	stream	61163
region	17	jabia/rain/harvested	1158
region	17	lake	9380
region	17	other	11
region	17	piped	36034
region	17	piped into dwelling	4529
region	17	pond/dam	77
region	17	spring/well/borehole	64460
region	17	stream	62249
region	17	water vendor	8580
region	18	jabia/rain/harvested	9675
region	18	lake	11979
region	18	other	32
region	18	piped	29594
region	18	piped into dwelling	5718
region	18	pond/dam	90
region	18	spring/well/borehole	52806
region	18	stream	29165
region	19	jabia/rain/harvested	8206
region	19	lake	1111
region	19	other	138
region	19	piped	88332
region	23	jabia/rain/harvested	56
region	23	lake	692
region	23	other	323
region	23	piped	12945
region	23	piped into dwelling	2313
region	23	pond/dam	3247
region	23	spring/well/borehole	76203
region	23	stream	25515
region	23	water vendor	1897
region	24	jabia/rain/harvested	104
region	24	lake	3270
region	24	other	15
region	24	piped	7353
region	24	piped into dwelling	1210
region	24	pond/dam	128
region	24	spring/well/borehole	26259
region	24	stream	54977
region	24	water vendor	461
region	26	jabia/rain/harvested	407
region	26	lake	1197
region	26	other	90
region	26	piped	16880
region	26	piped into dwelling	2822
region	26	pond/dam	85
region	26	spring/well/borehole	110386
region	26	stream	34441
region	26	water vendor	3809
region	27	jabia/rain/harvested	214
region	27	lake	1638
region	27	other	122
region	27	piped	50168
region	27	piped into dwelling	15465
region	27	pond/dam	135
region	27	spring/well/borehole	113923
region	27	stream	17991
region	27	water vendor	2635
region	38	jabia/rain/harvested	1497
region	38	lake	416
region	38	other	21
region	38	piped	4155
region	38	piped into dwelling	1387
region	38	pond/dam	57
region	38	spring/well/borehole	87185
region	38	stream	27406
region	38	water vendor	1223
region	41	jabia/rain/harvested	2052
region	41	lake	28184
region	41	other	38
region	41	piped	11698
region	41	piped into dwelling	1850
region	1	jabia/rain/harvested	323
region	1	lake	1102
region	1	other	147
region	1	piped	110955
region	1	piped into dwelling	31055
region	1	pond/dam	33
region	1	spring/well/borehole	59144
region	1	stream	340
region	1	water vendor	65601
region	2	water vendor	2544
region	3	jabia/rain/harvested	1418
region	3	other	582
region	3	piped	93557
region	3	piped into dwelling	14151
region	3	pond/dam	511
region	3	spring/well/borehole	42476
region	3	stream	8636
region	3	water vendor	12215
region	4	jabia/rain/harvested	82
region	4	lake	3691
region	4	other	2549
region	4	piped	5024
region	4	piped into dwelling	800
region	4	pond/dam	460
region	4	spring/well/borehole	20399
region	4	stream	12703
region	4	water vendor	1706
region	5	water vendor	265
region	6	jabia/rain/harvested	134
region	6	lake	617
region	6	other	52
region	6	piped	37451
region	6	piped into dwelling	4639
region	6	pond/dam	216
region	6	spring/well/borehole	7532
region	6	stream	16368
region	6	water vendor	4081
region	7	water vendor	2939
region	8	jabia/rain/harvested	965
region	8	lake	12091
region	8	other	211
region	8	piped	1061
region	8	piped into dwelling	249
region	8	pond/dam	26
region	8	spring/well/borehole	62867
region	8	stream	48
region	8	water vendor	11056
region	10	water vendor	6047
region	11	water vendor	1050
region	13	jabia/rain/harvested	23
region	13	lake	21
region	13	other	7
region	13	piped	2895
region	13	piped into dwelling	328
region	13	pond/dam	28
region	13	spring/well/borehole	7828
region	13	stream	16084
region	13	water vendor	179
region	16	water vendor	28816
region	18	water vendor	4820
region	19	piped into dwelling	24534
region	19	pond/dam	56
region	19	spring/well/borehole	18701
region	19	stream	55794
region	19	water vendor	4831
region	20	water vendor	2951
region	25	jabia/rain/harvested	194
region	25	lake	2624
region	25	other	22
region	25	piped	6389
region	25	piped into dwelling	441
region	25	pond/dam	233
region	25	spring/well/borehole	25100
region	25	stream	11747
region	25	water vendor	604
region	41	pond/dam	27534
region	41	spring/well/borehole	77281
region	41	stream	46921
region	41	water vendor	3476
region	42	water vendor	19872
region	45	water vendor	1075
country	TZ	jabia/rain/harvested	95279
country	TZ	lake	352821
country	TZ	other	22586
country	TZ	piped	2023745
country	TZ	piped into dwelling	602884
country	TZ	pond/dam	97925
country	TZ	spring/well/borehole	3106622
country	TZ	stream	1893004
country	TZ	water vendor	573088
\.


--
-- Data for Name: maintypeoflightingfuel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY maintypeoflightingfuel (geo_level, geo_code, "main type of lighting fuel", total) FROM stdin;
region	3	electricity	33423
region	3	gas lamps	911
region	3	lanterns	33735
region	3	other	665
region	3	pressure lamps	1433
region	3	solar	3471
region	3	tin lamps	125005
region	3	wood	1121
region	5	electricity	3767
region	5	gas lamps	158
region	5	lanterns	7211
region	5	other	428
region	5	pressure lamps	135
region	5	solar	560
region	7	electricity	11405
region	7	gas lamps	17277
region	7	lanterns	20272
region	7	other	6827
region	7	pressure lamps	552
region	7	solar	10251
region	7	tin lamps	31642
region	7	wood	364
region	11	electricity	5800
region	11	gas lamps	781
region	11	lanterns	9751
region	11	other	1015
region	11	pressure lamps	154
region	11	solar	7283
region	11	tin lamps	6113
region	14	electricity	19611
region	14	gas lamps	778
region	14	lanterns	46512
region	14	other	626
region	14	pressure lamps	992
region	14	solar	1114
region	14	tin lamps	57535
region	14	wood	4515
region	15	electricity	9850
region	15	gas lamps	1372
region	15	lanterns	111037
region	15	other	1277
region	15	pressure lamps	1192
region	15	solar	10311
region	15	tin lamps	64450
region	20	electricity	25353
region	20	gas lamps	1005
region	20	lanterns	51589
region	20	other	367
region	20	pressure lamps	1028
region	20	solar	413
region	20	tin lamps	69116
region	20	wood	5349
region	40	electricity	9253
region	40	gas lamps	709
region	40	lanterns	33283
region	40	other	338
region	40	pressure lamps	494
region	40	solar	566
region	40	tin lamps	108949
region	22	electricity	255704
region	22	gas lamps	1428
region	22	lanterns	125860
region	22	other	1866
region	22	pressure lamps	3345
region	22	solar	735
region	22	tin lamps	89701
region	28	electricity	5547
region	28	gas lamps	449
region	28	lanterns	36321
region	28	other	228
region	28	pressure lamps	220
region	28	solar	11744
region	28	tin lamps	21891
region	28	wood	1155
region	30	electricity	10583
region	30	gas lamps	796
region	30	lanterns	43488
region	30	other	471
region	30	pressure lamps	437
region	30	solar	30734
region	30	tin lamps	22238
region	31	electricity	18222
region	31	gas lamps	740
region	31	lanterns	36366
region	31	other	428
region	31	pressure lamps	542
region	31	solar	5276
region	31	tin lamps	35413
region	31	wood	6127
region	34	electricity	69098
region	34	gas lamps	706
region	34	lanterns	32788
region	34	other	1780
region	34	pressure lamps	1430
region	34	solar	3804
region	34	tin lamps	62031
region	35	electricity	15005
region	35	gas lamps	587
region	35	lanterns	58865
region	35	other	212
region	35	pressure lamps	505
region	35	solar	361
region	35	tin lamps	49875
region	35	wood	2171
region	36	electricity	7552
region	36	gas lamps	1135
region	36	lanterns	113311
region	36	other	499
region	36	pressure lamps	581
region	36	solar	1444
region	36	tin lamps	45434
region	37	electricity	19959
region	37	gas lamps	2718
region	37	lanterns	100156
region	37	other	483
region	37	pressure lamps	1791
region	37	solar	1367
region	37	tin lamps	226650
region	37	wood	2555
region	39	electricity	12219
region	39	gas lamps	1704
region	39	lanterns	72256
region	39	other	458
region	39	pressure lamps	1351
region	39	solar	1493
region	4	electricity	1184
region	4	gas lamps	604
region	4	lanterns	9590
region	4	other	1279
region	4	pressure lamps	86
region	4	solar	2785
region	4	tin lamps	31438
region	4	wood	448
region	5	tin lamps	8752
region	5	wood	1173
region	6	electricity	10653
region	6	gas lamps	257
region	6	lanterns	32595
region	6	other	450
region	6	pressure lamps	353
region	6	solar	412
region	6	tin lamps	24732
region	6	wood	1638
region	9	electricity	3198
region	9	gas lamps	13845
region	9	lanterns	41321
region	9	other	4340
region	9	pressure lamps	271
region	9	solar	45240
region	9	tin lamps	16989
region	9	wood	293
region	10	electricity	4258
region	10	gas lamps	1665
region	10	lanterns	13084
region	10	other	2879
region	10	pressure lamps	69
region	10	solar	27355
region	10	tin lamps	6953
region	12	electricity	50004
region	12	gas lamps	3018
region	12	lanterns	112946
region	12	other	1519
region	12	pressure lamps	2388
region	12	solar	7015
region	12	tin lamps	183198
region	12	wood	20938
region	13	electricity	826
region	13	gas lamps	154
region	13	lanterns	3801
region	13	other	366
region	13	pressure lamps	93
region	13	solar	1652
region	13	tin lamps	18194
region	16	electricity	45067
region	16	gas lamps	1355
region	16	lanterns	143523
region	16	other	1172
region	16	pressure lamps	1846
region	16	solar	565
region	16	tin lamps	63999
region	16	wood	6973
region	17	electricity	10912
region	17	gas lamps	859
region	17	lanterns	117991
region	17	other	517
region	17	pressure lamps	816
region	17	solar	1136
region	17	tin lamps	47245
region	18	electricity	15086
region	18	gas lamps	911
region	18	lanterns	79351
region	18	other	387
region	18	pressure lamps	875
region	18	solar	391
region	18	tin lamps	38225
region	19	electricity	53086
region	19	gas lamps	1038
region	19	lanterns	69517
region	19	other	486
region	19	pressure lamps	1641
region	19	solar	1004
region	19	tin lamps	66305
region	19	wood	8626
region	25	electricity	2949
region	25	gas lamps	444
region	25	lanterns	5074
region	25	other	374
region	25	pressure lamps	165
region	25	solar	28451
region	25	tin lamps	9239
region	21	electricity	33847
region	21	gas lamps	1296
region	21	lanterns	95784
region	21	other	386
region	21	pressure lamps	1306
region	21	solar	555
region	21	tin lamps	103722
region	21	wood	5594
region	26	electricity	15121
region	26	gas lamps	1088
region	26	lanterns	65971
region	26	other	489
region	29	electricity	9788
region	29	gas lamps	796
region	29	lanterns	64865
region	29	other	246
region	29	pressure lamps	504
region	29	solar	316
region	29	tin lamps	75638
region	32	electricity	139430
region	32	gas lamps	1994
region	32	lanterns	147950
region	32	other	1927
region	32	pressure lamps	2271
region	32	solar	3398
region	32	tin lamps	103605
region	32	wood	9261
region	33	electricity	9903
region	33	gas lamps	861
region	33	lanterns	49009
region	33	other	1921
region	33	pressure lamps	826
region	33	solar	12977
region	33	tin lamps	91422
region	41	electricity	8615
region	41	gas lamps	885
region	41	lanterns	41128
region	41	other	270
region	41	pressure lamps	858
region	41	solar	440
region	1	electricity	158588
region	1	gas lamps	512
region	1	lanterns	43057
region	1	other	1644
region	1	pressure lamps	2748
region	1	solar	530
region	1	tin lamps	61236
region	1	wood	385
region	2	electricity	12888
region	2	gas lamps	419
region	2	lanterns	16063
region	2	other	326
region	2	pressure lamps	713
region	2	solar	1522
region	2	tin lamps	89118
region	2	wood	998
region	8	electricity	3039
region	8	gas lamps	9767
region	8	lanterns	27923
region	8	other	6348
region	8	pressure lamps	98
region	8	solar	26296
region	8	tin lamps	14948
region	8	wood	155
region	10	wood	678
region	11	wood	429
region	13	wood	2307
region	15	wood	6002
region	17	wood	7002
region	18	wood	8653
region	25	wood	658
region	40	wood	633
region	22	wood	3811
region	23	electricity	3017
region	23	gas lamps	694
region	23	lanterns	10571
region	23	other	4322
region	23	pressure lamps	224
region	23	solar	89894
region	23	tin lamps	13523
region	23	wood	946
region	24	electricity	2456
region	24	gas lamps	467
region	24	lanterns	20880
region	24	other	400
region	24	pressure lamps	104
region	24	solar	46980
region	24	tin lamps	22021
region	24	wood	469
region	26	pressure lamps	977
region	26	solar	994
region	26	tin lamps	84035
region	26	wood	1442
region	27	electricity	56534
region	27	gas lamps	782
region	27	lanterns	89231
region	27	other	1035
region	27	pressure lamps	1218
region	27	solar	628
region	27	tin lamps	50506
region	27	wood	2357
region	29	wood	1920
region	30	wood	1902
region	33	wood	2301
region	34	wood	1827
region	36	wood	4958
region	38	electricity	8678
region	38	gas lamps	1038
region	38	lanterns	35132
region	38	other	129
region	38	pressure lamps	547
region	38	solar	582
region	38	tin lamps	76480
region	38	wood	761
region	39	tin lamps	180120
region	39	wood	1223
region	41	tin lamps	145066
region	41	wood	1772
region	42	electricity	41551
region	42	gas lamps	921
region	42	lanterns	52543
region	42	other	392
region	42	pressure lamps	1256
region	42	solar	513
region	42	tin lamps	127278
region	42	wood	2265
region	43	electricity	6850
region	43	gas lamps	1067
region	43	lanterns	43788
region	43	other	226
region	43	pressure lamps	980
region	43	solar	823
region	43	tin lamps	150440
region	43	wood	2081
region	44	electricity	9551
region	44	gas lamps	1057
region	44	lanterns	46080
region	44	other	297
region	44	pressure lamps	1015
region	44	solar	1051
region	44	tin lamps	119675
region	44	wood	1485
region	45	electricity	20965
region	45	gas lamps	1490
region	45	lanterns	87971
region	45	other	345
region	45	pressure lamps	1033
region	45	solar	711
region	45	tin lamps	154632
region	45	wood	2536
region	46	electricity	6486
region	46	gas lamps	586
region	46	lanterns	42674
region	46	other	67
region	46	pressure lamps	453
region	46	solar	297
region	46	tin lamps	54798
region	46	wood	1024
region	47	electricity	712859
region	47	gas lamps	1251
region	47	lanterns	128173
region	47	other	7244
region	47	pressure lamps	10324
region	47	solar	622
region	47	tin lamps	123551
region	47	wood	992
country	TZ	electricity	1989740
country	TZ	gas lamps	84375
country	TZ	lanterns	2670387
country	TZ	other	59751
country	TZ	pressure lamps	52240
country	TZ	solar	396062
country	TZ	tin lamps	3373126
country	TZ	wood	142273
\.


--
-- Name: mainmodeofhumanwastedisposal_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mainmodeofhumanwastedisposal
    ADD CONSTRAINT mainmodeofhumanwastedisposal_pkey PRIMARY KEY (geo_level, geo_code, "main mode of human waste disposal");


--
-- Name: mainsourceofwater_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mainsourceofwater
    ADD CONSTRAINT mainsourceofwater_pkey PRIMARY KEY (geo_level, geo_code, "main source of water");


--
-- Name: maintypeoflightingfuel_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY maintypeoflightingfuel
    ADD CONSTRAINT maintypeoflightingfuel_pkey PRIMARY KEY (geo_level, geo_code, "main type of lighting fuel");


--
-- PostgreSQL database dump complete
--

