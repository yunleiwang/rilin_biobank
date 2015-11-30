--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: boxer_storages; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE boxer_storages (
    id integer NOT NULL,
    position_index integer,
    boxer_id integer,
    frame_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE boxer_storages OWNER TO postgres;

--
-- Name: boxer_storages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE boxer_storages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE boxer_storages_id_seq OWNER TO postgres;

--
-- Name: boxer_storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE boxer_storages_id_seq OWNED BY boxer_storages.id;


--
-- Name: boxers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE boxers (
    id integer NOT NULL,
    box_name character varying(255),
    box_seq character varying(255),
    box_row integer,
    box_column integer,
    remark text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE boxers OWNER TO postgres;

--
-- Name: boxers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE boxers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE boxers_id_seq OWNER TO postgres;

--
-- Name: boxers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE boxers_id_seq OWNED BY boxers.id;


--
-- Name: container_types; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE container_types (
    id integer NOT NULL,
    container_catalog character varying(255),
    container_icon character varying(255),
    alia_name character varying(255),
    add_link_url character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE container_types OWNER TO postgres;

--
-- Name: container_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE container_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE container_types_id_seq OWNER TO postgres;

--
-- Name: container_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE container_types_id_seq OWNED BY container_types.id;


--
-- Name: containers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE containers (
    id integer NOT NULL,
    container_name character varying(255),
    container_type_id character varying(255),
    code_style integer,
    frame_num integer,
    container_rows integer,
    container_columns integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    container_seq character varying(255)
);


ALTER TABLE containers OWNER TO postgres;

--
-- Name: containers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE containers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE containers_id_seq OWNER TO postgres;

--
-- Name: containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE containers_id_seq OWNED BY containers.id;


--
-- Name: frame_storages; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE frame_storages (
    id integer NOT NULL,
    position_index integer,
    frame_id integer,
    container_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE frame_storages OWNER TO postgres;

--
-- Name: frame_storages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE frame_storages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE frame_storages_id_seq OWNER TO postgres;

--
-- Name: frame_storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE frame_storages_id_seq OWNED BY frame_storages.id;


--
-- Name: frames; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE frames (
    id integer NOT NULL,
    frame_seq character varying(255),
    frame_name character varying(255),
    frame_type character varying(255),
    code_order integer,
    horizontal_direction integer,
    vertiacal_direction integer,
    frame_rows integer,
    frame_columns integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE frames OWNER TO postgres;

--
-- Name: frames_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE frames_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE frames_id_seq OWNER TO postgres;

--
-- Name: frames_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE frames_id_seq OWNED BY frames.id;


--
-- Name: hospitals; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE hospitals (
    id integer NOT NULL,
    name character varying(255),
    province_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE hospitals OWNER TO postgres;

--
-- Name: hospitals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hospitals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hospitals_id_seq OWNER TO postgres;

--
-- Name: hospitals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE hospitals_id_seq OWNED BY hospitals.id;


--
-- Name: menu_libs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE menu_libs (
    id integer NOT NULL,
    name_zh character varying(255),
    menu_lib_id integer,
    link character varying(255),
    seq integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    icon_class character varying(255)
);


ALTER TABLE menu_libs OWNER TO postgres;

--
-- Name: menu_libs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE menu_libs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE menu_libs_id_seq OWNER TO postgres;

--
-- Name: menu_libs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE menu_libs_id_seq OWNED BY menu_libs.id;


--
-- Name: patient_cases; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patient_cases (
    id integer NOT NULL,
    case_number character varying(255),
    patient_info_id character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE patient_cases OWNER TO postgres;

--
-- Name: patient_cases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patient_cases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE patient_cases_id_seq OWNER TO postgres;

--
-- Name: patient_cases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE patient_cases_id_seq OWNED BY patient_cases.id;


--
-- Name: patient_infos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patient_infos (
    id integer NOT NULL,
    patient_id character varying(255),
    patient_name character varying(255),
    gender character varying(255),
    birthday date,
    cell_phone character varying(255),
    home_phone character varying(255),
    other_phone character varying(255),
    zip_code character varying(255),
    address character varying(255),
    company_name character varying(255),
    company_phone character varying(255),
    company_zip character varying(255),
    company_address character varying(255),
    relationship_first character varying(255),
    relative_name_first character varying(255),
    relative_phone1_first character varying(255),
    relative_phone2_first character varying(255),
    relationship_second character varying(255),
    relative_name_second character varying(255),
    relative_phone1_second character varying(255),
    relative_phone2_second character varying(255),
    relationship_third character varying(255),
    relative_name_third character varying(255),
    relative_phone1_third character varying(255),
    relative_phone2_third character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE patient_infos OWNER TO postgres;

--
-- Name: patient_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patient_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE patient_infos_id_seq OWNER TO postgres;

--
-- Name: patient_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE patient_infos_id_seq OWNED BY patient_infos.id;


--
-- Name: sample_out_logs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sample_out_logs (
    id integer NOT NULL,
    sample_id integer,
    sample_preout_log_id integer,
    out_status character varying(255),
    remark character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sample_out_logs OWNER TO postgres;

--
-- Name: sample_out_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_out_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sample_out_logs_id_seq OWNER TO postgres;

--
-- Name: sample_out_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sample_out_logs_id_seq OWNED BY sample_out_logs.id;


--
-- Name: sample_preout_logs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sample_preout_logs (
    id integer NOT NULL,
    operator_name character varying(255),
    user_name character varying(255),
    status character varying(255),
    sample_ids character varying(255),
    num integer,
    proportpion integer,
    sys_user_id integer,
    use_for text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sample_preout_logs OWNER TO postgres;

--
-- Name: sample_preout_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_preout_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sample_preout_logs_id_seq OWNER TO postgres;

--
-- Name: sample_preout_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sample_preout_logs_id_seq OWNED BY sample_preout_logs.id;


--
-- Name: sample_storage_logs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sample_storage_logs (
    id integer NOT NULL,
    sample_id integer,
    user_name character varying(255),
    out_percent integer,
    left_volume integer,
    out_use_for text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sample_storage_logs OWNER TO postgres;

--
-- Name: sample_storage_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_storage_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sample_storage_logs_id_seq OWNER TO postgres;

--
-- Name: sample_storage_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sample_storage_logs_id_seq OWNED BY sample_storage_logs.id;


--
-- Name: sample_storages; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sample_storages (
    id integer NOT NULL,
    position_index integer,
    boxer_id integer,
    sample_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sample_storages OWNER TO postgres;

--
-- Name: sample_storages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_storages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sample_storages_id_seq OWNER TO postgres;

--
-- Name: sample_storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sample_storages_id_seq OWNED BY sample_storages.id;


--
-- Name: samples; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE samples (
    id integer NOT NULL,
    sample_no character varying(255),
    sample_seq character varying(255),
    user_id integer,
    storage_status character varying(255),
    freezing_thawing_times integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sample_storage_id integer,
    initial_sample_volume double precision,
    current_sample_volume double precision,
    patient_case_id integer
);


ALTER TABLE samples OWNER TO postgres;

--
-- Name: samples_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE samples_id_seq OWNER TO postgres;

--
-- Name: samples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE samples_id_seq OWNED BY samples.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Name: sys_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_roles (
    id integer NOT NULL,
    name character varying(255),
    remark text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sys_roles OWNER TO postgres;

--
-- Name: sys_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sys_roles_id_seq OWNER TO postgres;

--
-- Name: sys_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_roles_id_seq OWNED BY sys_roles.id;


--
-- Name: sys_table_columns; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_table_columns (
    id integer NOT NULL,
    tname_zn character varying(255),
    tname_en character varying(255),
    cname_zn character varying(255),
    cname_en character varying(255),
    order_no integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sys_table_columns OWNER TO postgres;

--
-- Name: sys_table_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_table_columns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sys_table_columns_id_seq OWNER TO postgres;

--
-- Name: sys_table_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_table_columns_id_seq OWNED BY sys_table_columns.id;


--
-- Name: sys_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_users (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255),
    gender character varying(255),
    birthday date,
    department_id integer,
    role_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sys_users OWNER TO postgres;

--
-- Name: sys_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sys_users_id_seq OWNER TO postgres;

--
-- Name: sys_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_users_id_seq OWNED BY sys_users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY boxer_storages ALTER COLUMN id SET DEFAULT nextval('boxer_storages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY boxers ALTER COLUMN id SET DEFAULT nextval('boxers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY container_types ALTER COLUMN id SET DEFAULT nextval('container_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY containers ALTER COLUMN id SET DEFAULT nextval('containers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY frame_storages ALTER COLUMN id SET DEFAULT nextval('frame_storages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY frames ALTER COLUMN id SET DEFAULT nextval('frames_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY hospitals ALTER COLUMN id SET DEFAULT nextval('hospitals_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menu_libs ALTER COLUMN id SET DEFAULT nextval('menu_libs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patient_cases ALTER COLUMN id SET DEFAULT nextval('patient_cases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patient_infos ALTER COLUMN id SET DEFAULT nextval('patient_infos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sample_out_logs ALTER COLUMN id SET DEFAULT nextval('sample_out_logs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sample_preout_logs ALTER COLUMN id SET DEFAULT nextval('sample_preout_logs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sample_storage_logs ALTER COLUMN id SET DEFAULT nextval('sample_storage_logs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sample_storages ALTER COLUMN id SET DEFAULT nextval('sample_storages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY samples ALTER COLUMN id SET DEFAULT nextval('samples_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_roles ALTER COLUMN id SET DEFAULT nextval('sys_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_table_columns ALTER COLUMN id SET DEFAULT nextval('sys_table_columns_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_users ALTER COLUMN id SET DEFAULT nextval('sys_users_id_seq'::regclass);


--
-- Data for Name: boxer_storages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY boxer_storages (id, position_index, boxer_id, frame_id, created_at, updated_at) FROM stdin;
2	1	\N	1	2015-11-25 07:14:40.558	2015-11-25 07:14:40.558
3	2	\N	1	2015-11-25 07:14:40.569	2015-11-25 07:14:40.569
4	3	\N	1	2015-11-25 07:14:40.592	2015-11-25 07:14:40.592
5	4	\N	1	2015-11-25 07:14:40.617	2015-11-25 07:14:40.617
6	5	\N	1	2015-11-25 07:14:40.629	2015-11-25 07:14:40.629
8	1	\N	2	2015-11-25 07:42:39.469	2015-11-25 07:42:39.469
9	2	\N	2	2015-11-25 07:42:39.477	2015-11-25 07:42:39.477
10	3	\N	2	2015-11-25 07:42:39.484	2015-11-25 07:42:39.484
11	4	\N	2	2015-11-25 07:42:39.491	2015-11-25 07:42:39.491
12	5	\N	2	2015-11-25 07:42:39.497	2015-11-25 07:42:39.497
13	6	\N	2	2015-11-25 07:42:39.502	2015-11-25 07:42:39.502
14	7	\N	2	2015-11-25 07:42:39.519	2015-11-25 07:42:39.519
15	8	\N	2	2015-11-25 07:42:39.526	2015-11-25 07:42:39.526
16	9	\N	2	2015-11-25 07:42:39.531	2015-11-25 07:42:39.531
17	10	\N	2	2015-11-25 07:42:39.543	2015-11-25 07:42:39.543
18	11	\N	2	2015-11-25 07:42:39.551	2015-11-25 07:42:39.551
19	12	\N	2	2015-11-25 07:42:39.557	2015-11-25 07:42:39.557
20	13	\N	2	2015-11-25 07:42:39.562	2015-11-25 07:42:39.562
21	14	\N	2	2015-11-25 07:42:39.568	2015-11-25 07:42:39.568
7	0	1	2	2015-11-25 07:42:39.462	2015-11-25 08:49:28.478
1	0	2	1	2015-11-25 07:14:40.55	2015-11-25 09:08:14.202
22	0	\N	3	2015-11-25 10:01:32.09	2015-11-25 10:01:32.09
23	1	\N	3	2015-11-25 10:01:32.096	2015-11-25 10:01:32.096
25	3	\N	3	2015-11-25 10:01:32.107	2015-11-25 10:01:32.107
26	4	\N	3	2015-11-25 10:01:32.112	2015-11-25 10:01:32.112
27	0	\N	4	2015-11-25 11:44:29.796	2015-11-25 11:44:29.796
29	2	\N	4	2015-11-25 11:44:29.827	2015-11-25 11:44:29.827
30	3	\N	4	2015-11-25 11:44:29.845	2015-11-25 11:44:29.845
31	4	\N	4	2015-11-25 11:44:29.862	2015-11-25 11:44:29.862
28	1	3	4	2015-11-25 11:44:29.816	2015-11-25 11:48:39.812
24	2	4	3	2015-11-25 10:01:32.101	2015-11-25 11:57:41.445
32	0	\N	5	2015-11-25 14:38:01.565	2015-11-25 14:38:01.565
33	1	\N	5	2015-11-25 14:38:01.571	2015-11-25 14:38:01.571
\.


--
-- Name: boxer_storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('boxer_storages_id_seq', 33, true);


--
-- Data for Name: boxers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY boxers (id, box_name, box_seq, box_row, box_column, remark, created_at, updated_at) FROM stdin;
1	盒子A	3001	9	9		2015-11-25 08:49:28.442	2015-11-25 08:49:28.442
2	盒子2	3002	10	10		2015-11-25 09:08:14.152	2015-11-25 09:08:14.152
3	盒子3	3003	9	9		2015-11-25 11:48:39.799	2015-11-25 11:49:01.876
4	盒子5	3005	9	9		2015-11-25 11:57:41.438	2015-11-25 11:57:41.438
\.


--
-- Name: boxers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('boxers_id_seq', 4, true);


--
-- Data for Name: container_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY container_types (id, container_catalog, container_icon, alia_name, add_link_url, created_at, updated_at) FROM stdin;
1	立式冰箱	\N			2015-11-24 06:16:12.665	2015-11-24 06:16:12.665
2	卧式冰箱	\N			2015-11-24 06:16:25.611	2015-11-24 06:16:25.611
3	液氮罐	\N			2015-11-24 06:16:38.729	2015-11-24 06:16:38.729
\.


--
-- Name: container_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('container_types_id_seq', 3, true);


--
-- Data for Name: containers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY containers (id, container_name, container_type_id, code_style, frame_num, container_rows, container_columns, created_at, updated_at, container_seq) FROM stdin;
1	立式冰箱1	1	\N	\N	5	4	2015-11-24 09:48:33.701	2015-11-24 09:48:33.701	\N
2	卧式冰箱1	2	\N	\N	4	3	2015-11-25 05:57:30.764	2015-11-25 05:57:30.764	\N
3	液氮罐1	3	\N	5	\N	\N	2015-11-25 06:17:27.328	2015-11-25 06:17:27.328	\N
\.


--
-- Name: containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('containers_id_seq', 3, true);


--
-- Data for Name: frame_storages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY frame_storages (id, position_index, frame_id, container_id, created_at, updated_at) FROM stdin;
3	2	\N	1	2015-11-24 09:48:33.848	2015-11-24 09:48:33.848
4	3	\N	1	2015-11-24 09:48:33.859	2015-11-24 09:48:33.859
5	4	\N	1	2015-11-24 09:48:33.879	2015-11-24 09:48:33.879
6	5	\N	1	2015-11-24 09:48:33.899	2015-11-24 09:48:33.899
7	6	\N	1	2015-11-24 09:48:33.908	2015-11-24 09:48:33.908
8	7	\N	1	2015-11-24 09:48:33.919	2015-11-24 09:48:33.919
9	8	\N	1	2015-11-24 09:48:33.929	2015-11-24 09:48:33.929
10	9	\N	1	2015-11-24 09:48:33.945	2015-11-24 09:48:33.945
11	10	\N	1	2015-11-24 09:48:33.96	2015-11-24 09:48:33.96
12	11	\N	1	2015-11-24 09:48:33.975	2015-11-24 09:48:33.975
13	12	\N	1	2015-11-24 09:48:33.997	2015-11-24 09:48:33.997
14	13	\N	1	2015-11-24 09:48:34.009	2015-11-24 09:48:34.009
15	14	\N	1	2015-11-24 09:48:34.035	2015-11-24 09:48:34.035
16	15	\N	1	2015-11-24 09:48:34.065	2015-11-24 09:48:34.065
17	16	\N	1	2015-11-24 09:48:34.084	2015-11-24 09:48:34.084
18	17	\N	1	2015-11-24 09:48:34.098	2015-11-24 09:48:34.098
19	18	\N	1	2015-11-24 09:48:34.112	2015-11-24 09:48:34.112
20	19	\N	1	2015-11-24 09:48:34.119	2015-11-24 09:48:34.119
22	1	\N	2	2015-11-25 05:57:30.847	2015-11-25 05:57:30.847
23	2	\N	2	2015-11-25 05:57:30.887	2015-11-25 05:57:30.887
24	3	\N	2	2015-11-25 05:57:30.906	2015-11-25 05:57:30.906
25	4	\N	2	2015-11-25 05:57:31.026	2015-11-25 05:57:31.026
26	5	\N	2	2015-11-25 05:57:31.085	2015-11-25 05:57:31.085
27	6	\N	2	2015-11-25 05:57:31.101	2015-11-25 05:57:31.101
28	7	\N	2	2015-11-25 05:57:31.112	2015-11-25 05:57:31.112
29	8	\N	2	2015-11-25 05:57:31.127	2015-11-25 05:57:31.127
30	9	\N	2	2015-11-25 05:57:31.159	2015-11-25 05:57:31.159
31	10	\N	2	2015-11-25 05:57:31.172	2015-11-25 05:57:31.172
32	11	\N	2	2015-11-25 05:57:31.181	2015-11-25 05:57:31.181
33	0	\N	3	2015-11-25 06:17:27.345	2015-11-25 06:17:27.345
36	3	\N	3	2015-11-25 06:17:27.374	2015-11-25 06:17:27.374
37	4	\N	3	2015-11-25 06:17:27.382	2015-11-25 06:17:27.382
1	0	1	1	2015-11-24 09:48:33.793	2015-11-25 07:14:40.492
2	1	2	1	2015-11-24 09:48:33.832	2015-11-25 07:42:39.449
34	1	3	3	2015-11-25 06:17:27.354	2015-11-25 10:01:32.081
21	0	4	2	2015-11-25 05:57:30.834	2015-11-25 11:44:29.759
35	2	5	3	2015-11-25 06:17:27.363	2015-11-25 14:38:01.559
\.


--
-- Name: frame_storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('frame_storages_id_seq', 37, true);


--
-- Data for Name: frames; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY frames (id, frame_seq, frame_name, frame_type, code_order, horizontal_direction, vertiacal_direction, frame_rows, frame_columns, created_at, updated_at) FROM stdin;
1	2001	冻存架1		\N	\N	\N	3	2	2015-11-25 07:14:40.465	2015-11-25 07:14:40.465
2	2002	冻存架2		\N	\N	\N	5	3	2015-11-25 07:42:39.426	2015-11-25 07:42:39.426
3	2003	冻存架3		\N	\N	\N	5	1	2015-11-25 10:01:32.071	2015-11-25 10:01:32.071
4	2004	冻存架4		\N	\N	\N	5	1	2015-11-25 11:44:29.711	2015-11-25 11:44:29.711
5	2005	冻存架5		\N	\N	\N	2	1	2015-11-25 14:38:01.552	2015-11-25 14:38:01.552
\.


--
-- Name: frames_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('frames_id_seq', 5, true);


--
-- Data for Name: hospitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY hospitals (id, name, province_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: hospitals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hospitals_id_seq', 1, false);


--
-- Data for Name: menu_libs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY menu_libs (id, name_zh, menu_lib_id, link, seq, created_at, updated_at, icon_class) FROM stdin;
1	系统	-1	#	0	2015-09-16 03:46:46.982057	2015-09-16 03:46:46.982057	\N
2	患者信息	1	#	0	2015-09-16 03:48:24.876372	2015-09-16 03:48:24.876372	fa-home
3	病例信息	1	#	1	2015-09-16 03:48:24.880327	2015-09-16 03:48:24.880327	fa-list-alt
4	信息查询	1	#	2	2015-09-16 03:48:24.884592	2015-09-16 03:48:24.884592	fa-file-o
5	确认出库	1	#	3	2015-09-16 03:48:24.886763	2015-09-16 03:48:24.886763	fa-table
6	存储空间	1	#	4	2015-09-16 03:48:24.889587	2015-09-16 03:48:24.889587	fa-bar-chart-o
7	系统管理	1	#	5	2015-09-16 03:49:10.798498	2015-09-16 03:49:10.798498	fa-tasks
8	患者列表	2	/patient_infos	1	2015-09-16 03:49:10.801196	2015-09-16 03:49:10.801196	pjax-link
9	添加患者	2	/patient_infos/new	2	2015-09-16 03:49:10.805809	2015-09-16 03:49:10.805809	pjax-link
10	病例列表	3	/patient_cases	1	2015-09-16 03:49:10.80802	2015-09-16 03:49:10.80802	pjax-link
11	添加病例	3	/patient_cases/new	2	2015-09-16 03:49:10.810925	2015-09-16 03:49:10.810925	pjax-link
12	今日录入	4	/search_info/search_today	2	2015-09-16 03:49:10.814291	2015-09-16 03:49:10.814291	pjax-link
13	容器种类管理	7	/container_types	1	2015-09-24 03:12:02.640162	2015-09-24 03:12:02.640162	pjax-link
14	样本列表	4	/search_info/search_all	1	2015-09-24 03:12:02.660899	2015-09-24 03:12:02.660899	pjax-link
17	确认出库	5	/sample_preout_logs	1	2015-10-23 09:24:54.493461	2015-10-23 09:24:54.493461	pjax-link
15	液氮罐	1411	\N	3	2015-09-24 03:12:02.663958	2015-09-24 03:12:02.663958	pjax-link
18	添加容器	7	/containers/new	2	2015-10-23 09:24:54.545332	2015-10-23 09:24:54.545332	pjax-link
19	打印机设置	7	/sys_printers/setting_index	3	2015-10-23 09:24:54.549312	2015-10-23 09:24:54.549312	pjax-link
\.


--
-- Name: menu_libs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('menu_libs_id_seq', 19, true);


--
-- Data for Name: patient_cases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patient_cases (id, case_number, patient_info_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: patient_cases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patient_cases_id_seq', 1, false);


--
-- Data for Name: patient_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patient_infos (id, patient_id, patient_name, gender, birthday, cell_phone, home_phone, other_phone, zip_code, address, company_name, company_phone, company_zip, company_address, relationship_first, relative_name_first, relative_phone1_first, relative_phone2_first, relationship_second, relative_name_second, relative_phone1_second, relative_phone2_second, relationship_third, relative_name_third, relative_phone1_third, relative_phone2_third, created_at, updated_at) FROM stdin;
\.


--
-- Name: patient_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patient_infos_id_seq', 1, false);


--
-- Data for Name: sample_out_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sample_out_logs (id, sample_id, sample_preout_log_id, out_status, remark, created_at, updated_at) FROM stdin;
\.


--
-- Name: sample_out_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sample_out_logs_id_seq', 1, false);


--
-- Data for Name: sample_preout_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sample_preout_logs (id, operator_name, user_name, status, sample_ids, num, proportpion, sys_user_id, use_for, created_at, updated_at) FROM stdin;
\.


--
-- Name: sample_preout_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sample_preout_logs_id_seq', 1, false);


--
-- Data for Name: sample_storage_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sample_storage_logs (id, sample_id, user_name, out_percent, left_volume, out_use_for, created_at, updated_at) FROM stdin;
\.


--
-- Name: sample_storage_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sample_storage_logs_id_seq', 1, false);


--
-- Data for Name: sample_storages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sample_storages (id, position_index, boxer_id, sample_id, created_at, updated_at) FROM stdin;
1	0	1	\N	2015-11-25 08:49:28.516	2015-11-25 08:49:28.516
2	1	1	\N	2015-11-25 08:49:28.528	2015-11-25 08:49:28.528
3	2	1	\N	2015-11-25 08:49:28.537	2015-11-25 08:49:28.537
4	3	1	\N	2015-11-25 08:49:28.542	2015-11-25 08:49:28.542
5	4	1	\N	2015-11-25 08:49:28.558	2015-11-25 08:49:28.558
6	5	1	\N	2015-11-25 08:49:28.569	2015-11-25 08:49:28.569
7	6	1	\N	2015-11-25 08:49:28.578	2015-11-25 08:49:28.578
8	7	1	\N	2015-11-25 08:49:28.591	2015-11-25 08:49:28.591
9	8	1	\N	2015-11-25 08:49:28.664	2015-11-25 08:49:28.664
10	9	1	\N	2015-11-25 08:49:30.643	2015-11-25 08:49:30.643
11	10	1	\N	2015-11-25 08:49:30.662	2015-11-25 08:49:30.662
12	11	1	\N	2015-11-25 08:49:30.668	2015-11-25 08:49:30.668
13	12	1	\N	2015-11-25 08:49:30.673	2015-11-25 08:49:30.673
14	13	1	\N	2015-11-25 08:49:30.686	2015-11-25 08:49:30.686
15	14	1	\N	2015-11-25 08:49:30.698	2015-11-25 08:49:30.698
16	15	1	\N	2015-11-25 08:49:30.705	2015-11-25 08:49:30.705
17	16	1	\N	2015-11-25 08:49:30.713	2015-11-25 08:49:30.713
18	17	1	\N	2015-11-25 08:49:30.719	2015-11-25 08:49:30.719
19	18	1	\N	2015-11-25 08:49:30.724	2015-11-25 08:49:30.724
20	19	1	\N	2015-11-25 08:49:30.731	2015-11-25 08:49:30.731
21	20	1	\N	2015-11-25 08:49:30.738	2015-11-25 08:49:30.738
22	21	1	\N	2015-11-25 08:49:30.748	2015-11-25 08:49:30.748
23	22	1	\N	2015-11-25 08:49:30.754	2015-11-25 08:49:30.754
24	23	1	\N	2015-11-25 08:49:30.759	2015-11-25 08:49:30.759
25	24	1	\N	2015-11-25 08:49:30.765	2015-11-25 08:49:30.765
26	25	1	\N	2015-11-25 08:49:30.771	2015-11-25 08:49:30.771
27	26	1	\N	2015-11-25 08:49:30.775	2015-11-25 08:49:30.775
28	27	1	\N	2015-11-25 08:49:30.781	2015-11-25 08:49:30.781
29	28	1	\N	2015-11-25 08:49:30.786	2015-11-25 08:49:30.786
30	29	1	\N	2015-11-25 08:49:30.791	2015-11-25 08:49:30.791
31	30	1	\N	2015-11-25 08:49:30.796	2015-11-25 08:49:30.796
32	31	1	\N	2015-11-25 08:49:30.802	2015-11-25 08:49:30.802
33	32	1	\N	2015-11-25 08:49:30.806	2015-11-25 08:49:30.806
34	33	1	\N	2015-11-25 08:49:30.81	2015-11-25 08:49:30.81
35	34	1	\N	2015-11-25 08:49:30.815	2015-11-25 08:49:30.815
36	35	1	\N	2015-11-25 08:49:30.819	2015-11-25 08:49:30.819
37	36	1	\N	2015-11-25 08:49:30.823	2015-11-25 08:49:30.823
38	37	1	\N	2015-11-25 08:49:30.828	2015-11-25 08:49:30.828
39	38	1	\N	2015-11-25 08:49:30.834	2015-11-25 08:49:30.834
40	39	1	\N	2015-11-25 08:49:30.838	2015-11-25 08:49:30.838
41	40	1	\N	2015-11-25 08:49:30.844	2015-11-25 08:49:30.844
42	41	1	\N	2015-11-25 08:49:30.852	2015-11-25 08:49:30.852
43	42	1	\N	2015-11-25 08:49:30.863	2015-11-25 08:49:30.863
44	43	1	\N	2015-11-25 08:49:30.871	2015-11-25 08:49:30.871
45	44	1	\N	2015-11-25 08:49:30.877	2015-11-25 08:49:30.877
46	45	1	\N	2015-11-25 08:49:30.882	2015-11-25 08:49:30.882
47	46	1	\N	2015-11-25 08:49:30.889	2015-11-25 08:49:30.889
48	47	1	\N	2015-11-25 08:49:30.895	2015-11-25 08:49:30.895
49	48	1	\N	2015-11-25 08:49:30.902	2015-11-25 08:49:30.902
50	49	1	\N	2015-11-25 08:49:30.908	2015-11-25 08:49:30.908
51	50	1	\N	2015-11-25 08:49:30.917	2015-11-25 08:49:30.917
52	51	1	\N	2015-11-25 08:49:30.922	2015-11-25 08:49:30.922
53	52	1	\N	2015-11-25 08:49:30.928	2015-11-25 08:49:30.928
54	53	1	\N	2015-11-25 08:49:30.934	2015-11-25 08:49:30.934
55	54	1	\N	2015-11-25 08:49:30.939	2015-11-25 08:49:30.939
56	55	1	\N	2015-11-25 08:49:30.945	2015-11-25 08:49:30.945
57	56	1	\N	2015-11-25 08:49:30.952	2015-11-25 08:49:30.952
58	57	1	\N	2015-11-25 08:49:30.956	2015-11-25 08:49:30.956
59	58	1	\N	2015-11-25 08:49:30.961	2015-11-25 08:49:30.961
60	59	1	\N	2015-11-25 08:49:30.967	2015-11-25 08:49:30.967
61	60	1	\N	2015-11-25 08:49:30.972	2015-11-25 08:49:30.972
62	61	1	\N	2015-11-25 08:49:30.976	2015-11-25 08:49:30.976
63	62	1	\N	2015-11-25 08:49:30.981	2015-11-25 08:49:30.981
64	63	1	\N	2015-11-25 08:49:30.986	2015-11-25 08:49:30.986
65	64	1	\N	2015-11-25 08:49:30.991	2015-11-25 08:49:30.991
66	65	1	\N	2015-11-25 08:49:30.997	2015-11-25 08:49:30.997
67	66	1	\N	2015-11-25 08:49:31.002	2015-11-25 08:49:31.002
68	67	1	\N	2015-11-25 08:49:31.007	2015-11-25 08:49:31.007
69	68	1	\N	2015-11-25 08:49:31.012	2015-11-25 08:49:31.012
70	69	1	\N	2015-11-25 08:49:31.018	2015-11-25 08:49:31.018
71	70	1	\N	2015-11-25 08:49:31.024	2015-11-25 08:49:31.024
72	71	1	\N	2015-11-25 08:49:31.028	2015-11-25 08:49:31.028
73	72	1	\N	2015-11-25 08:49:31.034	2015-11-25 08:49:31.034
74	73	1	\N	2015-11-25 08:49:31.04	2015-11-25 08:49:31.04
75	74	1	\N	2015-11-25 08:49:31.047	2015-11-25 08:49:31.047
76	75	1	\N	2015-11-25 08:49:31.055	2015-11-25 08:49:31.055
77	76	1	\N	2015-11-25 08:49:31.063	2015-11-25 08:49:31.063
78	77	1	\N	2015-11-25 08:49:31.069	2015-11-25 08:49:31.069
79	78	1	\N	2015-11-25 08:49:31.074	2015-11-25 08:49:31.074
80	79	1	\N	2015-11-25 08:49:31.08	2015-11-25 08:49:31.08
81	80	1	\N	2015-11-25 08:49:31.086	2015-11-25 08:49:31.086
82	0	2	\N	2015-11-25 09:08:14.232	2015-11-25 09:08:14.232
83	1	2	\N	2015-11-25 09:08:14.253	2015-11-25 09:08:14.253
84	2	2	\N	2015-11-25 09:08:14.266	2015-11-25 09:08:14.266
85	3	2	\N	2015-11-25 09:08:14.28	2015-11-25 09:08:14.28
86	4	2	\N	2015-11-25 09:08:14.313	2015-11-25 09:08:14.313
87	5	2	\N	2015-11-25 09:08:14.321	2015-11-25 09:08:14.321
88	6	2	\N	2015-11-25 09:08:14.344	2015-11-25 09:08:14.344
89	7	2	\N	2015-11-25 09:08:14.371	2015-11-25 09:08:14.371
90	8	2	\N	2015-11-25 09:08:14.393	2015-11-25 09:08:14.393
91	9	2	\N	2015-11-25 09:08:14.44	2015-11-25 09:08:14.44
92	10	2	\N	2015-11-25 09:08:14.466	2015-11-25 09:08:14.466
93	11	2	\N	2015-11-25 09:08:14.479	2015-11-25 09:08:14.479
94	12	2	\N	2015-11-25 09:08:14.498	2015-11-25 09:08:14.498
95	13	2	\N	2015-11-25 09:08:14.509	2015-11-25 09:08:14.509
96	14	2	\N	2015-11-25 09:08:14.519	2015-11-25 09:08:14.519
97	15	2	\N	2015-11-25 09:08:14.531	2015-11-25 09:08:14.531
98	16	2	\N	2015-11-25 09:08:14.598	2015-11-25 09:08:14.598
99	17	2	\N	2015-11-25 09:08:14.609	2015-11-25 09:08:14.609
100	18	2	\N	2015-11-25 09:08:14.617	2015-11-25 09:08:14.617
101	19	2	\N	2015-11-25 09:08:14.628	2015-11-25 09:08:14.628
102	20	2	\N	2015-11-25 09:08:14.636	2015-11-25 09:08:14.636
103	21	2	\N	2015-11-25 09:08:14.646	2015-11-25 09:08:14.646
104	22	2	\N	2015-11-25 09:08:14.671	2015-11-25 09:08:14.671
105	23	2	\N	2015-11-25 09:08:14.692	2015-11-25 09:08:14.692
106	24	2	\N	2015-11-25 09:08:14.721	2015-11-25 09:08:14.721
107	25	2	\N	2015-11-25 09:08:14.738	2015-11-25 09:08:14.738
108	26	2	\N	2015-11-25 09:08:14.778	2015-11-25 09:08:14.778
109	27	2	\N	2015-11-25 09:08:14.837	2015-11-25 09:08:14.837
110	28	2	\N	2015-11-25 09:08:14.85	2015-11-25 09:08:14.85
111	29	2	\N	2015-11-25 09:08:14.86	2015-11-25 09:08:14.86
112	30	2	\N	2015-11-25 09:08:14.869	2015-11-25 09:08:14.869
113	31	2	\N	2015-11-25 09:08:14.882	2015-11-25 09:08:14.882
114	32	2	\N	2015-11-25 09:08:14.893	2015-11-25 09:08:14.893
115	33	2	\N	2015-11-25 09:08:14.906	2015-11-25 09:08:14.906
116	34	2	\N	2015-11-25 09:08:14.914	2015-11-25 09:08:14.914
117	35	2	\N	2015-11-25 09:08:14.928	2015-11-25 09:08:14.928
118	36	2	\N	2015-11-25 09:08:14.941	2015-11-25 09:08:14.941
119	37	2	\N	2015-11-25 09:08:14.951	2015-11-25 09:08:14.951
120	38	2	\N	2015-11-25 09:08:14.961	2015-11-25 09:08:14.961
121	39	2	\N	2015-11-25 09:08:14.973	2015-11-25 09:08:14.973
122	40	2	\N	2015-11-25 09:08:14.982	2015-11-25 09:08:14.982
123	41	2	\N	2015-11-25 09:08:14.995	2015-11-25 09:08:14.995
124	42	2	\N	2015-11-25 09:08:15.006	2015-11-25 09:08:15.006
125	43	2	\N	2015-11-25 09:08:15.013	2015-11-25 09:08:15.013
126	44	2	\N	2015-11-25 09:08:15.023	2015-11-25 09:08:15.023
127	45	2	\N	2015-11-25 09:08:15.03	2015-11-25 09:08:15.03
128	46	2	\N	2015-11-25 09:08:15.055	2015-11-25 09:08:15.055
129	47	2	\N	2015-11-25 09:08:15.068	2015-11-25 09:08:15.068
130	48	2	\N	2015-11-25 09:08:15.086	2015-11-25 09:08:15.086
131	49	2	\N	2015-11-25 09:08:15.098	2015-11-25 09:08:15.098
132	50	2	\N	2015-11-25 09:08:15.109	2015-11-25 09:08:15.109
133	51	2	\N	2015-11-25 09:08:15.119	2015-11-25 09:08:15.119
134	52	2	\N	2015-11-25 09:08:15.196	2015-11-25 09:08:15.196
135	53	2	\N	2015-11-25 09:08:15.265	2015-11-25 09:08:15.265
136	54	2	\N	2015-11-25 09:08:15.291	2015-11-25 09:08:15.291
137	55	2	\N	2015-11-25 09:08:15.315	2015-11-25 09:08:15.315
138	56	2	\N	2015-11-25 09:08:15.338	2015-11-25 09:08:15.338
139	57	2	\N	2015-11-25 09:08:15.367	2015-11-25 09:08:15.367
140	58	2	\N	2015-11-25 09:08:15.377	2015-11-25 09:08:15.377
141	59	2	\N	2015-11-25 09:08:15.383	2015-11-25 09:08:15.383
142	60	2	\N	2015-11-25 09:08:15.394	2015-11-25 09:08:15.394
143	61	2	\N	2015-11-25 09:08:15.405	2015-11-25 09:08:15.405
144	62	2	\N	2015-11-25 09:08:15.415	2015-11-25 09:08:15.415
145	63	2	\N	2015-11-25 09:08:15.43	2015-11-25 09:08:15.43
146	64	2	\N	2015-11-25 09:08:15.444	2015-11-25 09:08:15.444
147	65	2	\N	2015-11-25 09:08:15.456	2015-11-25 09:08:15.456
148	66	2	\N	2015-11-25 09:08:15.463	2015-11-25 09:08:15.463
149	67	2	\N	2015-11-25 09:08:15.471	2015-11-25 09:08:15.471
150	68	2	\N	2015-11-25 09:08:15.478	2015-11-25 09:08:15.478
151	69	2	\N	2015-11-25 09:08:15.484	2015-11-25 09:08:15.484
152	70	2	\N	2015-11-25 09:08:15.49	2015-11-25 09:08:15.49
153	71	2	\N	2015-11-25 09:08:15.496	2015-11-25 09:08:15.496
154	72	2	\N	2015-11-25 09:08:15.503	2015-11-25 09:08:15.503
155	73	2	\N	2015-11-25 09:08:15.51	2015-11-25 09:08:15.51
156	74	2	\N	2015-11-25 09:08:15.516	2015-11-25 09:08:15.516
157	75	2	\N	2015-11-25 09:08:15.523	2015-11-25 09:08:15.523
158	76	2	\N	2015-11-25 09:08:15.528	2015-11-25 09:08:15.528
159	77	2	\N	2015-11-25 09:08:15.533	2015-11-25 09:08:15.533
160	78	2	\N	2015-11-25 09:08:15.539	2015-11-25 09:08:15.539
161	79	2	\N	2015-11-25 09:08:15.545	2015-11-25 09:08:15.545
162	80	2	\N	2015-11-25 09:08:15.552	2015-11-25 09:08:15.552
163	81	2	\N	2015-11-25 09:08:15.559	2015-11-25 09:08:15.559
164	82	2	\N	2015-11-25 09:08:15.57	2015-11-25 09:08:15.57
165	83	2	\N	2015-11-25 09:08:15.583	2015-11-25 09:08:15.583
166	84	2	\N	2015-11-25 09:08:15.591	2015-11-25 09:08:15.591
167	85	2	\N	2015-11-25 09:08:15.6	2015-11-25 09:08:15.6
168	86	2	\N	2015-11-25 09:08:15.609	2015-11-25 09:08:15.609
169	87	2	\N	2015-11-25 09:08:15.616	2015-11-25 09:08:15.616
170	88	2	\N	2015-11-25 09:08:15.625	2015-11-25 09:08:15.625
171	89	2	\N	2015-11-25 09:08:15.631	2015-11-25 09:08:15.631
172	90	2	\N	2015-11-25 09:08:15.642	2015-11-25 09:08:15.642
173	91	2	\N	2015-11-25 09:08:15.649	2015-11-25 09:08:15.649
174	92	2	\N	2015-11-25 09:08:15.659	2015-11-25 09:08:15.659
175	93	2	\N	2015-11-25 09:08:15.665	2015-11-25 09:08:15.665
176	94	2	\N	2015-11-25 09:08:15.675	2015-11-25 09:08:15.675
177	95	2	\N	2015-11-25 09:08:15.681	2015-11-25 09:08:15.681
178	96	2	\N	2015-11-25 09:08:15.69	2015-11-25 09:08:15.69
179	97	2	\N	2015-11-25 09:08:15.696	2015-11-25 09:08:15.696
180	98	2	\N	2015-11-25 09:08:15.703	2015-11-25 09:08:15.703
181	99	2	\N	2015-11-25 09:08:15.708	2015-11-25 09:08:15.708
182	0	3	\N	2015-11-25 11:48:39.859	2015-11-25 11:48:39.859
183	1	3	\N	2015-11-25 11:48:39.872	2015-11-25 11:48:39.872
184	2	3	\N	2015-11-25 11:48:39.884	2015-11-25 11:48:39.884
185	3	3	\N	2015-11-25 11:48:39.899	2015-11-25 11:48:39.899
186	4	3	\N	2015-11-25 11:48:39.913	2015-11-25 11:48:39.913
187	5	3	\N	2015-11-25 11:48:39.929	2015-11-25 11:48:39.929
188	6	3	\N	2015-11-25 11:48:39.942	2015-11-25 11:48:39.942
189	7	3	\N	2015-11-25 11:48:39.95	2015-11-25 11:48:39.95
190	8	3	\N	2015-11-25 11:48:39.963	2015-11-25 11:48:39.963
191	9	3	\N	2015-11-25 11:48:39.97	2015-11-25 11:48:39.97
192	10	3	\N	2015-11-25 11:48:39.98	2015-11-25 11:48:39.98
193	11	3	\N	2015-11-25 11:48:39.991	2015-11-25 11:48:39.991
194	12	3	\N	2015-11-25 11:48:40	2015-11-25 11:48:40
195	13	3	\N	2015-11-25 11:48:40.007	2015-11-25 11:48:40.007
196	14	3	\N	2015-11-25 11:48:40.015	2015-11-25 11:48:40.015
197	15	3	\N	2015-11-25 11:48:40.024	2015-11-25 11:48:40.024
198	16	3	\N	2015-11-25 11:48:40.042	2015-11-25 11:48:40.042
199	17	3	\N	2015-11-25 11:48:40.056	2015-11-25 11:48:40.056
200	18	3	\N	2015-11-25 11:48:40.069	2015-11-25 11:48:40.069
201	19	3	\N	2015-11-25 11:48:40.079	2015-11-25 11:48:40.079
202	20	3	\N	2015-11-25 11:48:40.096	2015-11-25 11:48:40.096
203	21	3	\N	2015-11-25 11:48:40.112	2015-11-25 11:48:40.112
204	22	3	\N	2015-11-25 11:48:40.131	2015-11-25 11:48:40.131
205	23	3	\N	2015-11-25 11:48:40.162	2015-11-25 11:48:40.162
206	24	3	\N	2015-11-25 11:48:40.17	2015-11-25 11:48:40.17
207	25	3	\N	2015-11-25 11:48:40.179	2015-11-25 11:48:40.179
208	26	3	\N	2015-11-25 11:48:40.188	2015-11-25 11:48:40.188
209	27	3	\N	2015-11-25 11:48:40.198	2015-11-25 11:48:40.198
210	28	3	\N	2015-11-25 11:48:40.214	2015-11-25 11:48:40.214
211	29	3	\N	2015-11-25 11:48:40.228	2015-11-25 11:48:40.228
212	30	3	\N	2015-11-25 11:48:40.236	2015-11-25 11:48:40.236
213	31	3	\N	2015-11-25 11:48:40.244	2015-11-25 11:48:40.244
214	32	3	\N	2015-11-25 11:48:40.251	2015-11-25 11:48:40.251
215	33	3	\N	2015-11-25 11:48:40.26	2015-11-25 11:48:40.26
216	34	3	\N	2015-11-25 11:48:40.266	2015-11-25 11:48:40.266
217	35	3	\N	2015-11-25 11:48:40.275	2015-11-25 11:48:40.275
218	36	3	\N	2015-11-25 11:48:40.281	2015-11-25 11:48:40.281
219	37	3	\N	2015-11-25 11:48:40.294	2015-11-25 11:48:40.294
220	38	3	\N	2015-11-25 11:48:40.31	2015-11-25 11:48:40.31
221	39	3	\N	2015-11-25 11:48:40.322	2015-11-25 11:48:40.322
222	40	3	\N	2015-11-25 11:48:40.354	2015-11-25 11:48:40.354
223	41	3	\N	2015-11-25 11:48:40.38	2015-11-25 11:48:40.38
224	42	3	\N	2015-11-25 11:48:40.409	2015-11-25 11:48:40.409
225	43	3	\N	2015-11-25 11:48:40.425	2015-11-25 11:48:40.425
226	44	3	\N	2015-11-25 11:48:40.436	2015-11-25 11:48:40.436
227	45	3	\N	2015-11-25 11:48:40.452	2015-11-25 11:48:40.452
228	46	3	\N	2015-11-25 11:48:40.471	2015-11-25 11:48:40.471
229	47	3	\N	2015-11-25 11:48:40.531	2015-11-25 11:48:40.531
230	48	3	\N	2015-11-25 11:48:40.54	2015-11-25 11:48:40.54
231	49	3	\N	2015-11-25 11:48:40.559	2015-11-25 11:48:40.559
232	50	3	\N	2015-11-25 11:48:40.576	2015-11-25 11:48:40.576
233	51	3	\N	2015-11-25 11:48:40.602	2015-11-25 11:48:40.602
234	52	3	\N	2015-11-25 11:48:40.614	2015-11-25 11:48:40.614
235	53	3	\N	2015-11-25 11:48:40.629	2015-11-25 11:48:40.629
236	54	3	\N	2015-11-25 11:48:40.646	2015-11-25 11:48:40.646
237	55	3	\N	2015-11-25 11:48:40.657	2015-11-25 11:48:40.657
238	56	3	\N	2015-11-25 11:48:40.669	2015-11-25 11:48:40.669
239	57	3	\N	2015-11-25 11:48:40.676	2015-11-25 11:48:40.676
240	58	3	\N	2015-11-25 11:48:40.683	2015-11-25 11:48:40.683
241	59	3	\N	2015-11-25 11:48:40.693	2015-11-25 11:48:40.693
242	60	3	\N	2015-11-25 11:48:40.7	2015-11-25 11:48:40.7
243	61	3	\N	2015-11-25 11:48:40.707	2015-11-25 11:48:40.707
244	62	3	\N	2015-11-25 11:48:40.714	2015-11-25 11:48:40.714
245	63	3	\N	2015-11-25 11:48:40.722	2015-11-25 11:48:40.722
246	64	3	\N	2015-11-25 11:48:40.728	2015-11-25 11:48:40.728
247	65	3	\N	2015-11-25 11:48:40.74	2015-11-25 11:48:40.74
248	66	3	\N	2015-11-25 11:48:40.747	2015-11-25 11:48:40.747
249	67	3	\N	2015-11-25 11:48:40.754	2015-11-25 11:48:40.754
250	68	3	\N	2015-11-25 11:48:40.761	2015-11-25 11:48:40.761
251	69	3	\N	2015-11-25 11:48:40.769	2015-11-25 11:48:40.769
252	70	3	\N	2015-11-25 11:48:40.777	2015-11-25 11:48:40.777
253	71	3	\N	2015-11-25 11:48:40.781	2015-11-25 11:48:40.781
254	72	3	\N	2015-11-25 11:48:40.788	2015-11-25 11:48:40.788
255	73	3	\N	2015-11-25 11:48:40.793	2015-11-25 11:48:40.793
256	74	3	\N	2015-11-25 11:48:40.798	2015-11-25 11:48:40.798
257	75	3	\N	2015-11-25 11:48:40.805	2015-11-25 11:48:40.805
258	76	3	\N	2015-11-25 11:48:40.81	2015-11-25 11:48:40.81
259	77	3	\N	2015-11-25 11:48:40.815	2015-11-25 11:48:40.815
260	78	3	\N	2015-11-25 11:48:40.823	2015-11-25 11:48:40.823
261	79	3	\N	2015-11-25 11:48:40.83	2015-11-25 11:48:40.83
262	80	3	\N	2015-11-25 11:48:40.839	2015-11-25 11:48:40.839
263	0	4	\N	2015-11-25 11:57:41.452	2015-11-25 11:57:41.452
264	1	4	\N	2015-11-25 11:57:41.458	2015-11-25 11:57:41.458
265	2	4	\N	2015-11-25 11:57:41.464	2015-11-25 11:57:41.464
266	3	4	\N	2015-11-25 11:57:41.469	2015-11-25 11:57:41.469
267	4	4	\N	2015-11-25 11:57:41.475	2015-11-25 11:57:41.475
268	5	4	\N	2015-11-25 11:57:41.479	2015-11-25 11:57:41.479
269	6	4	\N	2015-11-25 11:57:41.484	2015-11-25 11:57:41.484
270	7	4	\N	2015-11-25 11:57:41.493	2015-11-25 11:57:41.493
271	8	4	\N	2015-11-25 11:57:41.5	2015-11-25 11:57:41.5
272	9	4	\N	2015-11-25 11:57:41.507	2015-11-25 11:57:41.507
273	10	4	\N	2015-11-25 11:57:41.514	2015-11-25 11:57:41.514
274	11	4	\N	2015-11-25 11:57:41.519	2015-11-25 11:57:41.519
275	12	4	\N	2015-11-25 11:57:41.527	2015-11-25 11:57:41.527
276	13	4	\N	2015-11-25 11:57:41.532	2015-11-25 11:57:41.532
277	14	4	\N	2015-11-25 11:57:41.541	2015-11-25 11:57:41.541
278	15	4	\N	2015-11-25 11:57:41.546	2015-11-25 11:57:41.546
279	16	4	\N	2015-11-25 11:57:41.551	2015-11-25 11:57:41.551
280	17	4	\N	2015-11-25 11:57:41.558	2015-11-25 11:57:41.558
281	18	4	\N	2015-11-25 11:57:41.564	2015-11-25 11:57:41.564
282	19	4	\N	2015-11-25 11:57:41.568	2015-11-25 11:57:41.568
283	20	4	\N	2015-11-25 11:57:41.573	2015-11-25 11:57:41.573
284	21	4	\N	2015-11-25 11:57:41.579	2015-11-25 11:57:41.579
285	22	4	\N	2015-11-25 11:57:41.584	2015-11-25 11:57:41.584
286	23	4	\N	2015-11-25 11:57:41.591	2015-11-25 11:57:41.591
287	24	4	\N	2015-11-25 11:57:41.597	2015-11-25 11:57:41.597
288	25	4	\N	2015-11-25 11:57:41.601	2015-11-25 11:57:41.601
289	26	4	\N	2015-11-25 11:57:41.607	2015-11-25 11:57:41.607
290	27	4	\N	2015-11-25 11:57:41.612	2015-11-25 11:57:41.612
291	28	4	\N	2015-11-25 11:57:41.616	2015-11-25 11:57:41.616
292	29	4	\N	2015-11-25 11:57:41.622	2015-11-25 11:57:41.622
293	30	4	\N	2015-11-25 11:57:41.628	2015-11-25 11:57:41.628
294	31	4	\N	2015-11-25 11:57:41.633	2015-11-25 11:57:41.633
295	32	4	\N	2015-11-25 11:57:41.64	2015-11-25 11:57:41.64
296	33	4	\N	2015-11-25 11:57:41.645	2015-11-25 11:57:41.645
297	34	4	\N	2015-11-25 11:57:41.649	2015-11-25 11:57:41.649
298	35	4	\N	2015-11-25 11:57:41.655	2015-11-25 11:57:41.655
299	36	4	\N	2015-11-25 11:57:41.661	2015-11-25 11:57:41.661
300	37	4	\N	2015-11-25 11:57:41.665	2015-11-25 11:57:41.665
301	38	4	\N	2015-11-25 11:57:41.67	2015-11-25 11:57:41.67
302	39	4	\N	2015-11-25 11:57:41.674	2015-11-25 11:57:41.674
303	40	4	\N	2015-11-25 11:57:41.679	2015-11-25 11:57:41.679
304	41	4	\N	2015-11-25 11:57:41.683	2015-11-25 11:57:41.683
305	42	4	\N	2015-11-25 11:57:41.688	2015-11-25 11:57:41.688
306	43	4	\N	2015-11-25 11:57:41.693	2015-11-25 11:57:41.693
307	44	4	\N	2015-11-25 11:57:41.697	2015-11-25 11:57:41.697
308	45	4	\N	2015-11-25 11:57:41.702	2015-11-25 11:57:41.702
309	46	4	\N	2015-11-25 11:57:41.706	2015-11-25 11:57:41.706
310	47	4	\N	2015-11-25 11:57:41.713	2015-11-25 11:57:41.713
311	48	4	\N	2015-11-25 11:57:41.717	2015-11-25 11:57:41.717
312	49	4	\N	2015-11-25 11:57:41.724	2015-11-25 11:57:41.724
313	50	4	\N	2015-11-25 11:57:41.728	2015-11-25 11:57:41.728
314	51	4	\N	2015-11-25 11:57:41.733	2015-11-25 11:57:41.733
315	52	4	\N	2015-11-25 11:57:41.738	2015-11-25 11:57:41.738
316	53	4	\N	2015-11-25 11:57:41.743	2015-11-25 11:57:41.743
317	54	4	\N	2015-11-25 11:57:41.747	2015-11-25 11:57:41.747
318	55	4	\N	2015-11-25 11:57:41.753	2015-11-25 11:57:41.753
319	56	4	\N	2015-11-25 11:57:41.76	2015-11-25 11:57:41.76
320	57	4	\N	2015-11-25 11:57:41.766	2015-11-25 11:57:41.766
321	58	4	\N	2015-11-25 11:57:41.774	2015-11-25 11:57:41.774
322	59	4	\N	2015-11-25 11:57:41.781	2015-11-25 11:57:41.781
323	60	4	\N	2015-11-25 11:57:41.788	2015-11-25 11:57:41.788
324	61	4	\N	2015-11-25 11:57:41.797	2015-11-25 11:57:41.797
325	62	4	\N	2015-11-25 11:57:41.802	2015-11-25 11:57:41.802
326	63	4	\N	2015-11-25 11:57:41.809	2015-11-25 11:57:41.809
327	64	4	\N	2015-11-25 11:57:41.815	2015-11-25 11:57:41.815
328	65	4	\N	2015-11-25 11:57:41.822	2015-11-25 11:57:41.822
329	66	4	\N	2015-11-25 11:57:41.828	2015-11-25 11:57:41.828
330	67	4	\N	2015-11-25 11:57:41.833	2015-11-25 11:57:41.833
331	68	4	\N	2015-11-25 11:57:41.839	2015-11-25 11:57:41.839
332	69	4	\N	2015-11-25 11:57:41.844	2015-11-25 11:57:41.844
333	70	4	\N	2015-11-25 11:57:41.849	2015-11-25 11:57:41.849
334	71	4	\N	2015-11-25 11:57:41.855	2015-11-25 11:57:41.855
335	72	4	\N	2015-11-25 11:57:41.861	2015-11-25 11:57:41.861
336	73	4	\N	2015-11-25 11:57:41.866	2015-11-25 11:57:41.866
337	74	4	\N	2015-11-25 11:57:41.873	2015-11-25 11:57:41.873
338	75	4	\N	2015-11-25 11:57:41.878	2015-11-25 11:57:41.878
339	76	4	\N	2015-11-25 11:57:41.883	2015-11-25 11:57:41.883
340	77	4	\N	2015-11-25 11:57:41.888	2015-11-25 11:57:41.888
341	78	4	\N	2015-11-25 11:57:41.893	2015-11-25 11:57:41.893
342	79	4	\N	2015-11-25 11:57:41.898	2015-11-25 11:57:41.898
343	80	4	\N	2015-11-25 11:57:41.902	2015-11-25 11:57:41.902
\.


--
-- Name: sample_storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sample_storages_id_seq', 343, true);


--
-- Data for Name: samples; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY samples (id, sample_no, sample_seq, user_id, storage_status, freezing_thawing_times, created_at, updated_at, sample_storage_id, initial_sample_volume, current_sample_volume, patient_case_id) FROM stdin;
\.


--
-- Name: samples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('samples_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20150824030148
20150824030839
20150824030857
20150824030907
20150824035026
20150824035043
20150824035056
20150824035107
20150824035130
20150824035158
20150825015905
20150827025934
20150911014118
20150911014336
20150911014708
20150916034234
20150916035515
20151021121246
20151027090651
20151029085254
20151030005808
\.


--
-- Data for Name: sys_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sys_roles (id, name, remark, created_at, updated_at) FROM stdin;
\.


--
-- Name: sys_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_roles_id_seq', 1, false);


--
-- Data for Name: sys_table_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sys_table_columns (id, tname_zn, tname_en, cname_zn, cname_en, order_no, created_at, updated_at) FROM stdin;
\.


--
-- Name: sys_table_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_table_columns_id_seq', 1, false);


--
-- Data for Name: sys_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sys_users (id, username, password, gender, birthday, department_id, role_id, created_at, updated_at) FROM stdin;
1	admin	21232f297a57a5a743894a0e4a801fc3	男	2010-09-11	1	1	2015-09-11 02:37:48.4119	2015-09-11 02:37:48.4119
\.


--
-- Name: sys_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_users_id_seq', 1, true);


--
-- Name: boxer_storages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY boxer_storages
    ADD CONSTRAINT boxer_storages_pkey PRIMARY KEY (id);


--
-- Name: boxers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY boxers
    ADD CONSTRAINT boxers_pkey PRIMARY KEY (id);


--
-- Name: container_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY container_types
    ADD CONSTRAINT container_types_pkey PRIMARY KEY (id);


--
-- Name: containers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY containers
    ADD CONSTRAINT containers_pkey PRIMARY KEY (id);


--
-- Name: frame_storages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY frame_storages
    ADD CONSTRAINT frame_storages_pkey PRIMARY KEY (id);


--
-- Name: frames_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY frames
    ADD CONSTRAINT frames_pkey PRIMARY KEY (id);


--
-- Name: hospitals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY hospitals
    ADD CONSTRAINT hospitals_pkey PRIMARY KEY (id);


--
-- Name: menu_libs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY menu_libs
    ADD CONSTRAINT menu_libs_pkey PRIMARY KEY (id);


--
-- Name: patient_cases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY patient_cases
    ADD CONSTRAINT patient_cases_pkey PRIMARY KEY (id);


--
-- Name: patient_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY patient_infos
    ADD CONSTRAINT patient_infos_pkey PRIMARY KEY (id);


--
-- Name: sample_out_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sample_out_logs
    ADD CONSTRAINT sample_out_logs_pkey PRIMARY KEY (id);


--
-- Name: sample_preout_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sample_preout_logs
    ADD CONSTRAINT sample_preout_logs_pkey PRIMARY KEY (id);


--
-- Name: sample_storage_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sample_storage_logs
    ADD CONSTRAINT sample_storage_logs_pkey PRIMARY KEY (id);


--
-- Name: sample_storages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sample_storages
    ADD CONSTRAINT sample_storages_pkey PRIMARY KEY (id);


--
-- Name: samples_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY samples
    ADD CONSTRAINT samples_pkey PRIMARY KEY (id);


--
-- Name: sys_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_roles
    ADD CONSTRAINT sys_roles_pkey PRIMARY KEY (id);


--
-- Name: sys_table_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_table_columns
    ADD CONSTRAINT sys_table_columns_pkey PRIMARY KEY (id);


--
-- Name: sys_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_users
    ADD CONSTRAINT sys_users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: wangyunlei
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM wangyunlei;
GRANT ALL ON SCHEMA public TO wangyunlei;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

