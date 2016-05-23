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

ALTER TABLE IF EXISTS ONLY public.maintypeofwallmaterial DROP CONSTRAINT IF EXISTS maintypeofwallmaterial_pkey;
DROP TABLE IF EXISTS public.maintypeofwallmaterial;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeofwallmaterial; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE maintypeofwallmaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of wall material" character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: maintypeofwallmaterial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY maintypeofwallmaterial (geo_level, geo_code, "main type of wall material", total) FROM stdin;
country	TZ	brick/block	1470779
country	TZ	corrugated iron sheets	577500
country	TZ	grass/reeds	264557
country	TZ	mud/cement	673636
country	TZ	mud/wood	3208268
country	TZ	other	78803
country	TZ	tin	26411
country	TZ	wood only	970089
country	TZ	stone	1450487
region	30	brick/block	4037
region	30	corrugated iron sheets	7048
region	30	grass/reeds	1675
region	30	mud/cement	6952
region	30	mud/wood	55881
region	30	other	611
region	30	tin	87
region	30	wood only	28489
region	36	brick/block	15688
region	36	corrugated iron sheets	1430
region	36	grass/reeds	159
region	36	mud/cement	13147
region	36	mud/wood	113528
region	36	other	1834
region	36	tin	81
region	36	wood only	21166
region	39	brick/block	38862
region	39	corrugated iron sheets	493
region	39	grass/reeds	210
region	39	mud/cement	33668
region	39	mud/wood	190042
region	39	other	2246
region	39	tin	85
region	39	wood only	982
region	40	brick/block	26034
region	40	corrugated iron sheets	464
region	40	grass/reeds	476
region	40	mud/cement	16284
region	40	mud/wood	104454
region	40	other	3086
region	40	tin	96
region	40	wood only	312
region	28	brick/block	5037
region	28	corrugated iron sheets	1558
region	28	grass/reeds	235
region	28	mud/cement	5200
region	28	mud/wood	41805
region	28	other	409
region	28	tin	62
region	28	wood only	15919
region	14	brick/block	28030
region	14	corrugated iron sheets	2544
region	14	grass/reeds	458
region	14	mud/cement	3860
region	14	mud/wood	37605
region	14	other	3379
region	14	tin	89
region	14	wood only	33149
region	7	brick/block	12771
region	7	corrugated iron sheets	923
region	7	grass/reeds	42429
region	7	mud/cement	9217
region	7	mud/wood	19218
region	7	other	693
region	7	tin	307
region	7	wood only	8106
region	43	brick/block	17676
region	43	corrugated iron sheets	11533
region	43	grass/reeds	359
region	43	mud/cement	33897
region	43	mud/wood	135139
region	43	other	1318
region	43	tin	279
region	43	wood only	576
region	11	brick/block	2090
region	11	corrugated iron sheets	380
region	11	grass/reeds	5491
region	11	mud/cement	1144
region	11	mud/wood	9850
region	11	other	642
region	11	tin	1518
region	11	wood only	6970
region	34	brick/block	13104
region	34	corrugated iron sheets	45926
region	34	grass/reeds	3587
region	34	mud/cement	5763
region	34	mud/wood	39264
region	34	other	2402
region	34	tin	863
region	34	wood only	14315
region	37	brick/block	48365
region	37	corrugated iron sheets	941
region	37	grass/reeds	264
region	37	mud/cement	36471
region	37	mud/wood	264801
region	37	other	989
region	37	tin	78
region	37	wood only	708
region	35	brick/block	17026
region	35	corrugated iron sheets	7600
region	35	grass/reeds	91
region	35	mud/cement	9746
region	35	mud/wood	62362
region	35	other	1011
region	35	tin	132
region	35	wood only	15786
region	22	brick/block	29659
region	22	corrugated iron sheets	118797
region	22	grass/reeds	158
region	22	mud/cement	6421
region	22	mud/wood	23682
region	22	other	712
region	22	tin	3034
region	22	wood only	68284
region	3	brick/block	45805
region	3	corrugated iron sheets	645
region	3	grass/reeds	2645
region	3	mud/cement	16157
region	3	mud/wood	106284
region	3	other	535
region	3	tin	157
region	3	wood only	4281
region	20	brick/block	25880
region	20	corrugated iron sheets	2626
region	20	grass/reeds	957
region	20	mud/cement	4617
region	20	mud/wood	28517
region	20	other	757
region	20	tin	156
region	20	wood only	53075
region	45	brick/block	51676
region	45	corrugated iron sheets	1860
region	45	grass/reeds	187
region	45	mud/cement	21297
region	45	mud/wood	189596
region	45	other	1440
region	45	tin	85
region	45	wood only	857
region	42	brick/block	47969
region	42	corrugated iron sheets	6935
region	42	grass/reeds	146
region	42	mud/cement	48071
region	42	mud/wood	112223
region	42	other	2516
region	42	tin	382
region	42	wood only	482
region	15	brick/block	131432
region	15	corrugated iron sheets	343
region	15	grass/reeds	881
region	15	mud/cement	12953
region	15	mud/wood	52452
region	15	other	368
region	15	tin	79
region	15	wood only	2000
region	2	brick/block	17675
region	2	corrugated iron sheets	373
region	2	grass/reeds	2699
region	2	mud/cement	11944
region	2	mud/wood	69208
region	2	other	667
region	2	tin	76
region	2	wood only	483
region	31	brick/block	2933
region	31	corrugated iron sheets	2928
region	31	grass/reeds	464
region	31	mud/cement	3186
region	31	mud/wood	30105
region	31	other	1049
region	31	tin	111
region	31	wood only	47459
region	5	brick/block	4158
region	5	corrugated iron sheets	84
region	5	grass/reeds	1476
region	5	mud/cement	3069
region	5	mud/wood	10332
region	5	other	323
region	5	tin	28
region	5	wood only	150
region	16	brick/block	161931
region	16	corrugated iron sheets	18602
region	16	grass/reeds	298
region	16	mud/cement	4811
region	16	mud/wood	11002
region	16	other	350
region	16	tin	339
region	16	wood only	1235
region	17	brick/block	135293
region	17	corrugated iron sheets	960
region	17	grass/reeds	400
region	17	mud/cement	7158
region	17	mud/wood	36850
region	17	other	118
region	17	tin	61
region	17	wood only	668
region	9	brick/block	5745
region	9	corrugated iron sheets	309
region	9	grass/reeds	79903
region	9	mud/cement	2403
region	9	mud/wood	7494
region	9	other	3054
region	9	tin	124
region	9	wood only	22898
region	10	brick/block	2821
region	10	corrugated iron sheets	589
region	10	grass/reeds	6847
region	10	mud/cement	6067
region	10	mud/wood	17019
region	10	other	15948
region	10	tin	1919
region	10	wood only	4611
region	12	brick/block	13443
region	12	corrugated iron sheets	1512
region	12	grass/reeds	2404
region	12	mud/cement	6760
region	12	mud/wood	76884
region	12	other	2459
region	12	tin	236
region	12	wood only	227889
region	44	brick/block	30770
region	44	corrugated iron sheets	2923
region	44	grass/reeds	228
region	44	mud/cement	27323
region	44	mud/wood	116088
region	44	other	276
region	44	tin	78
region	44	wood only	484
region	1	brick/block	109233
region	1	corrugated iron sheets	1724
region	1	grass/reeds	401
region	1	mud/cement	35229
region	1	mud/wood	27720
region	1	other	226
region	1	tin	262
region	1	wood only	582
region	21	brick/block	27457
region	21	corrugated iron sheets	35815
region	21	grass/reeds	180
region	21	mud/cement	6745
region	21	mud/wood	58882
region	21	other	1036
region	21	tin	5127
region	21	wood only	37132
region	47	brick/block	137375
region	47	corrugated iron sheets	264413
region	47	grass/reeds	431
region	47	mud/cement	52330
region	47	mud/wood	36809
region	47	other	955
region	47	tin	5850
region	47	wood only	18592
region	32	brick/block	23136
region	32	corrugated iron sheets	11816
region	32	grass/reeds	428
region	32	mud/cement	42592
region	32	mud/wood	137687
region	32	other	2693
region	32	tin	500
region	32	wood only	55420
region	29	brick/block	23211
region	29	corrugated iron sheets	1429
region	29	grass/reeds	92
region	29	mud/cement	22231
region	29	mud/wood	97633
region	29	other	720
region	29	tin	44
region	29	wood only	5525
region	33	brick/block	6607
region	33	corrugated iron sheets	4896
region	33	grass/reeds	1319
region	33	mud/cement	11923
region	33	mud/wood	115444
region	33	other	2339
region	33	tin	606
region	33	wood only	16479
region	46	brick/block	21176
region	46	corrugated iron sheets	282
region	46	grass/reeds	201
region	46	mud/cement	6697
region	46	mud/wood	76135
region	46	other	24
region	46	tin	26
region	46	wood only	671
region	18	brick/block	3763
region	18	corrugated iron sheets	4386
region	18	grass/reeds	51
region	18	mud/cement	4252
region	18	mud/wood	47580
region	18	other	1951
region	18	tin	134
region	15	stone	4904
region	18	wood only	61182
region	19	brick/block	9510
region	19	corrugated iron sheets	3001
region	19	grass/reeds	267
region	19	mud/cement	2602
region	19	mud/wood	20485
region	19	other	274
region	19	tin	405
region	19	wood only	121347
region	25	brick/block	1359
region	25	corrugated iron sheets	262
region	25	grass/reeds	2448
region	25	mud/cement	6197
region	25	mud/wood	28057
region	25	other	2569
region	25	tin	1202
region	25	wood only	3520
region	41	brick/block	26766
region	41	corrugated iron sheets	811
region	41	grass/reeds	260
region	41	mud/cement	38390
region	41	mud/wood	126728
region	41	other	1903
region	41	tin	116
region	41	wood only	343
region	6	brick/block	30474
region	6	corrugated iron sheets	616
region	6	grass/reeds	354
region	6	mud/cement	6177
region	6	mud/wood	27940
region	6	other	376
region	6	tin	76
region	6	wood only	888
region	4	brick/block	2705
region	4	corrugated iron sheets	330
region	4	grass/reeds	13961
region	4	mud/cement	3896
region	4	mud/wood	19429
region	4	other	280
region	4	tin	56
region	4	wood only	5722
region	13	brick/block	3316
region	13	corrugated iron sheets	70
region	13	grass/reeds	105
region	13	mud/cement	1993
region	13	mud/wood	19839
region	13	other	84
region	13	tin	6
region	13	wood only	580
region	26	brick/block	26728
region	26	corrugated iron sheets	748
region	26	grass/reeds	179
region	26	mud/cement	21857
region	26	mud/wood	115572
region	26	other	987
region	26	tin	76
region	26	wood only	1109
region	23	brick/block	4969
region	23	corrugated iron sheets	773
region	23	grass/reeds	33318
region	23	mud/cement	4858
region	23	mud/wood	30909
region	23	other	9775
region	23	tin	1003
region	23	wood only	36611
region	27	brick/block	51138
region	27	corrugated iron sheets	5244
region	27	grass/reeds	221
region	27	mud/cement	24850
region	27	mud/wood	91857
region	27	other	2764
region	27	tin	254
region	27	wood only	13632
region	38	brick/block	18807
region	38	corrugated iron sheets	141
region	38	grass/reeds	32
region	38	mud/cement	12403
region	38	mud/wood	90495
region	38	other	225
region	38	tin	28
region	38	wood only	156
region	8	brick/block	2370
region	8	corrugated iron sheets	155
region	8	grass/reeds	54588
region	8	mud/cement	981
region	8	mud/wood	2567
region	8	other	164
region	8	tin	49
region	8	wood only	6477
region	24	brick/block	4769
region	24	corrugated iron sheets	262
region	24	grass/reeds	594
region	24	mud/cement	9847
region	24	mud/wood	74815
region	24	other	266
region	24	tin	49
region	24	wood only	2787
region	30	stone	5646
region	36	stone	7261
region	39	stone	4013
region	40	stone	2874
region	28	stone	7313
region	14	stone	22084
region	7	stone	4606
region	43	stone	5331
region	11	stone	3220
region	34	stone	47839
region	37	stone	2758
region	35	stone	13471
region	22	stone	231040
region	3	stone	21342
region	20	stone	37396
region	45	stone	2456
region	42	stone	7413
region	2	stone	18566
region	31	stone	14846
region	5	stone	2393
region	16	stone	65774
region	17	stone	4772
region	9	stone	3541
region	10	stone	890
region	12	stone	48918
region	44	stone	1800
region	1	stone	81877
region	21	stone	69958
region	47	stone	466360
region	32	stone	134825
region	29	stone	2004
region	33	stone	9454
region	46	stone	853
region	18	stone	19194
region	19	stone	43462
region	25	stone	1617
region	41	stone	3347
region	6	stone	3138
region	4	stone	895
region	13	stone	1396
region	26	stone	2376
region	23	stone	719
region	27	stone	11656
region	38	stone	954
region	8	stone	3575
region	24	stone	360
\.


--
-- Name: maintypeofwallmaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY maintypeofwallmaterial
    ADD CONSTRAINT maintypeofwallmaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of wall material");


--
-- PostgreSQL database dump complete
--

