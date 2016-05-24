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

ALTER TABLE IF EXISTS ONLY public.employmentactivitystatus_sex DROP CONSTRAINT IF EXISTS employmentactivitystatus_sex_pkey;
DROP TABLE IF EXISTS public.employmentactivitystatus_sex;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employmentactivitystatus_sex; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE employmentactivitystatus_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "employment activity status" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: employmentactivitystatus_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY employmentactivitystatus_sex (geo_level, geo_code, "employment activity status", sex, total) FROM stdin;
region	7	economically inactive	female	91650
region	7	economically inactive	male	60952
region	7	employed	female	45518
region	7	employed	male	87187
region	7	employment unclassified	female	31600
region	7	employment unclassified	male	35682
region	7	seeking work / no work available	female	75506
region	11	economically inactive	female	29580
region	11	economically inactive	male	19773
region	11	employed	female	21966
region	11	employed	male	32430
region	11	employment unclassified	female	2469
region	11	employment unclassified	male	2995
region	11	seeking work / no work available	female	4011
region	11	seeking work / no work available	male	5232
region	14	economically inactive	female	75339
region	14	economically inactive	male	60169
region	14	employed	female	135987
region	14	employed	male	141061
region	14	employment unclassified	female	7865
region	14	employment unclassified	male	7962
region	14	seeking work / no work available	female	9240
region	20	economically inactive	female	77475
region	20	economically inactive	male	70180
region	20	employed	female	149981
region	20	employed	male	148860
region	20	employment unclassified	female	5775
region	20	employment unclassified	male	5414
region	20	seeking work / no work available	female	5059
region	20	seeking work / no work available	male	5318
region	40	economically inactive	female	107984
region	40	economically inactive	male	95308
region	40	employed	female	181388
region	40	employed	male	162143
region	40	employment unclassified	female	18700
region	40	employment unclassified	male	18340
region	40	seeking work / no work available	female	12672
region	40	seeking work / no work available	male	11805
region	22	economically inactive	female	346243
region	22	economically inactive	male	249589
region	22	employed	female	334977
region	22	employed	male	409108
region	22	employment unclassified	female	19188
region	22	employment unclassified	male	17438
region	22	seeking work / no work available	female	38958
region	28	economically inactive	female	79831
region	28	economically inactive	male	61120
region	28	employed	female	62897
region	28	employed	male	75895
region	28	employment unclassified	female	7927
region	28	employment unclassified	male	8073
region	28	seeking work / no work available	female	5095
region	28	seeking work / no work available	male	7481
region	30	economically inactive	female	121166
region	30	economically inactive	male	89656
region	30	employed	female	84223
region	30	employed	male	106126
region	30	employment unclassified	female	12437
region	30	employment unclassified	male	18154
region	30	seeking work / no work available	female	13576
region	34	economically inactive	female	156840
region	34	economically inactive	male	105132
region	34	employed	female	100033
region	34	employed	male	148926
region	34	employment unclassified	female	10263
region	34	employment unclassified	male	9936
region	34	seeking work / no work available	female	19257
region	34	seeking work / no work available	male	21042
region	35	economically inactive	female	100699
region	35	economically inactive	male	91281
region	35	employed	female	127056
region	35	employed	male	139723
region	35	employment unclassified	female	9770
region	35	employment unclassified	male	9790
region	35	seeking work / no work available	female	7534
region	36	economically inactive	female	151105
region	36	economically inactive	male	144033
region	36	employed	female	202342
region	36	employed	male	197820
region	36	employment unclassified	female	16505
region	36	employment unclassified	male	16581
region	36	seeking work / no work available	female	6207
region	36	seeking work / no work available	male	7605
region	37	economically inactive	female	281467
region	37	economically inactive	male	242050
region	37	employed	female	359333
region	37	employed	male	338187
region	37	employment unclassified	female	35149
region	37	employment unclassified	male	34657
region	37	seeking work / no work available	female	36492
region	37	seeking work / no work available	male	37125
region	39	economically inactive	female	209865
region	39	economically inactive	male	191291
region	39	employed	female	323073
region	39	employed	male	308149
region	39	employment unclassified	female	27697
region	39	employment unclassified	male	27236
region	39	seeking work / no work available	female	18116
region	43	economically inactive	female	161767
region	43	economically inactive	male	147037
region	43	employed	female	207466
region	43	employed	male	185908
region	43	employment unclassified	female	20433
region	43	employment unclassified	male	19889
region	43	seeking work / no work available	female	23429
region	43	seeking work / no work available	male	20313
region	45	economically inactive	female	209595
region	45	economically inactive	male	205434
region	45	employed	female	306267
region	45	employed	male	251369
region	2	economically inactive	female	156110
region	2	economically inactive	male	111685
region	2	employed	female	93362
region	2	employed	male	113403
region	2	employment unclassified	female	7525
region	2	employment unclassified	male	7314
region	2	seeking work / no work available	female	17473
region	2	seeking work / no work available	male	22630
region	5	economically inactive	female	18395
region	5	economically inactive	male	10593
region	5	employed	female	17711
region	5	employed	male	28331
region	5	employment unclassified	female	2887
region	5	employment unclassified	male	3212
region	5	seeking work / no work available	female	1476
region	9	economically inactive	female	178676
region	9	economically inactive	male	154258
region	9	employed	female	112641
region	9	employed	male	194734
region	9	employment unclassified	female	30135
region	9	employment unclassified	male	35942
region	9	seeking work / no work available	female	72459
region	9	seeking work / no work available	male	99972
region	10	economically inactive	female	56360
region	10	economically inactive	male	30986
region	10	employed	female	42275
region	10	employed	male	71951
region	10	employment unclassified	female	10221
region	10	employment unclassified	male	11437
region	10	seeking work / no work available	female	8610
region	12	economically inactive	female	272712
region	12	economically inactive	male	219699
region	12	employed	female	372542
region	12	employed	male	397306
region	12	employment unclassified	female	26531
region	12	employment unclassified	male	26720
region	12	seeking work / no work available	female	22672
region	12	seeking work / no work available	male	26730
region	15	economically inactive	female	225825
region	15	economically inactive	male	174380
region	15	employed	female	177456
region	15	employed	male	174406
region	15	employment unclassified	female	20681
region	15	employment unclassified	male	19888
region	15	seeking work / no work available	female	26241
region	16	economically inactive	female	259330
region	16	economically inactive	male	187415
region	16	employed	female	182069
region	16	employed	male	230980
region	16	employment unclassified	female	21186
region	16	employment unclassified	male	21008
region	16	seeking work / no work available	female	19147
region	16	seeking work / no work available	male	26349
region	17	economically inactive	female	243658
region	17	economically inactive	male	186066
region	17	employed	female	124015
region	17	employed	male	148453
region	17	employment unclassified	female	10524
region	17	employment unclassified	male	10316
region	17	seeking work / no work available	female	12096
region	17	seeking work / no work available	male	18700
region	21	economically inactive	female	168660
region	21	economically inactive	male	143205
region	21	employed	female	221099
region	21	employed	male	213306
region	21	employment unclassified	female	7661
region	21	employment unclassified	male	7893
region	21	seeking work / no work available	female	9009
region	31	economically inactive	female	78306
region	31	economically inactive	male	59632
region	31	employed	female	73805
region	31	employed	male	85723
region	31	employment unclassified	female	8081
region	31	employment unclassified	male	8277
region	31	seeking work / no work available	female	10838
region	31	seeking work / no work available	male	12970
region	32	economically inactive	female	298773
region	32	economically inactive	male	240432
region	32	employed	female	310256
region	32	employed	male	365594
region	32	employment unclassified	female	26367
region	32	employment unclassified	male	25615
region	32	seeking work / no work available	female	41244
region	42	economically inactive	female	205790
region	42	economically inactive	male	167986
region	42	employed	female	165899
region	42	employed	male	181313
region	42	employment unclassified	female	16431
region	42	employment unclassified	male	15601
region	42	seeking work / no work available	female	24337
region	44	economically inactive	female	143345
region	44	economically inactive	male	135462
region	44	employed	female	208282
region	44	employed	male	189157
region	44	employment unclassified	female	16780
region	44	employment unclassified	male	16268
region	44	seeking work / no work available	female	14664
region	44	seeking work / no work available	male	12405
region	45	employment unclassified	female	25394
region	45	employment unclassified	male	24462
region	45	seeking work / no work available	female	12455
region	45	seeking work / no work available	male	12387
region	47	economically inactive	female	552949
region	47	economically inactive	male	357700
region	47	employed	female	562550
region	47	employed	male	848679
region	47	employment unclassified	female	80281
region	47	employment unclassified	male	68295
region	47	seeking work / no work available	female	131955
region	6	economically inactive	female	58149
region	6	economically inactive	male	41810
region	6	employed	female	51973
region	6	employed	male	67920
region	6	employment unclassified	female	3931
region	6	employment unclassified	male	4228
region	6	seeking work / no work available	female	4905
region	6	seeking work / no work available	male	6927
region	8	economically inactive	female	92518
region	8	economically inactive	male	74270
region	8	employed	female	73429
region	8	employed	male	122893
region	8	employment unclassified	female	27004
region	8	employment unclassified	male	32387
region	8	seeking work / no work available	female	59853
region	13	economically inactive	female	17968
region	13	economically inactive	male	15543
region	13	employed	female	35735
region	13	employed	male	33639
region	13	employment unclassified	female	1657
region	13	employment unclassified	male	1600
region	13	seeking work / no work available	female	1578
region	13	seeking work / no work available	male	1475
region	18	economically inactive	female	109293
region	18	economically inactive	male	100673
region	18	employed	female	141447
region	18	employed	male	134559
region	18	employment unclassified	female	6878
region	18	employment unclassified	male	6975
region	18	seeking work / no work available	female	5230
region	19	economically inactive	female	133645
region	19	economically inactive	male	108726
region	19	employed	female	167919
region	19	employed	male	173014
region	19	employment unclassified	female	5903
region	19	employment unclassified	male	5824
region	19	seeking work / no work available	female	8319
region	19	seeking work / no work available	male	9914
region	25	economically inactive	female	30840
region	25	economically inactive	male	20012
region	25	employed	female	38202
region	25	employed	male	46446
region	25	employment unclassified	female	12747
region	25	employment unclassified	male	13693
region	25	seeking work / no work available	female	8660
region	23	economically inactive	female	88634
region	23	economically inactive	male	55721
region	23	employed	female	161343
region	23	employed	male	203342
region	23	employment unclassified	female	60866
region	23	employment unclassified	male	72985
region	23	seeking work / no work available	female	43415
region	23	seeking work / no work available	male	51665
region	24	economically inactive	female	87619
region	24	economically inactive	male	66029
region	26	economically inactive	female	171479
region	26	economically inactive	male	139081
region	26	employed	female	139432
region	26	employed	male	163549
region	26	employment unclassified	female	10524
region	26	employment unclassified	male	10213
region	26	seeking work / no work available	female	19892
region	26	seeking work / no work available	male	20468
region	27	economically inactive	female	198922
region	27	economically inactive	male	144024
region	27	employed	female	121173
region	27	employed	male	173910
region	27	employment unclassified	female	31220
region	27	employment unclassified	male	29314
region	27	seeking work / no work available	female	24978
region	29	economically inactive	female	157441
region	29	economically inactive	male	124631
region	29	employed	female	133650
region	29	employed	male	162599
region	29	employment unclassified	female	15095
region	29	employment unclassified	male	15403
region	29	seeking work / no work available	female	8771
region	29	seeking work / no work available	male	10505
region	32	seeking work / no work available	male	42395
region	33	economically inactive	female	137235
region	33	economically inactive	male	104109
region	33	employed	female	162664
region	33	employed	male	194267
region	33	employment unclassified	female	24818
region	33	employment unclassified	male	27378
region	33	seeking work / no work available	female	13179
region	38	economically inactive	female	114550
region	38	economically inactive	male	94385
region	38	employed	female	106219
region	38	employed	male	95604
region	38	employment unclassified	female	10870
region	38	employment unclassified	male	10658
region	38	seeking work / no work available	female	17025
region	38	seeking work / no work available	male	17996
region	41	economically inactive	female	141486
region	41	economically inactive	male	123269
region	41	employed	female	198561
region	41	employed	male	172400
region	41	employment unclassified	female	16947
region	41	employment unclassified	male	16195
region	41	seeking work / no work available	female	15002
region	46	economically inactive	female	86652
region	46	economically inactive	male	85942
region	46	employed	female	116913
region	46	employed	male	98750
region	46	employment unclassified	female	6047
region	46	employment unclassified	male	5902
region	46	seeking work / no work available	female	3675
region	46	seeking work / no work available	male	3852
region	1	economically inactive	female	207767
region	1	economically inactive	male	122080
region	1	employed	female	121216
region	1	employed	male	231152
region	1	employment unclassified	female	17087
region	1	employment unclassified	male	14812
region	1	seeking work / no work available	female	39565
region	1	seeking work / no work available	male	44482
region	3	economically inactive	female	249565
region	3	economically inactive	male	180864
region	3	employed	female	172688
region	3	employed	male	196490
region	3	employment unclassified	female	24889
region	3	employment unclassified	male	23518
region	3	seeking work / no work available	female	28974
region	3	seeking work / no work available	male	33962
region	4	economically inactive	female	44495
region	4	economically inactive	male	23198
region	4	employed	female	34930
region	4	employed	male	51451
region	4	employment unclassified	female	7382
region	4	employment unclassified	male	7858
region	4	seeking work / no work available	female	9621
region	4	seeking work / no work available	male	12217
region	5	seeking work / no work available	male	2096
region	7	seeking work / no work available	male	100900
region	8	seeking work / no work available	male	83840
region	10	seeking work / no work available	male	11929
region	14	seeking work / no work available	male	10148
region	15	seeking work / no work available	male	27913
region	18	seeking work / no work available	male	6827
region	25	seeking work / no work available	male	9465
region	21	seeking work / no work available	male	12905
region	22	seeking work / no work available	male	42702
region	24	employed	female	95502
region	24	employed	male	108653
region	24	employment unclassified	female	12896
region	24	employment unclassified	male	14171
region	24	seeking work / no work available	female	13453
region	24	seeking work / no work available	male	16001
region	27	seeking work / no work available	male	28399
region	30	seeking work / no work available	male	16772
region	33	seeking work / no work available	male	14017
region	35	seeking work / no work available	male	8223
region	39	seeking work / no work available	male	17991
region	41	seeking work / no work available	male	13483
region	42	seeking work / no work available	male	22109
region	47	seeking work / no work available	male	111317
country	TZ	economically inactive	female	7187753
country	TZ	economically inactive	male	5636871
country	TZ	employed	female	7379465
country	TZ	employed	male	8406866
country	TZ	employment unclassified	female	833224
country	TZ	employment unclassified	male	847509
country	TZ	seeking work / no work available	female	1025923
country	TZ	seeking work / no work available	male	1160959
\.


--
-- Name: employmentactivitystatus_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY employmentactivitystatus_sex
    ADD CONSTRAINT employmentactivitystatus_sex_pkey PRIMARY KEY (geo_level, geo_code, "employment activity status", sex);


--
-- PostgreSQL database dump complete
--

