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

ALTER TABLE IF EXISTS ONLY public.schoolattendance_sex DROP CONSTRAINT IF EXISTS schoolattendance_sex_pkey;
DROP TABLE IF EXISTS public.schoolattendance_sex;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schoolattendance_sex; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schoolattendance_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: schoolattendance_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schoolattendance_sex (geo_level, geo_code, "school attendance", sex, total) FROM stdin;
country	TZ	at school	male	14579976
country	TZ	left school	male	14149928
country	TZ	never attended	male	5317852
country	TZ	unspecified	male	774668
country	TZ	at school	female	13646608
country	TZ	left school	female	14315758
country	TZ	never attended	female	6798986
country	TZ	unspecified	female	587326
region	2	at school	male	121867
region	2	left school	male	94236
region	2	never attended	male	59303
region	2	unspecified	male	5619
region	3	at school	male	223846
region	3	left school	male	166620
region	3	never attended	male	75632
region	3	unspecified	male	11678
region	5	at school	male	18413
region	5	left school	male	20403
region	5	never attended	male	8152
region	5	unspecified	male	1411
region	7	at school	male	84871
region	7	left school	male	29944
region	7	never attended	male	184831
region	7	unspecified	male	9350
region	9	at school	male	191251
region	9	left school	male	39629
region	9	never attended	male	284712
region	9	unspecified	male	7371
region	10	at school	male	40742
region	10	left school	male	15698
region	10	never attended	male	78596
region	10	unspecified	male	2730
region	11	at school	male	23221
region	11	left school	male	16982
region	11	never attended	male	24643
region	11	unspecified	male	1835
region	12	at school	male	270391
region	12	left school	male	346260
region	12	never attended	male	86133
region	12	unspecified	male	17947
region	14	at school	male	90118
region	14	left school	male	120224
region	14	never attended	male	19457
region	14	unspecified	male	5114
region	15	at school	male	214922
region	15	left school	male	148151
region	15	never attended	male	61923
region	15	unspecified	male	7734
region	16	at school	male	212080
region	16	left school	male	243109
region	16	never attended	male	35574
region	16	unspecified	male	8508
region	17	at school	male	187877
region	17	left school	male	161764
region	17	never attended	male	37005
region	17	unspecified	male	6320
region	18	at school	male	123517
region	18	left school	male	125212
region	18	never attended	male	15650
region	18	unspecified	male	3653
region	20	at school	male	85265
region	20	left school	male	140821
region	20	never attended	male	13709
region	20	unspecified	male	3608
region	40	at school	male	156476
region	40	left school	male	116293
region	40	never attended	male	35187
region	40	unspecified	male	8596
region	21	at school	male	163644
region	21	left school	male	206083
region	21	never attended	male	25445
region	21	unspecified	male	6179
region	22	at school	male	286280
region	22	left school	male	436421
region	22	never attended	male	31046
region	22	unspecified	male	10298
region	28	at school	male	82359
region	28	left school	male	63332
region	28	never attended	male	16867
region	28	unspecified	male	2774
region	29	at school	male	159912
region	29	left school	male	147090
region	29	never attended	male	25949
region	29	unspecified	male	6296
region	30	at school	male	111827
region	30	left school	male	71451
region	30	never attended	male	64688
region	30	unspecified	male	3808
region	31	at school	male	75202
region	31	left school	male	78029
region	31	never attended	male	23345
region	31	unspecified	male	4817
region	32	at school	male	318392
region	32	left school	male	345560
region	32	never attended	male	51628
region	32	unspecified	male	15948
region	33	at school	male	157552
region	33	left school	male	114296
region	33	never attended	male	94955
region	33	unspecified	male	10761
region	34	at school	male	119125
region	34	left school	male	127006
region	34	never attended	male	57831
region	34	unspecified	male	7413
region	35	at school	male	124769
region	35	left school	male	120947
region	35	never attended	male	18477
region	35	unspecified	male	6290
region	36	at school	male	195328
region	36	left school	male	164091
region	36	never attended	male	29742
region	36	unspecified	male	8706
region	37	at school	male	333524
region	37	left school	male	284668
region	37	never attended	male	77912
region	37	unspecified	male	17310
region	39	at school	male	298735
region	39	left school	male	230738
region	39	never attended	male	55238
region	39	unspecified	male	11858
region	42	at school	male	203863
region	42	left school	male	185579
region	42	never attended	male	22354
region	42	unspecified	male	13580
region	43	at school	male	225500
region	43	left school	male	150338
region	43	never attended	male	24705
region	43	unspecified	male	8574
region	44	at school	male	209890
region	44	left school	male	142722
region	44	never attended	male	28076
region	44	unspecified	male	9238
region	45	at school	male	278075
region	45	left school	male	213054
region	45	never attended	male	35868
region	45	unspecified	male	12197
region	46	at school	male	104631
region	46	left school	male	89613
region	46	never attended	male	13706
region	46	unspecified	male	3152
region	47	at school	male	484427
region	47	left school	male	898849
region	47	never attended	male	58191
region	47	unspecified	male	38858
region	3	at school	female	207161
region	3	left school	female	139580
region	3	never attended	female	160240
region	3	unspecified	female	10035
region	4	at school	male	36950
region	4	left school	male	24632
region	4	never attended	male	41606
region	4	unspecified	male	1874
region	5	at school	female	16424
region	5	left school	female	16398
region	5	never attended	female	10275
region	5	unspecified	female	910
region	6	at school	male	51013
region	6	left school	male	64912
region	6	never attended	male	11038
region	6	unspecified	male	6933
region	7	at school	female	57967
region	7	left school	female	18269
region	7	never attended	female	181825
region	7	unspecified	female	6721
region	8	at school	male	99266
region	8	left school	male	29665
region	8	never attended	male	203669
region	8	unspecified	male	6481
region	11	at school	female	20948
region	11	left school	female	12996
region	11	never attended	female	28452
region	11	unspecified	female	781
region	13	at school	male	25395
region	13	left school	male	22532
region	13	never attended	male	7848
region	13	unspecified	male	775
region	14	at school	female	89150
region	14	left school	female	118331
region	14	never attended	female	31447
region	14	unspecified	female	3895
region	15	at school	female	207249
region	15	left school	female	171827
region	15	never attended	female	99252
region	16	at school	female	199404
region	16	left school	female	250784
region	16	never attended	female	55578
region	16	unspecified	female	6301
region	17	at school	female	177951
region	19	at school	male	125874
region	19	left school	male	172081
region	19	never attended	male	13014
region	19	unspecified	male	5916
region	20	at school	female	82572
region	20	left school	female	137731
region	20	never attended	female	27844
region	20	unspecified	female	2330
region	25	at school	male	31103
region	25	left school	male	13646
region	25	never attended	male	52707
region	25	unspecified	male	2116
region	40	at school	female	148301
region	40	left school	female	132907
region	40	never attended	female	59575
region	40	unspecified	female	7312
region	22	at school	female	283008
region	22	left school	female	436749
region	22	never attended	female	53833
region	22	unspecified	female	9288
region	23	at school	male	74742
region	23	left school	male	23498
region	23	never attended	male	305995
region	23	unspecified	male	10031
region	24	at school	male	82804
region	24	left school	male	39942
region	24	never attended	male	98870
region	24	unspecified	male	3995
region	26	at school	male	168612
region	26	left school	male	148491
region	26	never attended	male	39269
region	26	unspecified	male	8003
region	27	at school	male	186421
region	27	left school	male	180459
region	27	never attended	male	27666
region	27	unspecified	male	13308
region	28	at school	female	79688
region	28	left school	female	63509
region	28	never attended	female	22608
region	28	unspecified	female	2575
region	30	at school	female	105437
region	30	left school	female	70993
region	30	never attended	female	71016
region	30	unspecified	female	2967
region	31	at school	female	70751
region	31	left school	female	76011
region	31	never attended	female	34000
region	31	unspecified	female	2901
region	34	at school	female	110961
region	34	left school	female	113589
region	34	never attended	female	80594
region	35	at school	female	116375
region	35	left school	female	116015
region	35	never attended	female	27234
region	35	unspecified	female	4817
region	36	at school	female	183299
region	36	left school	female	170290
region	36	never attended	female	44822
region	36	unspecified	female	8193
region	37	at school	female	325039
region	37	left school	female	321980
region	37	never attended	female	110074
region	37	unspecified	female	14562
region	38	at school	male	113537
region	38	left school	male	97565
region	38	never attended	male	21596
region	38	unspecified	male	4129
region	39	at school	female	284434
region	39	left school	female	263111
region	39	never attended	female	70870
region	39	unspecified	female	10888
region	41	at school	male	171257
region	41	left school	male	145636
region	41	never attended	male	30181
region	41	unspecified	male	8267
region	42	at school	female	192916
region	42	left school	female	202528
region	42	never attended	female	42216
region	42	unspecified	female	7958
region	43	at school	female	202153
region	43	left school	female	188355
region	43	never attended	female	49350
region	43	unspecified	female	8702
region	45	at school	female	261919
region	45	left school	female	259422
region	45	never attended	female	64583
region	45	unspecified	female	11741
region	1	at school	male	145122
region	1	left school	male	256692
region	1	never attended	male	28937
region	1	unspecified	male	15975
region	1	at school	female	140747
region	1	left school	female	217170
region	1	never attended	female	46086
region	1	unspecified	female	9433
region	2	at school	female	112517
region	2	left school	female	78655
region	2	never attended	female	103738
region	2	unspecified	female	4536
region	4	at school	female	30439
region	4	left school	female	19622
region	4	never attended	female	54593
region	4	unspecified	female	1438
region	6	at school	female	48372
region	6	left school	female	59282
region	6	never attended	female	17187
region	6	unspecified	female	3256
region	8	at school	female	66236
region	8	left school	female	16005
region	8	never attended	female	189056
region	8	unspecified	female	3802
region	9	at school	female	135154
region	9	left school	female	23368
region	9	never attended	female	265814
region	9	unspecified	female	5085
region	10	at school	female	33918
region	10	left school	female	9586
region	10	never attended	female	82752
region	10	unspecified	female	1384
region	12	at school	female	270674
region	12	left school	female	338970
region	12	never attended	female	117716
region	12	unspecified	female	13754
region	13	at school	female	25098
region	13	left school	female	23094
region	13	never attended	female	12256
region	13	unspecified	female	729
region	15	unspecified	female	5277
region	17	left school	female	177543
region	17	never attended	female	57343
region	17	unspecified	female	4009
region	18	at school	female	118192
region	18	left school	female	133197
region	18	never attended	female	26387
region	18	unspecified	female	3222
region	19	at school	female	120154
region	19	left school	female	183327
region	19	never attended	female	24983
region	19	unspecified	female	3409
region	25	at school	female	25014
region	25	left school	female	9974
region	25	never attended	female	63516
region	25	unspecified	female	1092
region	21	at school	female	155549
region	21	left school	female	221178
region	21	never attended	female	46992
region	21	unspecified	female	5019
region	23	at school	female	58804
region	23	left school	female	17211
region	23	never attended	female	297540
region	23	unspecified	female	7564
region	24	at school	female	75523
region	24	left school	female	35690
region	24	never attended	female	114560
region	24	unspecified	female	3617
region	26	at school	female	161152
region	26	left school	female	153592
region	26	never attended	female	49323
region	26	unspecified	female	5851
region	27	at school	female	181150
region	27	left school	female	177522
region	27	never attended	female	36404
region	27	unspecified	female	9694
region	29	at school	female	152881
region	29	left school	female	147118
region	29	never attended	female	34849
region	29	unspecified	female	5465
region	32	at school	female	300742
region	32	left school	female	343244
region	32	never attended	female	72949
region	32	unspecified	female	10846
region	33	at school	female	138785
region	33	left school	female	101282
region	33	never attended	female	124728
region	33	unspecified	female	7677
region	34	unspecified	female	4204
region	38	at school	female	112411
region	38	left school	female	119387
region	38	never attended	female	30446
region	38	unspecified	female	4078
region	41	at school	female	159208
region	41	left school	female	173592
region	41	never attended	female	60846
region	41	unspecified	female	7182
region	44	at school	female	190347
region	44	left school	female	170717
region	44	never attended	female	48939
region	44	unspecified	female	8557
region	46	at school	female	99258
region	46	left school	female	104435
region	46	never attended	female	22252
region	46	unspecified	female	3304
region	47	at school	female	487872
region	47	left school	female	821743
region	47	never attended	female	72550
region	47	unspecified	female	27302
\.


--
-- Name: schoolattendance_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schoolattendance_sex
    ADD CONSTRAINT schoolattendance_sex_pkey PRIMARY KEY (geo_level, geo_code, "school attendance", sex);


--
-- PostgreSQL database dump complete
--

