--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_account; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.account_account (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    email character varying(60) NOT NULL,
    username character varying(60) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_joined timestamp with time zone NOT NULL,
    is_admin boolean NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    profile_image character varying(255),
    hide_email boolean NOT NULL
);


ALTER TABLE public.account_account OWNER TO django_chat;

--
-- Name: account_account_id_seq; Type: SEQUENCE; Schema: public; Owner: django_chat
--

CREATE SEQUENCE public.account_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_account_id_seq OWNER TO django_chat;

--
-- Name: account_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_chat
--

ALTER SEQUENCE public.account_account_id_seq OWNED BY public.account_account.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django_chat;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django_chat
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django_chat;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_chat
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django_chat;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_chat
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django_chat;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_chat
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django_chat;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_chat
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django_chat;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_chat
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: base_publicchatmessages; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.base_publicchatmessages (
    id bigint NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    message text NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.base_publicchatmessages OWNER TO django_chat;

--
-- Name: base_publicchatmessages_id_seq; Type: SEQUENCE; Schema: public; Owner: django_chat
--

CREATE SEQUENCE public.base_publicchatmessages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_publicchatmessages_id_seq OWNER TO django_chat;

--
-- Name: base_publicchatmessages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_chat
--

ALTER SEQUENCE public.base_publicchatmessages_id_seq OWNED BY public.base_publicchatmessages.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django_chat;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django_chat
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django_chat;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_chat
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django_chat;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django_chat
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django_chat;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_chat
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django_chat;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django_chat
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django_chat;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_chat
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django_chat
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django_chat;

--
-- Name: account_account id; Type: DEFAULT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.account_account ALTER COLUMN id SET DEFAULT nextval('public.account_account_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: base_publicchatmessages id; Type: DEFAULT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.base_publicchatmessages ALTER COLUMN id SET DEFAULT nextval('public.base_publicchatmessages_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: account_account; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.account_account (id, password, last_login, email, username, date_joined, last_joined, is_admin, is_active, is_staff, is_superuser, profile_image, hide_email) FROM stdin;
1	pbkdf2_sha256$260000$1kUNguvQhnZ8P8A1tRYxms$ilSEwcpsG8CDoar7o9ddt0EVvDMxxhmSOJpXj+n7zE4=	2021-05-02 20:55:29.539361-05	admin@gmail.com	admin	2021-05-02 20:54:59.214284-05	2021-05-02 20:54:59.216336-05	t	t	t	t	images/face.png	t
2	pbkdf2_sha256$260000$joYEdGIJXcbjsoleKOgnXm$Wb2OmW9qvtL/F+x6COiU83WytO/EtBVFMhrkbIFKvPQ=	2021-05-02 20:56:45.008059-05	juanito@gmail.com	juanito	2021-05-02 20:56:44.915772-05	2021-05-02 20:56:44.915788-05	f	t	f	f	images/face.png	t
3	pbkdf2_sha256$260000$n2c0nibjuFmYAy6oIcsL8e$EDC+RimYodebPXE8kWqT/h6yb7t6XLBo57glRvowg+E=	2021-05-02 20:57:22.432198-05	pepito@gmail.com	pepito	2021-05-02 20:57:22.358381-05	2021-05-02 20:57:22.358397-05	f	t	f	f	images/face.png	t
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add public chat messages	1	add_publicchatmessages
2	Can change public chat messages	1	change_publicchatmessages
3	Can delete public chat messages	1	delete_publicchatmessages
4	Can view public chat messages	1	view_publicchatmessages
5	Can add account	2	add_account
6	Can change account	2	change_account
7	Can delete account	2	delete_account
8	Can view account	2	view_account
9	Can add log entry	3	add_logentry
10	Can change log entry	3	change_logentry
11	Can delete log entry	3	delete_logentry
12	Can view log entry	3	view_logentry
13	Can add permission	4	add_permission
14	Can change permission	4	change_permission
15	Can delete permission	4	delete_permission
16	Can view permission	4	view_permission
17	Can add group	5	add_group
18	Can change group	5	change_group
19	Can delete group	5	delete_group
20	Can view group	5	view_group
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
\.


--
-- Data for Name: base_publicchatmessages; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.base_publicchatmessages (id, "timestamp", message, user_id) FROM stdin;
1	2021-05-02 20:55:35.462364-05	hola	1
2	2021-05-02 20:56:08.472687-05	como estan?	1
3	2021-05-02 20:56:57.344747-05	Hola yo estoy muy bien	2
4	2021-05-02 20:57:52.605398-05	que bien juanito, yo estoy igualmente muy bien, esperando unos resultados	3
5	2021-05-02 20:58:32.066843-05	ok, super	1
6	2021-05-02 21:03:07.925124-05	que cuentan los demas?	3
7	2021-05-02 21:03:23.964577-05	si	1
8	2021-05-02 21:03:36.197317-05	hola	3
9	2021-05-02 21:03:47.580019-05	hola	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	base	publicchatmessages
2	account	account
3	admin	logentry
4	auth	permission
5	auth	group
6	contenttypes	contenttype
7	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	account	0001_initial	2021-05-02 20:54:07.431449-05
2	contenttypes	0001_initial	2021-05-02 20:54:07.443658-05
3	admin	0001_initial	2021-05-02 20:54:07.460778-05
4	admin	0002_logentry_remove_auto_add	2021-05-02 20:54:07.465229-05
5	admin	0003_logentry_add_action_flag_choices	2021-05-02 20:54:07.469972-05
6	contenttypes	0002_remove_content_type_name	2021-05-02 20:54:07.481425-05
7	auth	0001_initial	2021-05-02 20:54:07.521729-05
8	auth	0002_alter_permission_name_max_length	2021-05-02 20:54:07.531375-05
9	auth	0003_alter_user_email_max_length	2021-05-02 20:54:07.535542-05
10	auth	0004_alter_user_username_opts	2021-05-02 20:54:07.540147-05
11	auth	0005_alter_user_last_login_null	2021-05-02 20:54:07.546071-05
12	auth	0006_require_contenttypes_0002	2021-05-02 20:54:07.548016-05
13	auth	0007_alter_validators_add_error_messages	2021-05-02 20:54:07.553067-05
14	auth	0008_alter_user_username_max_length	2021-05-02 20:54:07.557417-05
15	auth	0009_alter_user_last_name_max_length	2021-05-02 20:54:07.561879-05
16	auth	0010_alter_group_name_max_length	2021-05-02 20:54:07.568893-05
17	auth	0011_update_proxy_permissions	2021-05-02 20:54:07.575055-05
18	auth	0012_alter_user_first_name_max_length	2021-05-02 20:54:07.579877-05
19	base	0001_initial	2021-05-02 20:54:07.592464-05
20	sessions	0001_initial	2021-05-02 20:54:07.604302-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django_chat
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
vx7icj7sgb8pzzlpfjhvugpv6sp3f42t	.eJxVjLEOgjAURf-ls2kotOXVTXZHZ_L6XisoaRMKcTD-u5Aw6HKHe-85b9Hjugz9WsLcjyzOQonTb-eRniHtAz8w3bOknJZ59HK_yGMt8jJN-bXFbWPKNXOYugP8sw1Yhk3VsIPoowbDCrl2rdOkqaXgTUBrfaXqiFWoFQNo21QWTBMB2EfUhIrE5wtpkj2T:1ldNo1:v5RRH0rzIVqi_Zi9vyU_mcOs3le3gxtoZ6zt2-P2GUk	2021-05-16 20:55:29.541268-05
iu0st5hbtz7mesungbqr6yentym7a4zs	.eJxVjD0PwiAURf8LsyHAK19udnd0boAHttpAUto4GP-7NOmgyx3uuee-yeC2dRy2GpdhQnImQE6_nXfhGfMO8OHyvdBQ8rpMnu4TetBKL_NcXi1uzanXgnHuD_HvbXR1bFdCmNhJ5pNW0ElUEILnkKRGbjvNEYwVjDEdbGIxAkoulIU2M9IFDop8vjHQO94:1ldNpq:H_lgk9Cb0Lt7VlhdeBHRDZSQT33ne4fUdgWsV5EapcU	2021-05-16 20:57:22.434005-05
\.


--
-- Name: account_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_chat
--

SELECT pg_catalog.setval('public.account_account_id_seq', 3, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_chat
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_chat
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_chat
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);


--
-- Name: base_publicchatmessages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_chat
--

SELECT pg_catalog.setval('public.base_publicchatmessages_id_seq', 9, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_chat
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_chat
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_chat
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: account_account account_account_email_key; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.account_account
    ADD CONSTRAINT account_account_email_key UNIQUE (email);


--
-- Name: account_account account_account_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.account_account
    ADD CONSTRAINT account_account_pkey PRIMARY KEY (id);


--
-- Name: account_account account_account_username_key; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.account_account
    ADD CONSTRAINT account_account_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: base_publicchatmessages base_publicchatmessages_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.base_publicchatmessages
    ADD CONSTRAINT base_publicchatmessages_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: account_account_email_3d3b3e7a_like; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX account_account_email_3d3b3e7a_like ON public.account_account USING btree (email varchar_pattern_ops);


--
-- Name: account_account_username_7d6d7da7_like; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX account_account_username_7d6d7da7_like ON public.account_account USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: base_publicchatmessages_user_id_9e843817; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX base_publicchatmessages_user_id_9e843817 ON public.base_publicchatmessages USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django_chat
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: base_publicchatmessages base_publicchatmessages_user_id_9e843817_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.base_publicchatmessages
    ADD CONSTRAINT base_publicchatmessages_user_id_9e843817_fk_account_account_id FOREIGN KEY (user_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_account_account_id; Type: FK CONSTRAINT; Schema: public; Owner: django_chat
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_account_id FOREIGN KEY (user_id) REFERENCES public.account_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

