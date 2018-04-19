--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

-- Started on 2018-04-19 22:54:34 WIB

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 186 (class 1259 OID 21703)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: denis
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO denis;

--
-- TOC entry 182 (class 1259 OID 21675)
-- Name: events; Type: TABLE; Schema: public; Owner: denis
--

CREATE TABLE events (
    id bigint NOT NULL,
    judul character varying,
    lokasi character varying,
    keterangan character varying,
    harga numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone,
    ticket character varying,
    ticket1 character varying,
    harga1 numeric,
    ticket2 character varying,
    harga2 numeric,
    ticket3 character varying,
    harga3 numeric,
    ticket4 character varying,
    harga4 numeric,
    ticket5 character varying,
    harga5 numeric,
    ticket6 character varying,
    harga6 numeric,
    ticket7 character varying,
    harga7 numeric,
    tanggal timestamp without time zone,
    user_id integer
);


ALTER TABLE events OWNER TO denis;

--
-- TOC entry 181 (class 1259 OID 21673)
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: denis
--

CREATE SEQUENCE events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE events_id_seq OWNER TO denis;

--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 181
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: denis
--

ALTER SEQUENCE events_id_seq OWNED BY events.id;


--
-- TOC entry 185 (class 1259 OID 21695)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: denis
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO denis;

--
-- TOC entry 184 (class 1259 OID 21686)
-- Name: users; Type: TABLE; Schema: public; Owner: denis
--

CREATE TABLE users (
    id bigint NOT NULL,
    provider character varying,
    uid character varying,
    name character varying,
    token character varying,
    secret character varying,
    profile_image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE users OWNER TO denis;

--
-- TOC entry 183 (class 1259 OID 21684)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: denis
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO denis;

--
-- TOC entry 2176 (class 0 OID 0)
-- Dependencies: 183
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: denis
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- TOC entry 2037 (class 2604 OID 21678)
-- Name: id; Type: DEFAULT; Schema: public; Owner: denis
--

ALTER TABLE ONLY events ALTER COLUMN id SET DEFAULT nextval('events_id_seq'::regclass);


--
-- TOC entry 2038 (class 2604 OID 21689)
-- Name: id; Type: DEFAULT; Schema: public; Owner: denis
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- TOC entry 2166 (class 0 OID 21703)
-- Dependencies: 186
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: denis
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-04-17 17:52:05.37638	2018-04-17 17:52:05.37638
\.


--
-- TOC entry 2162 (class 0 OID 21675)
-- Dependencies: 182
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: denis
--

COPY events (id, judul, lokasi, keterangan, harga, created_at, updated_at, image_file_name, image_content_type, image_file_size, image_updated_at, ticket, ticket1, harga1, ticket2, harga2, ticket3, harga3, ticket4, harga4, ticket5, harga5, ticket6, harga6, ticket7, harga7, tanggal, user_id) FROM stdin;
12	Converse Disc 50%	Summarecon Mal Bekasi	Pada aksi button "Post to Twitter", server mengirimkan data text untuk di share di Twitter dengan spesifikasi berikut: "Please see my {event_name} here: {event_link}" Dimana {event_name} diganti dengan nama event dan {event_link} diganti dengan url link ke halaman detail Event tersebut	20000.0	2018-04-19 08:54:52.574358	2018-04-19 09:01:40.257212	event1.jpg	image/jpeg	8405	2018-04-19 09:01:39.655345	Regular		\N		\N		\N		\N	\N	\N		\N		\N	2018-06-16 15:00:00	1
5	LIBELS CUP 2K18	DBL ARENA SURABAYA	SHVR Ground Festival 2018 comes annually to satisfy your love for the dance music where you discover experiences you’ve never had before. Now, get yourself read	700000.0	2018-04-18 06:53:04.536302	2018-04-18 16:38:21.469796	even7.png	image/png	87200	2018-04-18 16:38:20.666823	Regular	VIP	1000000.0	VVIP	1500000.0		\N		\N	\N	\N		\N		\N	2018-08-06 16:38:00	\N
6	Event Konser	Balai Sarbini	Grab your Mickey ears and get ready for the ultimate Disney experience at Disney On Ice celebrates Everyone’s Story!  Be charmed by a cast of over 50 unforgettable Disney characters, with Mouse-ter of Ceremonies Mickey Mouse, his sweetheart Minnie Mouse, Donald Duck, Goofy and many of the Disney Princesses including Cinderella, Rapunzel, Ariel, Snow White and Tiana. Relive the magic of Disney’s Frozen with Anna, Elsa and the hilarious Olaf as they discover that true love is the greatest magic of all. Sing-along to over 30 unforgettable songs including favorites like “Let It Go,” “You’ve Got a Friend in Me,” and “Hakuna Matata.” Exciting moments from Disney•Pixar’s Toy Story, Finding Nemo, Disney’s The Lion King, Beauty and the Beast, Aladdin and more will leave the whole family captivated with memories that will last a lifetime. Experience the celebration of the century when Disney On Ice celebrates Everyone’s Story skates into your hometown!  	700000.0	2018-04-18 16:14:43.692646	2018-04-18 16:40:28.549083	okee.jpeg	image/jpeg	7518	2018-04-18 16:40:28.032212	Silver 1	Silver 2	850000.0	Bronze	1200000.0	Platinum	1400000.0	Diamond	\N	\N	\N		\N		\N	2018-03-05 23:40:00	\N
7	Seminar Teknologi	Hall UNJ	Are you a CEO, Chief of Staff, MD or Manager of a Team who needs to increase workplace engagement?\r\n\r\nor\r\n\r\n\r\nAre you an Entrepreneur, Start Up Owner or HR Executive that would like to create more revenue?\r\n\r\nor\r\n\r\n\r\nWho fits one of the two descriptions above and needs to be at this session?\r\n\r\n\r\nLet's join the ENGAGE & GROW seminar with ActionCOACH Surabaya and discover new opportunities in team engagement.\r\n\r\n	50000.0	2018-04-18 16:45:09.382677	2018-04-18 16:45:09.382677	event1.jpg	image/jpeg	8405	2018-04-18 16:45:08.85116	Regular	VIP	100000.0		\N		\N		\N	\N	\N		\N		\N	2018-03-06 01:44:00	\N
8	Slow Rock Event	Summarecon Mal Bekasi	konser slow rock with bon Jovi	1000000.0	2018-04-18 16:53:42.069376	2018-04-18 17:53:01.036444	okee.jpeg	image/jpeg	7518	2018-04-18 17:53:00.395324	Silver	Bronze	1500000.0	Platinum	2000000.0	Gold	2500000.0		\N	\N	\N		\N		\N	2018-05-04 00:00:00	\N
9	Slow Rock Event	Summarecon Mal Bekasi	konser slow rock and drink water mellow	1000000.0	2018-04-18 16:55:18.976897	2018-04-18 17:59:24.793156	okee.jpeg	image/jpeg	7518	2018-04-18 17:59:24.149199	Silver	Bronze	1200000.0	Platinum	1500000.0	Gold	1700000.0		\N	\N	\N		\N		\N	2018-12-19 20:00:00	\N
10	Indonesia Lawyer Club	Ballrom TvOne		50000.0	2018-04-18 18:02:24.645713	2018-04-18 18:02:24.645713	event5.jpeg	image/jpeg	12231	2018-04-18 18:02:24.045417	Presale		\N		\N		\N		\N	\N	\N		\N		\N	2018-06-15 03:00:00	\N
11	Rock Music Concert	Senayan		500000.0	2018-04-18 18:04:24.580445	2018-04-18 18:04:24.580445	even4.png	image/png	341499	2018-04-18 18:04:23.446951	Regular	Bronze	700000.0	Platinum	1000000.0	Gold	1200000.0		\N	\N	\N		\N		\N	2018-07-18 17:00:00	\N
\.


--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 181
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: denis
--

SELECT pg_catalog.setval('events_id_seq', 12, true);


--
-- TOC entry 2165 (class 0 OID 21695)
-- Dependencies: 185
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: denis
--

COPY schema_migrations (version) FROM stdin;
20180417161920
20180417070221
20180417073446
20180418054957
20180418162433
20180418162532
20180418163047
20180418163141
20180418173157
20180418173513
20180418182327
20180419064125
20180419075428
20180419075519
20180419084930
20180419085026
\.


--
-- TOC entry 2164 (class 0 OID 21686)
-- Dependencies: 184
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: denis
--

COPY users (id, provider, uid, name, token, secret, profile_image, created_at, updated_at) FROM stdin;
1	twitter	535905726	diomarciano	535905726-AapJkyRI3RcEoq2L9VtwMmclavDFRnV03uxyU5kW	enFIZKcu6Hg1z8GYe8hwNI5V4a6BHNpOh0OqCg7GdJQ8b	http://pbs.twimg.com/profile_images/685144153945030656/qPoDsjkL_normal.jpg	2018-04-18 03:14:30.098089	2018-04-18 03:14:30.182326
\.


--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 183
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: denis
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- TOC entry 2046 (class 2606 OID 21710)
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: denis
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2040 (class 2606 OID 21683)
-- Name: events_pkey; Type: CONSTRAINT; Schema: public; Owner: denis
--

ALTER TABLE ONLY events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- TOC entry 2044 (class 2606 OID 21702)
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: denis
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 2042 (class 2606 OID 21694)
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: denis
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-04-19 22:54:34 WIB

--
-- PostgreSQL database dump complete
--

