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


ALTER TABLE public.boxer_storages OWNER TO postgres;

--
-- Name: boxer_storages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE boxer_storages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boxer_storages_id_seq OWNER TO postgres;

--
-- Name: boxer_storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE boxer_storages_id_seq OWNED BY boxer_storages.id;


--
-- Name: boxers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE boxers (
    id integer NOT NULL,
    box_name character varying,
    box_seq character varying,
    box_row integer,
    box_column integer,
    remark text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.boxers OWNER TO postgres;

--
-- Name: boxers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE boxers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boxers_id_seq OWNER TO postgres;

--
-- Name: boxers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE boxers_id_seq OWNED BY boxers.id;


--
-- Name: container_types; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE container_types (
    id integer NOT NULL,
    container_catalog character varying,
    container_icon character varying,
    alia_name character varying,
    add_link_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.container_types OWNER TO postgres;

--
-- Name: container_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE container_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.container_types_id_seq OWNER TO postgres;

--
-- Name: container_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE container_types_id_seq OWNED BY container_types.id;


--
-- Name: containers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE containers (
    id integer NOT NULL,
    container_name character varying,
    container_type_id character varying,
    code_style integer,
    frame_num integer,
    container_rows integer,
    container_columns integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    container_seq character varying
);


ALTER TABLE public.containers OWNER TO postgres;

--
-- Name: containers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE containers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.containers_id_seq OWNER TO postgres;

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


ALTER TABLE public.frame_storages OWNER TO postgres;

--
-- Name: frame_storages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE frame_storages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.frame_storages_id_seq OWNER TO postgres;

--
-- Name: frame_storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE frame_storages_id_seq OWNED BY frame_storages.id;


--
-- Name: frames; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE frames (
    id integer NOT NULL,
    frame_seq character varying,
    frame_name character varying,
    frame_type character varying,
    code_order integer,
    horizontal_direction integer,
    vertiacal_direction integer,
    frame_rows integer,
    frame_columns integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.frames OWNER TO postgres;

--
-- Name: frames_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE frames_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.frames_id_seq OWNER TO postgres;

--
-- Name: frames_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE frames_id_seq OWNED BY frames.id;


--
-- Name: hospitals; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE hospitals (
    id integer NOT NULL,
    name character varying,
    province_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.hospitals OWNER TO postgres;

--
-- Name: hospitals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hospitals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hospitals_id_seq OWNER TO postgres;

--
-- Name: hospitals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE hospitals_id_seq OWNED BY hospitals.id;


--
-- Name: menu_libs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE menu_libs (
    id integer NOT NULL,
    name_zh character varying,
    menu_lib_id integer,
    link character varying,
    seq integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    icon_class character varying
);


ALTER TABLE public.menu_libs OWNER TO postgres;

--
-- Name: menu_libs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE menu_libs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_libs_id_seq OWNER TO postgres;

--
-- Name: menu_libs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE menu_libs_id_seq OWNED BY menu_libs.id;


--
-- Name: patient_cases; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patient_cases (
    id integer NOT NULL,
    case_number character varying,
    patient_info_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.patient_cases OWNER TO postgres;

--
-- Name: patient_cases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patient_cases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_cases_id_seq OWNER TO postgres;

--
-- Name: patient_cases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE patient_cases_id_seq OWNED BY patient_cases.id;


--
-- Name: patient_infos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patient_infos (
    id integer NOT NULL,
    patient_id character varying,
    patient_name character varying,
    gender character varying,
    birthday date,
    cell_phone character varying,
    home_phone character varying,
    other_phone character varying,
    zip_code character varying,
    address character varying,
    company_name character varying,
    company_phone character varying,
    company_zip character varying,
    company_address character varying,
    relationship_first character varying,
    relative_name_first character varying,
    relative_phone1_first character varying,
    relative_phone2_first character varying,
    relationship_second character varying,
    relative_name_second character varying,
    relative_phone1_second character varying,
    relative_phone2_second character varying,
    relationship_third character varying,
    relative_name_third character varying,
    relative_phone1_third character varying,
    relative_phone2_third character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.patient_infos OWNER TO postgres;

--
-- Name: patient_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patient_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_infos_id_seq OWNER TO postgres;

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


ALTER TABLE public.sample_out_logs OWNER TO postgres;

--
-- Name: sample_out_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_out_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_out_logs_id_seq OWNER TO postgres;

--
-- Name: sample_out_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sample_out_logs_id_seq OWNED BY sample_out_logs.id;


--
-- Name: sample_preout_logs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sample_preout_logs (
    id integer NOT NULL,
    operator_name character varying,
    user_name character varying,
    status character varying,
    sample_ids character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    num integer,
    proportpion integer,
    sys_user_id integer,
    use_for text
);


ALTER TABLE public.sample_preout_logs OWNER TO postgres;

--
-- Name: sample_preout_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_preout_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_preout_logs_id_seq OWNER TO postgres;

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
    user_name character varying,
    out_percent integer,
    left_volume integer,
    out_use_for text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sample_storage_logs OWNER TO postgres;

--
-- Name: sample_storage_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_storage_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_storage_logs_id_seq OWNER TO postgres;

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


ALTER TABLE public.sample_storages OWNER TO postgres;

--
-- Name: sample_storages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_storages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_storages_id_seq OWNER TO postgres;

--
-- Name: sample_storages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sample_storages_id_seq OWNED BY sample_storages.id;


--
-- Name: samples; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE samples (
    id integer NOT NULL,
    sample_no character varying,
    sample_seq character varying,
    user_id integer,
    storage_status character varying,
    freezing_thawing_times integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sample_storage_id integer,
    initial_sample_volume double precision,
    current_sample_volume double precision,
    patient_case_id integer
);


ALTER TABLE public.samples OWNER TO postgres;

--
-- Name: samples_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.samples_id_seq OWNER TO postgres;

--
-- Name: samples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE samples_id_seq OWNED BY samples.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: sys_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_roles (
    id integer NOT NULL,
    name character varying,
    remark text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sys_roles OWNER TO postgres;

--
-- Name: sys_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_roles_id_seq OWNER TO postgres;

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


ALTER TABLE public.sys_table_columns OWNER TO postgres;

--
-- Name: sys_table_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_table_columns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_table_columns_id_seq OWNER TO postgres;

--
-- Name: sys_table_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_table_columns_id_seq OWNED BY sys_table_columns.id;


--
-- Name: sys_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_users (
    id integer NOT NULL,
    username character varying,
    password character varying,
    gender character varying,
    birthday date,
    department_id integer,
    role_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sys_users OWNER TO postgres;

--
-- Name: sys_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_users_id_seq OWNER TO postgres;

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
2	1	\N	1	2015-10-28 11:17:45.864029	2015-10-28 11:17:45.864029
5	4	\N	1	2015-10-28 11:17:45.868883	2015-10-28 11:17:45.868883
6	5	\N	1	2015-10-28 11:17:45.870535	2015-10-28 11:17:45.870535
7	6	\N	1	2015-10-28 11:17:45.872175	2015-10-28 11:17:45.872175
8	7	\N	1	2015-10-28 11:17:45.873782	2015-10-28 11:17:45.873782
9	8	\N	1	2015-10-28 11:17:45.878042	2015-10-28 11:17:45.878042
10	9	\N	1	2015-10-28 11:17:45.880671	2015-10-28 11:17:45.880671
11	10	\N	1	2015-10-28 11:17:45.884598	2015-10-28 11:17:45.884598
12	11	\N	1	2015-10-28 11:17:45.888514	2015-10-28 11:17:45.888514
13	12	\N	1	2015-10-28 11:17:45.891684	2015-10-28 11:17:45.891684
14	13	\N	1	2015-10-28 11:17:45.895149	2015-10-28 11:17:45.895149
15	14	\N	1	2015-10-28 11:17:45.898303	2015-10-28 11:17:45.898303
16	15	\N	1	2015-10-28 11:17:45.900063	2015-10-28 11:17:45.900063
17	16	\N	1	2015-10-28 11:17:45.901333	2015-10-28 11:17:45.901333
18	17	\N	1	2015-10-28 11:17:45.902489	2015-10-28 11:17:45.902489
19	18	\N	1	2015-10-28 11:17:45.904136	2015-10-28 11:17:45.904136
20	19	\N	1	2015-10-28 11:17:45.905717	2015-10-28 11:17:45.905717
21	20	\N	1	2015-10-28 11:17:45.909283	2015-10-28 11:17:45.909283
22	21	\N	1	2015-10-28 11:17:45.912867	2015-10-28 11:17:45.912867
23	22	\N	1	2015-10-28 11:17:45.915016	2015-10-28 11:17:45.915016
24	23	\N	1	2015-10-28 11:17:45.916782	2015-10-28 11:17:45.916782
25	24	\N	1	2015-10-28 11:17:45.918621	2015-10-28 11:17:45.918621
27	1	\N	2	2015-10-28 14:16:29.617554	2015-10-28 14:16:29.617554
28	2	\N	2	2015-10-28 14:16:29.620434	2015-10-28 14:16:29.620434
29	3	\N	2	2015-10-28 14:16:29.623692	2015-10-28 14:16:29.623692
30	4	\N	2	2015-10-28 14:16:29.62647	2015-10-28 14:16:29.62647
31	5	\N	2	2015-10-28 14:16:29.629172	2015-10-28 14:16:29.629172
32	6	\N	2	2015-10-28 14:16:29.632337	2015-10-28 14:16:29.632337
33	7	\N	2	2015-10-28 14:16:29.635343	2015-10-28 14:16:29.635343
34	8	\N	2	2015-10-28 14:16:29.637958	2015-10-28 14:16:29.637958
35	9	\N	2	2015-10-28 14:16:29.639838	2015-10-28 14:16:29.639838
36	10	\N	2	2015-10-28 14:16:29.641763	2015-10-28 14:16:29.641763
37	11	\N	2	2015-10-28 14:16:29.643857	2015-10-28 14:16:29.643857
38	12	\N	2	2015-10-28 14:16:29.646117	2015-10-28 14:16:29.646117
39	13	\N	2	2015-10-28 14:16:29.648825	2015-10-28 14:16:29.648825
40	14	\N	2	2015-10-28 14:16:29.651466	2015-10-28 14:16:29.651466
41	15	\N	2	2015-10-28 14:16:29.653331	2015-10-28 14:16:29.653331
42	16	\N	2	2015-10-28 14:16:29.655254	2015-10-28 14:16:29.655254
43	17	\N	2	2015-10-28 14:16:29.657724	2015-10-28 14:16:29.657724
44	18	\N	2	2015-10-28 14:16:29.659906	2015-10-28 14:16:29.659906
45	19	\N	2	2015-10-28 14:16:29.662786	2015-10-28 14:16:29.662786
46	20	\N	2	2015-10-28 14:16:29.665309	2015-10-28 14:16:29.665309
47	21	\N	2	2015-10-28 14:16:29.667257	2015-10-28 14:16:29.667257
48	22	\N	2	2015-10-28 14:16:29.669633	2015-10-28 14:16:29.669633
49	23	\N	2	2015-10-28 14:16:29.671287	2015-10-28 14:16:29.671287
50	24	\N	2	2015-10-28 14:16:29.67317	2015-10-28 14:16:29.67317
51	0	\N	3	2015-10-28 14:41:07.083304	2015-10-28 14:41:07.083304
53	2	\N	3	2015-10-28 14:41:07.090131	2015-10-28 14:41:07.090131
54	3	\N	3	2015-10-28 14:41:07.09216	2015-10-28 14:41:07.09216
55	4	\N	3	2015-10-28 14:41:07.093862	2015-10-28 14:41:07.093862
56	5	\N	3	2015-10-28 14:41:07.09534	2015-10-28 14:41:07.09534
57	6	\N	3	2015-10-28 14:41:07.096619	2015-10-28 14:41:07.096619
58	7	\N	3	2015-10-28 14:41:07.097891	2015-10-28 14:41:07.097891
59	8	\N	3	2015-10-28 14:41:07.099946	2015-10-28 14:41:07.099946
60	9	\N	3	2015-10-28 14:41:07.102263	2015-10-28 14:41:07.102263
61	10	\N	3	2015-10-28 14:41:07.104758	2015-10-28 14:41:07.104758
62	11	\N	3	2015-10-28 14:41:07.107286	2015-10-28 14:41:07.107286
63	12	\N	3	2015-10-28 14:41:07.10912	2015-10-28 14:41:07.10912
64	13	\N	3	2015-10-28 14:41:07.111018	2015-10-28 14:41:07.111018
65	14	\N	3	2015-10-28 14:41:07.112633	2015-10-28 14:41:07.112633
66	15	\N	3	2015-10-28 14:41:07.114083	2015-10-28 14:41:07.114083
67	16	\N	3	2015-10-28 14:41:07.115419	2015-10-28 14:41:07.115419
68	17	\N	3	2015-10-28 14:41:07.116617	2015-10-28 14:41:07.116617
69	18	\N	3	2015-10-28 14:41:07.118403	2015-10-28 14:41:07.118403
70	19	\N	3	2015-10-28 14:41:07.120122	2015-10-28 14:41:07.120122
71	20	\N	3	2015-10-28 14:41:07.122059	2015-10-28 14:41:07.122059
72	21	\N	3	2015-10-28 14:41:07.12367	2015-10-28 14:41:07.12367
73	22	\N	3	2015-10-28 14:41:07.125567	2015-10-28 14:41:07.125567
74	23	\N	3	2015-10-28 14:41:07.127274	2015-10-28 14:41:07.127274
75	24	\N	3	2015-10-28 14:41:07.128704	2015-10-28 14:41:07.128704
76	25	\N	3	2015-10-28 14:41:07.129917	2015-10-28 14:41:07.129917
77	26	\N	3	2015-10-28 14:41:07.131381	2015-10-28 14:41:07.131381
78	27	\N	3	2015-10-28 14:41:07.132702	2015-10-28 14:41:07.132702
79	28	\N	3	2015-10-28 14:41:07.134232	2015-10-28 14:41:07.134232
80	29	\N	3	2015-10-28 14:41:07.135938	2015-10-28 14:41:07.135938
81	30	\N	3	2015-10-28 14:41:07.137698	2015-10-28 14:41:07.137698
82	31	\N	3	2015-10-28 14:41:07.139508	2015-10-28 14:41:07.139508
83	32	\N	3	2015-10-28 14:41:07.141078	2015-10-28 14:41:07.141078
84	33	\N	3	2015-10-28 14:41:07.142568	2015-10-28 14:41:07.142568
85	34	\N	3	2015-10-28 14:41:07.14381	2015-10-28 14:41:07.14381
86	35	\N	3	2015-10-28 14:41:07.14506	2015-10-28 14:41:07.14506
87	36	\N	3	2015-10-28 14:41:07.146457	2015-10-28 14:41:07.146457
88	37	\N	3	2015-10-28 14:41:07.147755	2015-10-28 14:41:07.147755
89	38	\N	3	2015-10-28 14:41:07.148943	2015-10-28 14:41:07.148943
90	39	\N	3	2015-10-28 14:41:07.150366	2015-10-28 14:41:07.150366
91	40	\N	3	2015-10-28 14:41:07.151911	2015-10-28 14:41:07.151911
92	41	\N	3	2015-10-28 14:41:07.153535	2015-10-28 14:41:07.153535
93	42	\N	3	2015-10-28 14:41:07.155413	2015-10-28 14:41:07.155413
94	43	\N	3	2015-10-28 14:41:07.156879	2015-10-28 14:41:07.156879
95	44	\N	3	2015-10-28 14:41:07.158241	2015-10-28 14:41:07.158241
26	0	\N	2	2015-10-28 14:16:29.611985	2015-10-28 14:16:29.611985
1	0	5	1	2015-10-28 11:17:45.85942	2015-10-28 15:51:33.821645
96	0	\N	4	2015-10-29 04:07:14.006062	2015-10-29 04:07:14.006062
97	1	\N	4	2015-10-29 04:07:14.007777	2015-10-29 04:07:14.007777
98	2	\N	4	2015-10-29 04:07:14.009418	2015-10-29 04:07:14.009418
99	3	\N	4	2015-10-29 04:07:14.010867	2015-10-29 04:07:14.010867
100	4	\N	4	2015-10-29 04:07:14.012772	2015-10-29 04:07:14.012772
101	5	\N	4	2015-10-29 04:07:14.014978	2015-10-29 04:07:14.014978
102	6	\N	4	2015-10-29 04:07:14.016933	2015-10-29 04:07:14.016933
104	8	\N	4	2015-10-29 04:07:14.020248	2015-10-29 04:07:14.020248
105	9	\N	4	2015-10-29 04:07:14.021883	2015-10-29 04:07:14.021883
106	10	\N	4	2015-10-29 04:07:14.023558	2015-10-29 04:07:14.023558
107	11	\N	4	2015-10-29 04:07:14.024871	2015-10-29 04:07:14.024871
108	12	\N	4	2015-10-29 04:07:14.026364	2015-10-29 04:07:14.026364
109	13	\N	4	2015-10-29 04:07:14.027928	2015-10-29 04:07:14.027928
110	14	\N	4	2015-10-29 04:07:14.029408	2015-10-29 04:07:14.029408
103	7	6	4	2015-10-29 04:07:14.018604	2015-10-29 04:07:43.512339
52	1	7	3	2015-10-28 14:41:07.087647	2015-10-29 04:09:26.132647
111	0	\N	5	2015-10-29 15:57:00.47	2015-10-29 15:57:00.47
112	1	\N	5	2015-10-29 15:57:00.478	2015-10-29 15:57:00.478
113	2	\N	5	2015-10-29 15:57:00.484	2015-10-29 15:57:00.484
114	3	\N	5	2015-10-29 15:57:00.489	2015-10-29 15:57:00.489
115	4	\N	5	2015-10-29 15:57:00.495	2015-10-29 15:57:00.495
116	5	\N	5	2015-10-29 15:57:00.503	2015-10-29 15:57:00.503
117	6	\N	5	2015-10-29 15:57:00.511	2015-10-29 15:57:00.511
118	7	\N	5	2015-10-29 15:57:00.518	2015-10-29 15:57:00.518
119	8	\N	5	2015-10-29 15:57:00.546	2015-10-29 15:57:00.546
120	9	\N	5	2015-10-29 15:57:00.554	2015-10-29 15:57:00.554
121	10	\N	5	2015-10-29 15:57:00.564	2015-10-29 15:57:00.564
122	11	\N	5	2015-10-29 15:57:00.57	2015-10-29 15:57:00.57
123	12	\N	5	2015-10-29 15:57:00.578	2015-10-29 15:57:00.578
124	13	\N	5	2015-10-29 15:57:00.584	2015-10-29 15:57:00.584
125	14	\N	5	2015-10-29 15:57:00.592	2015-10-29 15:57:00.592
126	15	\N	5	2015-10-29 15:57:00.597	2015-10-29 15:57:00.597
127	16	\N	5	2015-10-29 15:57:00.604	2015-10-29 15:57:00.604
128	17	\N	5	2015-10-29 15:57:00.614	2015-10-29 15:57:00.614
129	18	\N	5	2015-10-29 15:57:00.628	2015-10-29 15:57:00.628
130	19	\N	5	2015-10-29 15:57:00.631	2015-10-29 15:57:00.631
131	20	\N	5	2015-10-29 15:57:00.641	2015-10-29 15:57:00.641
132	21	\N	5	2015-10-29 15:57:00.641	2015-10-29 15:57:00.641
133	22	\N	5	2015-10-29 15:57:00.653	2015-10-29 15:57:00.653
134	23	\N	5	2015-10-29 15:57:00.662	2015-10-29 15:57:00.662
135	24	\N	5	2015-10-29 15:57:00.669	2015-10-29 15:57:00.669
136	25	\N	5	2015-10-29 15:57:00.679	2015-10-29 15:57:00.679
4	3	11	1	2015-10-28 11:17:45.867312	2015-11-03 10:50:59.818
137	26	\N	5	2015-10-29 15:57:00.686	2015-10-29 15:57:00.686
138	27	\N	5	2015-10-29 15:57:00.693	2015-10-29 15:57:00.693
139	28	\N	5	2015-10-29 15:57:00.698	2015-10-29 15:57:00.698
140	29	\N	5	2015-10-29 15:57:00.702	2015-10-29 15:57:00.702
141	0	\N	6	2015-10-29 16:00:49.364	2015-10-29 16:00:49.364
143	2	\N	6	2015-10-29 16:00:49.376	2015-10-29 16:00:49.376
144	3	\N	6	2015-10-29 16:00:49.383	2015-10-29 16:00:49.383
145	4	\N	6	2015-10-29 16:00:49.389	2015-10-29 16:00:49.389
146	5	\N	6	2015-10-29 16:00:49.394	2015-10-29 16:00:49.394
147	6	\N	6	2015-10-29 16:00:49.4	2015-10-29 16:00:49.4
148	7	\N	6	2015-10-29 16:00:49.404	2015-10-29 16:00:49.404
149	8	\N	6	2015-10-29 16:00:49.408	2015-10-29 16:00:49.408
150	9	\N	6	2015-10-29 16:00:49.413	2015-10-29 16:00:49.413
151	10	\N	6	2015-10-29 16:00:49.417	2015-10-29 16:00:49.417
152	11	\N	6	2015-10-29 16:00:49.421	2015-10-29 16:00:49.421
153	12	\N	6	2015-10-29 16:00:49.425	2015-10-29 16:00:49.425
154	13	\N	6	2015-10-29 16:00:49.432	2015-10-29 16:00:49.432
155	14	\N	6	2015-10-29 16:00:49.436	2015-10-29 16:00:49.436
156	15	\N	6	2015-10-29 16:00:49.441	2015-10-29 16:00:49.441
157	16	\N	6	2015-10-29 16:00:49.448	2015-10-29 16:00:49.448
158	17	\N	6	2015-10-29 16:00:49.455	2015-10-29 16:00:49.455
159	18	\N	6	2015-10-29 16:00:49.461	2015-10-29 16:00:49.461
160	19	\N	6	2015-10-29 16:00:49.467	2015-10-29 16:00:49.467
161	20	\N	6	2015-10-29 16:00:49.472	2015-10-29 16:00:49.472
162	21	\N	6	2015-10-29 16:00:49.477	2015-10-29 16:00:49.477
163	22	\N	6	2015-10-29 16:00:49.483	2015-10-29 16:00:49.483
164	23	\N	6	2015-10-29 16:00:49.487	2015-10-29 16:00:49.487
165	24	\N	6	2015-10-29 16:00:49.492	2015-10-29 16:00:49.492
142	1	8	6	2015-10-29 16:00:49.371	2015-10-29 16:02:07.937
3	2	9	1	2015-10-28 11:17:45.865758	2015-10-29 17:59:49.45
166	0	\N	7	2015-10-30 02:19:40.628	2015-10-30 02:19:40.628
168	2	\N	7	2015-10-30 02:19:40.641	2015-10-30 02:19:40.641
169	3	\N	7	2015-10-30 02:19:40.647	2015-10-30 02:19:40.647
170	4	\N	7	2015-10-30 02:19:40.652	2015-10-30 02:19:40.652
171	5	\N	7	2015-10-30 02:19:40.657	2015-10-30 02:19:40.657
172	6	\N	7	2015-10-30 02:19:40.662	2015-10-30 02:19:40.662
173	7	\N	7	2015-10-30 02:19:40.668	2015-10-30 02:19:40.668
174	8	\N	7	2015-10-30 02:19:40.673	2015-10-30 02:19:40.673
175	9	\N	7	2015-10-30 02:19:40.677	2015-10-30 02:19:40.677
176	10	\N	7	2015-10-30 02:19:40.683	2015-10-30 02:19:40.683
177	11	\N	7	2015-10-30 02:19:40.687	2015-10-30 02:19:40.687
178	12	\N	7	2015-10-30 02:19:40.692	2015-10-30 02:19:40.692
179	13	\N	7	2015-10-30 02:19:40.7	2015-10-30 02:19:40.7
180	14	\N	7	2015-10-30 02:19:40.708	2015-10-30 02:19:40.708
181	15	\N	7	2015-10-30 02:19:40.716	2015-10-30 02:19:40.716
182	16	\N	7	2015-10-30 02:19:40.722	2015-10-30 02:19:40.722
183	17	\N	7	2015-10-30 02:19:40.727	2015-10-30 02:19:40.727
184	18	\N	7	2015-10-30 02:19:40.735	2015-10-30 02:19:40.735
185	19	\N	7	2015-10-30 02:19:40.744	2015-10-30 02:19:40.744
186	20	\N	7	2015-10-30 02:19:40.751	2015-10-30 02:19:40.751
187	21	\N	7	2015-10-30 02:19:40.757	2015-10-30 02:19:40.757
188	22	\N	7	2015-10-30 02:19:40.763	2015-10-30 02:19:40.763
189	23	\N	7	2015-10-30 02:19:40.769	2015-10-30 02:19:40.769
190	24	\N	7	2015-10-30 02:19:40.775	2015-10-30 02:19:40.775
167	1	10	7	2015-10-30 02:19:40.635	2015-10-30 02:20:21.926
191	0	\N	8	2015-11-04 02:24:00.15	2015-11-04 02:24:00.15
195	4	\N	8	2015-11-04 02:24:00.234	2015-11-04 02:24:00.234
196	5	\N	8	2015-11-04 02:24:00.244	2015-11-04 02:24:00.244
197	6	\N	8	2015-11-04 02:24:00.269	2015-11-04 02:24:00.269
198	7	\N	8	2015-11-04 02:24:00.275	2015-11-04 02:24:00.275
199	8	\N	8	2015-11-04 02:24:00.289	2015-11-04 02:24:00.289
200	9	\N	8	2015-11-04 02:24:00.296	2015-11-04 02:24:00.296
201	10	\N	8	2015-11-04 02:24:00.302	2015-11-04 02:24:00.302
202	11	\N	8	2015-11-04 02:24:00.308	2015-11-04 02:24:00.308
203	12	\N	8	2015-11-04 02:24:00.316	2015-11-04 02:24:00.316
204	13	\N	8	2015-11-04 02:24:00.321	2015-11-04 02:24:00.321
205	14	\N	8	2015-11-04 02:24:00.329	2015-11-04 02:24:00.329
192	1	12	8	2015-11-04 02:24:00.206	2015-11-04 02:24:29.049
206	0	\N	9	2015-11-04 05:45:39.903	2015-11-04 05:45:39.903
207	1	\N	9	2015-11-04 05:45:39.909	2015-11-04 05:45:39.909
208	2	\N	9	2015-11-04 05:45:39.913	2015-11-04 05:45:39.913
209	3	\N	9	2015-11-04 05:45:39.917	2015-11-04 05:45:39.917
210	4	\N	9	2015-11-04 05:45:39.921	2015-11-04 05:45:39.921
211	5	\N	9	2015-11-04 05:45:39.927	2015-11-04 05:45:39.927
212	6	\N	9	2015-11-04 05:45:39.932	2015-11-04 05:45:39.932
214	8	\N	9	2015-11-04 05:45:39.942	2015-11-04 05:45:39.942
215	9	\N	9	2015-11-04 05:45:39.946	2015-11-04 05:45:39.946
216	10	\N	9	2015-11-04 05:45:39.951	2015-11-04 05:45:39.951
217	11	\N	9	2015-11-04 05:45:39.956	2015-11-04 05:45:39.956
218	12	\N	9	2015-11-04 05:45:39.961	2015-11-04 05:45:39.961
219	13	\N	9	2015-11-04 05:45:39.967	2015-11-04 05:45:39.967
220	14	\N	9	2015-11-04 05:45:39.976	2015-11-04 05:45:39.976
213	7	13	9	2015-11-04 05:45:39.937	2015-11-04 05:46:16.389
221	0	\N	10	2015-11-04 08:41:48.538	2015-11-04 08:41:48.538
222	1	\N	10	2015-11-04 08:41:48.592	2015-11-04 08:41:48.592
223	2	\N	10	2015-11-04 08:41:48.599	2015-11-04 08:41:48.599
224	3	\N	10	2015-11-04 08:41:48.607	2015-11-04 08:41:48.607
225	4	\N	10	2015-11-04 08:41:48.614	2015-11-04 08:41:48.614
226	5	\N	10	2015-11-04 08:41:48.621	2015-11-04 08:41:48.621
227	6	\N	10	2015-11-04 08:41:48.628	2015-11-04 08:41:48.628
228	7	\N	10	2015-11-04 08:41:48.637	2015-11-04 08:41:48.637
229	8	\N	10	2015-11-04 08:41:48.644	2015-11-04 08:41:48.644
230	9	\N	10	2015-11-04 08:41:48.652	2015-11-04 08:41:48.652
231	10	\N	10	2015-11-04 08:41:48.659	2015-11-04 08:41:48.659
232	11	\N	10	2015-11-04 08:41:48.685	2015-11-04 08:41:48.685
233	12	\N	10	2015-11-04 08:41:48.698	2015-11-04 08:41:48.698
234	13	\N	10	2015-11-04 08:41:48.707	2015-11-04 08:41:48.707
235	14	\N	10	2015-11-04 08:41:48.714	2015-11-04 08:41:48.714
236	15	\N	10	2015-11-04 08:41:48.724	2015-11-04 08:41:48.724
237	16	\N	10	2015-11-04 08:41:48.732	2015-11-04 08:41:48.732
238	17	\N	10	2015-11-04 08:41:48.739	2015-11-04 08:41:48.739
239	18	\N	10	2015-11-04 08:41:48.755	2015-11-04 08:41:48.755
240	19	\N	10	2015-11-04 08:41:48.755	2015-11-04 08:41:48.755
241	20	\N	10	2015-11-04 08:41:48.774	2015-11-04 08:41:48.774
242	21	\N	10	2015-11-04 08:41:48.783	2015-11-04 08:41:48.783
243	22	\N	10	2015-11-04 08:41:48.792	2015-11-04 08:41:48.792
244	23	\N	10	2015-11-04 08:41:48.805	2015-11-04 08:41:48.805
245	24	\N	10	2015-11-04 08:41:48.82	2015-11-04 08:41:48.82
246	25	\N	10	2015-11-04 08:41:48.841	2015-11-04 08:41:48.841
247	26	\N	10	2015-11-04 08:41:48.857	2015-11-04 08:41:48.857
248	27	\N	10	2015-11-04 08:41:48.869	2015-11-04 08:41:48.869
249	28	\N	10	2015-11-04 08:41:48.879	2015-11-04 08:41:48.879
250	29	\N	10	2015-11-04 08:41:48.889	2015-11-04 08:41:48.889
251	0	\N	11	2015-11-04 08:43:53.195	2015-11-04 08:43:53.195
252	1	\N	11	2015-11-04 08:43:53.2	2015-11-04 08:43:53.2
253	2	\N	11	2015-11-04 08:43:53.206	2015-11-04 08:43:53.206
254	3	\N	11	2015-11-04 08:43:53.211	2015-11-04 08:43:53.211
255	4	\N	11	2015-11-04 08:43:53.217	2015-11-04 08:43:53.217
256	5	\N	11	2015-11-04 08:43:53.224	2015-11-04 08:43:53.224
257	6	\N	11	2015-11-04 08:43:53.229	2015-11-04 08:43:53.229
258	7	\N	11	2015-11-04 08:43:53.233	2015-11-04 08:43:53.233
259	8	\N	11	2015-11-04 08:43:53.239	2015-11-04 08:43:53.239
260	9	\N	11	2015-11-04 08:43:53.245	2015-11-04 08:43:53.245
261	10	\N	11	2015-11-04 08:43:53.25	2015-11-04 08:43:53.25
262	11	\N	11	2015-11-04 08:43:53.257	2015-11-04 08:43:53.257
263	12	\N	11	2015-11-04 08:43:53.275	2015-11-04 08:43:53.275
264	13	\N	11	2015-11-04 08:43:53.282	2015-11-04 08:43:53.282
265	14	\N	11	2015-11-04 08:43:53.288	2015-11-04 08:43:53.288
266	15	\N	11	2015-11-04 08:43:53.298	2015-11-04 08:43:53.298
267	16	\N	11	2015-11-04 08:43:53.305	2015-11-04 08:43:53.305
193	2	14	8	2015-11-04 02:24:00.215	2015-11-05 15:05:59.556
194	3	15	8	2015-11-04 02:24:00.223	2015-11-05 15:06:41.871
268	17	\N	11	2015-11-04 08:43:53.312	2015-11-04 08:43:53.312
269	18	\N	11	2015-11-04 08:43:53.321	2015-11-04 08:43:53.321
270	19	\N	11	2015-11-04 08:43:53.329	2015-11-04 08:43:53.329
271	20	\N	11	2015-11-04 08:43:53.34	2015-11-04 08:43:53.34
272	21	\N	11	2015-11-04 08:43:53.348	2015-11-04 08:43:53.348
273	22	\N	11	2015-11-04 08:43:53.355	2015-11-04 08:43:53.355
274	23	\N	11	2015-11-04 08:43:53.377	2015-11-04 08:43:53.377
275	24	\N	11	2015-11-04 08:43:53.384	2015-11-04 08:43:53.384
276	0	\N	12	2015-11-04 08:44:32.515	2015-11-04 08:44:32.515
277	1	\N	12	2015-11-04 08:44:32.527	2015-11-04 08:44:32.527
278	2	\N	12	2015-11-04 08:44:32.531	2015-11-04 08:44:32.531
279	3	\N	12	2015-11-04 08:44:32.536	2015-11-04 08:44:32.536
280	4	\N	12	2015-11-04 08:44:32.543	2015-11-04 08:44:32.543
281	5	\N	12	2015-11-04 08:44:32.549	2015-11-04 08:44:32.549
282	6	\N	12	2015-11-04 08:44:32.553	2015-11-04 08:44:32.553
283	7	\N	12	2015-11-04 08:44:32.56	2015-11-04 08:44:32.56
284	8	\N	12	2015-11-04 08:44:32.564	2015-11-04 08:44:32.564
285	9	\N	12	2015-11-04 08:44:32.569	2015-11-04 08:44:32.569
286	10	\N	12	2015-11-04 08:44:32.574	2015-11-04 08:44:32.574
287	11	\N	12	2015-11-04 08:44:32.579	2015-11-04 08:44:32.579
288	12	\N	12	2015-11-04 08:44:32.583	2015-11-04 08:44:32.583
289	13	\N	12	2015-11-04 08:44:32.588	2015-11-04 08:44:32.588
290	14	\N	12	2015-11-04 08:44:32.594	2015-11-04 08:44:32.594
291	15	\N	12	2015-11-04 08:44:32.599	2015-11-04 08:44:32.599
292	16	\N	12	2015-11-04 08:44:32.605	2015-11-04 08:44:32.605
293	17	\N	12	2015-11-04 08:44:32.612	2015-11-04 08:44:32.612
294	18	\N	12	2015-11-04 08:44:32.618	2015-11-04 08:44:32.618
295	19	\N	12	2015-11-04 08:44:32.627	2015-11-04 08:44:32.627
296	20	\N	12	2015-11-04 08:44:32.632	2015-11-04 08:44:32.632
297	21	\N	12	2015-11-04 08:44:32.636	2015-11-04 08:44:32.636
298	22	\N	12	2015-11-04 08:44:32.641	2015-11-04 08:44:32.641
299	23	\N	12	2015-11-04 08:44:32.645	2015-11-04 08:44:32.645
300	24	\N	12	2015-11-04 08:44:32.65	2015-11-04 08:44:32.65
301	25	\N	12	2015-11-04 08:44:32.654	2015-11-04 08:44:32.654
302	26	\N	12	2015-11-04 08:44:32.661	2015-11-04 08:44:32.661
303	27	\N	12	2015-11-04 08:44:32.668	2015-11-04 08:44:32.668
304	28	\N	12	2015-11-04 08:44:32.674	2015-11-04 08:44:32.674
305	29	\N	12	2015-11-04 08:44:32.681	2015-11-04 08:44:32.681
306	30	\N	12	2015-11-04 08:44:32.686	2015-11-04 08:44:32.686
307	31	\N	12	2015-11-04 08:44:32.694	2015-11-04 08:44:32.694
308	32	\N	12	2015-11-04 08:44:32.698	2015-11-04 08:44:32.698
309	33	\N	12	2015-11-04 08:44:32.702	2015-11-04 08:44:32.702
310	34	\N	12	2015-11-04 08:44:32.708	2015-11-04 08:44:32.708
311	35	\N	12	2015-11-04 08:44:32.713	2015-11-04 08:44:32.713
312	36	\N	12	2015-11-04 08:44:32.717	2015-11-04 08:44:32.717
313	37	\N	12	2015-11-04 08:44:32.722	2015-11-04 08:44:32.722
314	38	\N	12	2015-11-04 08:44:32.726	2015-11-04 08:44:32.726
315	39	\N	12	2015-11-04 08:44:32.73	2015-11-04 08:44:32.73
316	40	\N	12	2015-11-04 08:44:32.734	2015-11-04 08:44:32.734
317	41	\N	12	2015-11-04 08:44:32.74	2015-11-04 08:44:32.74
318	42	\N	12	2015-11-04 08:44:32.743	2015-11-04 08:44:32.743
319	43	\N	12	2015-11-04 08:44:32.747	2015-11-04 08:44:32.747
320	44	\N	12	2015-11-04 08:44:32.752	2015-11-04 08:44:32.752
321	45	\N	12	2015-11-04 08:44:32.757	2015-11-04 08:44:32.757
322	46	\N	12	2015-11-04 08:44:32.761	2015-11-04 08:44:32.761
323	47	\N	12	2015-11-04 08:44:32.765	2015-11-04 08:44:32.765
324	48	\N	12	2015-11-04 08:44:32.769	2015-11-04 08:44:32.769
325	49	\N	12	2015-11-04 08:44:32.774	2015-11-04 08:44:32.774
326	50	\N	12	2015-11-04 08:44:32.779	2015-11-04 08:44:32.779
327	51	\N	12	2015-11-04 08:44:32.783	2015-11-04 08:44:32.783
328	52	\N	12	2015-11-04 08:44:32.787	2015-11-04 08:44:32.787
329	53	\N	12	2015-11-04 08:44:32.794	2015-11-04 08:44:32.794
330	54	\N	12	2015-11-04 08:44:32.798	2015-11-04 08:44:32.798
331	55	\N	12	2015-11-04 08:44:32.803	2015-11-04 08:44:32.803
332	56	\N	12	2015-11-04 08:44:32.809	2015-11-04 08:44:32.809
333	57	\N	12	2015-11-04 08:44:32.813	2015-11-04 08:44:32.813
334	58	\N	12	2015-11-04 08:44:32.817	2015-11-04 08:44:32.817
335	59	\N	12	2015-11-04 08:44:32.822	2015-11-04 08:44:32.822
336	60	\N	12	2015-11-04 08:44:32.827	2015-11-04 08:44:32.827
337	61	\N	12	2015-11-04 08:44:32.831	2015-11-04 08:44:32.831
338	62	\N	12	2015-11-04 08:44:32.836	2015-11-04 08:44:32.836
339	63	\N	12	2015-11-04 08:44:32.845	2015-11-04 08:44:32.845
340	0	\N	13	2015-11-04 08:45:38.492	2015-11-04 08:45:38.492
341	1	\N	13	2015-11-04 08:45:38.496	2015-11-04 08:45:38.496
342	2	\N	13	2015-11-04 08:45:38.501	2015-11-04 08:45:38.501
343	3	\N	13	2015-11-04 08:45:38.507	2015-11-04 08:45:38.507
344	4	\N	13	2015-11-04 08:45:38.511	2015-11-04 08:45:38.511
345	5	\N	13	2015-11-04 08:45:38.515	2015-11-04 08:45:38.515
346	0	\N	14	2015-11-13 07:31:01.241	2015-11-13 07:31:01.241
347	1	\N	14	2015-11-13 07:31:01.309	2015-11-13 07:31:01.309
348	2	\N	14	2015-11-13 07:31:01.316	2015-11-13 07:31:01.316
349	3	\N	14	2015-11-13 07:31:01.324	2015-11-13 07:31:01.324
350	4	\N	14	2015-11-13 07:31:01.332	2015-11-13 07:31:01.332
\.


--
-- Name: boxer_storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('boxer_storages_id_seq', 350, true);


--
-- Data for Name: boxers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY boxers (id, box_name, box_seq, box_row, box_column, remark, created_at, updated_at) FROM stdin;
5	盒子1		9	9		2015-10-28 15:51:33.817314	2015-10-28 15:51:33.817314
6	盒子A		8	8		2015-10-29 04:07:43.507705	2015-10-29 04:07:43.507705
7	盒子B		3	4		2015-10-29 04:09:26.130382	2015-10-29 04:09:26.130382
8	B11		9	9		2015-10-29 16:02:07.922	2015-10-29 16:02:07.922
9	B33		9	9		2015-10-29 17:59:49.439	2015-10-29 17:59:49.439
10	B13		9	9		2015-10-30 02:20:21.92	2015-10-30 02:20:21.92
11	B22		9	9		2015-11-03 10:50:59.767	2015-11-03 10:50:59.767
12	B1		9	9		2015-11-04 02:24:29.013	2015-11-04 02:24:29.013
13		b11	9	9		2015-11-04 05:46:16.382	2015-11-04 05:46:16.382
14	qwwq		8	8		2015-11-05 15:05:59.515	2015-11-05 15:05:59.515
15	wewe		9	9		2015-11-05 15:06:41.842	2015-11-05 15:06:41.842
\.


--
-- Name: boxers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('boxers_id_seq', 15, true);


--
-- Data for Name: container_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY container_types (id, container_catalog, container_icon, alia_name, add_link_url, created_at, updated_at) FROM stdin;
1	立式冰箱	\N			2015-09-10 08:44:24.862145	2015-09-10 08:44:24.862145
2	卧式冰箱	\N			2015-10-27 11:50:09.561283	2015-10-27 11:50:09.561283
3	液氮罐	\N			2015-10-28 02:58:43.554261	2015-10-28 02:58:43.554261
\.


--
-- Name: container_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('container_types_id_seq', 3, true);


--
-- Data for Name: containers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY containers (id, container_name, container_type_id, code_style, frame_num, container_rows, container_columns, created_at, updated_at, container_seq) FROM stdin;
1	立式冰箱1	1	\N	\N	9	5	2015-10-28 06:57:45.060263	2015-10-28 06:57:45.060263	\N
2	立式冰箱2	1	\N	\N	9	5	2015-10-28 07:48:02.854448	2015-10-28 07:48:02.854448	\N
3	立式冰箱3	1	\N	\N	3	2	2015-10-29 04:06:40.278246	2015-10-29 04:06:40.278246	\N
4	海尔冰箱1	1	\N	\N	6	4	2015-10-29 16:00:27.142	2015-10-29 16:00:27.142	\N
5	冰箱4	1	\N	\N	7	9	2015-10-30 02:18:24.882	2015-10-30 02:18:24.882	\N
6	冰箱5	1	\N	\N	4	5	2015-11-04 02:18:59.519	2015-11-04 02:18:59.519	\N
7	冰箱6	1	\N	\N	9	5	2015-11-04 05:45:10.136	2015-11-04 05:45:10.136	\N
8	卧式冰箱1	2	\N	\N	5	9	2015-11-13 06:55:07.991	2015-11-13 06:55:07.991	\N
9	液氮罐1	3	\N	6	\N	\N	2015-11-13 08:33:03.048	2015-11-13 08:33:03.048	\N
\.


--
-- Name: containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('containers_id_seq', 9, true);


--
-- Data for Name: frame_storages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY frame_storages (id, position_index, frame_id, container_id, created_at, updated_at) FROM stdin;
4	3	\N	1	2015-10-28 06:57:45.183645	2015-10-28 06:57:45.183645
5	4	\N	1	2015-10-28 06:57:45.188207	2015-10-28 06:57:45.188207
6	5	\N	1	2015-10-28 06:57:45.196067	2015-10-28 06:57:45.196067
7	6	\N	1	2015-10-28 06:57:45.205698	2015-10-28 06:57:45.205698
8	7	\N	1	2015-10-28 06:57:45.224616	2015-10-28 06:57:45.224616
9	8	\N	1	2015-10-28 06:57:45.228225	2015-10-28 06:57:45.228225
10	9	\N	1	2015-10-28 06:57:45.236391	2015-10-28 06:57:45.236391
11	10	\N	1	2015-10-28 06:57:45.240146	2015-10-28 06:57:45.240146
12	11	\N	1	2015-10-28 06:57:45.243985	2015-10-28 06:57:45.243985
13	12	\N	1	2015-10-28 06:57:45.250103	2015-10-28 06:57:45.250103
14	13	\N	1	2015-10-28 06:57:45.254078	2015-10-28 06:57:45.254078
15	14	\N	1	2015-10-28 06:57:45.258706	2015-10-28 06:57:45.258706
16	15	\N	1	2015-10-28 06:57:45.262524	2015-10-28 06:57:45.262524
17	16	\N	1	2015-10-28 06:57:45.267869	2015-10-28 06:57:45.267869
18	17	\N	1	2015-10-28 06:57:45.271697	2015-10-28 06:57:45.271697
19	18	\N	1	2015-10-28 06:57:45.27636	2015-10-28 06:57:45.27636
20	19	\N	1	2015-10-28 06:57:45.281688	2015-10-28 06:57:45.281688
21	20	\N	1	2015-10-28 06:57:45.286739	2015-10-28 06:57:45.286739
22	21	\N	1	2015-10-28 06:57:45.291151	2015-10-28 06:57:45.291151
23	22	\N	1	2015-10-28 06:57:45.294024	2015-10-28 06:57:45.294024
24	23	\N	1	2015-10-28 06:57:45.296818	2015-10-28 06:57:45.296818
25	24	\N	1	2015-10-28 06:57:45.300442	2015-10-28 06:57:45.300442
26	25	\N	1	2015-10-28 06:57:45.304881	2015-10-28 06:57:45.304881
27	26	\N	1	2015-10-28 06:57:45.308301	2015-10-28 06:57:45.308301
28	27	\N	1	2015-10-28 06:57:45.318088	2015-10-28 06:57:45.318088
29	28	\N	1	2015-10-28 06:57:45.322285	2015-10-28 06:57:45.322285
30	29	\N	1	2015-10-28 06:57:45.325935	2015-10-28 06:57:45.325935
31	30	\N	1	2015-10-28 06:57:45.328301	2015-10-28 06:57:45.328301
32	31	\N	1	2015-10-28 06:57:45.331504	2015-10-28 06:57:45.331504
33	32	\N	1	2015-10-28 06:57:45.33479	2015-10-28 06:57:45.33479
34	33	\N	1	2015-10-28 06:57:45.337682	2015-10-28 06:57:45.337682
35	34	\N	1	2015-10-28 06:57:45.340348	2015-10-28 06:57:45.340348
36	35	\N	1	2015-10-28 06:57:45.343368	2015-10-28 06:57:45.343368
37	36	\N	1	2015-10-28 06:57:45.346663	2015-10-28 06:57:45.346663
38	37	\N	1	2015-10-28 06:57:45.35083	2015-10-28 06:57:45.35083
39	38	\N	1	2015-10-28 06:57:45.35383	2015-10-28 06:57:45.35383
40	39	\N	1	2015-10-28 06:57:45.356847	2015-10-28 06:57:45.356847
41	40	\N	1	2015-10-28 06:57:45.360216	2015-10-28 06:57:45.360216
42	41	\N	1	2015-10-28 06:57:45.366974	2015-10-28 06:57:45.366974
43	42	\N	1	2015-10-28 06:57:45.371208	2015-10-28 06:57:45.371208
44	43	\N	1	2015-10-28 06:57:45.373846	2015-10-28 06:57:45.373846
45	44	\N	1	2015-10-28 06:57:45.376282	2015-10-28 06:57:45.376282
46	0	\N	2	2015-10-28 07:48:02.877684	2015-10-28 07:48:02.877684
47	1	\N	2	2015-10-28 07:48:02.896658	2015-10-28 07:48:02.896658
49	3	\N	2	2015-10-28 07:48:02.903177	2015-10-28 07:48:02.903177
50	4	\N	2	2015-10-28 07:48:02.905699	2015-10-28 07:48:02.905699
51	5	\N	2	2015-10-28 07:48:02.907956	2015-10-28 07:48:02.907956
52	6	\N	2	2015-10-28 07:48:02.911611	2015-10-28 07:48:02.911611
53	7	\N	2	2015-10-28 07:48:02.91542	2015-10-28 07:48:02.91542
54	8	\N	2	2015-10-28 07:48:02.918573	2015-10-28 07:48:02.918573
55	9	\N	2	2015-10-28 07:48:02.921597	2015-10-28 07:48:02.921597
56	10	\N	2	2015-10-28 07:48:02.923997	2015-10-28 07:48:02.923997
57	11	\N	2	2015-10-28 07:48:02.92728	2015-10-28 07:48:02.92728
58	12	\N	2	2015-10-28 07:48:02.931354	2015-10-28 07:48:02.931354
59	13	\N	2	2015-10-28 07:48:02.934093	2015-10-28 07:48:02.934093
60	14	\N	2	2015-10-28 07:48:02.936578	2015-10-28 07:48:02.936578
61	15	\N	2	2015-10-28 07:48:02.939263	2015-10-28 07:48:02.939263
62	16	\N	2	2015-10-28 07:48:02.942443	2015-10-28 07:48:02.942443
63	17	\N	2	2015-10-28 07:48:02.945946	2015-10-28 07:48:02.945946
64	18	\N	2	2015-10-28 07:48:02.949221	2015-10-28 07:48:02.949221
65	19	\N	2	2015-10-28 07:48:02.952798	2015-10-28 07:48:02.952798
66	20	\N	2	2015-10-28 07:48:02.954883	2015-10-28 07:48:02.954883
67	21	\N	2	2015-10-28 07:48:02.956997	2015-10-28 07:48:02.956997
68	22	\N	2	2015-10-28 07:48:02.959765	2015-10-28 07:48:02.959765
69	23	\N	2	2015-10-28 07:48:02.963836	2015-10-28 07:48:02.963836
70	24	\N	2	2015-10-28 07:48:02.966879	2015-10-28 07:48:02.966879
71	25	\N	2	2015-10-28 07:48:02.968967	2015-10-28 07:48:02.968967
72	26	\N	2	2015-10-28 07:48:02.971145	2015-10-28 07:48:02.971145
73	27	\N	2	2015-10-28 07:48:02.973513	2015-10-28 07:48:02.973513
74	28	\N	2	2015-10-28 07:48:02.977888	2015-10-28 07:48:02.977888
75	29	\N	2	2015-10-28 07:48:02.982036	2015-10-28 07:48:02.982036
76	30	\N	2	2015-10-28 07:48:02.984849	2015-10-28 07:48:02.984849
77	31	\N	2	2015-10-28 07:48:02.98729	2015-10-28 07:48:02.98729
78	32	\N	2	2015-10-28 07:48:02.989559	2015-10-28 07:48:02.989559
79	33	\N	2	2015-10-28 07:48:02.99182	2015-10-28 07:48:02.99182
80	34	\N	2	2015-10-28 07:48:02.996701	2015-10-28 07:48:02.996701
81	35	\N	2	2015-10-28 07:48:03.001107	2015-10-28 07:48:03.001107
82	36	\N	2	2015-10-28 07:48:03.003964	2015-10-28 07:48:03.003964
83	37	\N	2	2015-10-28 07:48:03.006529	2015-10-28 07:48:03.006529
84	38	\N	2	2015-10-28 07:48:03.01218	2015-10-28 07:48:03.01218
85	39	\N	2	2015-10-28 07:48:03.015318	2015-10-28 07:48:03.015318
86	40	\N	2	2015-10-28 07:48:03.017936	2015-10-28 07:48:03.017936
87	41	\N	2	2015-10-28 07:48:03.020231	2015-10-28 07:48:03.020231
88	42	\N	2	2015-10-28 07:48:03.022324	2015-10-28 07:48:03.022324
89	43	\N	2	2015-10-28 07:48:03.024903	2015-10-28 07:48:03.024903
90	44	\N	2	2015-10-28 07:48:03.028392	2015-10-28 07:48:03.028392
3	2	1	1	2015-10-28 06:57:45.179503	2015-10-28 11:17:45.848378
1	0	2	1	2015-10-28 06:57:45.166191	2015-10-28 14:16:29.597186
2	1	3	1	2015-10-28 06:57:45.175022	2015-10-28 14:41:07.072472
92	1	\N	3	2015-10-29 04:06:40.303604	2015-10-29 04:06:40.303604
93	2	\N	3	2015-10-29 04:06:40.306023	2015-10-29 04:06:40.306023
94	3	\N	3	2015-10-29 04:06:40.308208	2015-10-29 04:06:40.308208
95	4	\N	3	2015-10-29 04:06:40.310617	2015-10-29 04:06:40.310617
96	5	\N	3	2015-10-29 04:06:40.313305	2015-10-29 04:06:40.313305
91	0	4	3	2015-10-29 04:06:40.30043	2015-10-29 04:07:14.002938
48	2	5	2	2015-10-28 07:48:02.900336	2015-10-29 15:57:00.461
98	1	\N	4	2015-10-29 16:00:27.245	2015-10-29 16:00:27.245
99	2	\N	4	2015-10-29 16:00:27.263	2015-10-29 16:00:27.263
100	3	\N	4	2015-10-29 16:00:27.277	2015-10-29 16:00:27.277
101	4	\N	4	2015-10-29 16:00:27.286	2015-10-29 16:00:27.286
102	5	\N	4	2015-10-29 16:00:27.294	2015-10-29 16:00:27.294
103	6	\N	4	2015-10-29 16:00:27.302	2015-10-29 16:00:27.302
104	7	\N	4	2015-10-29 16:00:27.309	2015-10-29 16:00:27.309
105	8	\N	4	2015-10-29 16:00:27.316	2015-10-29 16:00:27.316
106	9	\N	4	2015-10-29 16:00:27.321	2015-10-29 16:00:27.321
107	10	\N	4	2015-10-29 16:00:27.327	2015-10-29 16:00:27.327
108	11	\N	4	2015-10-29 16:00:27.333	2015-10-29 16:00:27.333
109	12	\N	4	2015-10-29 16:00:27.341	2015-10-29 16:00:27.341
110	13	\N	4	2015-10-29 16:00:27.349	2015-10-29 16:00:27.349
111	14	\N	4	2015-10-29 16:00:27.36	2015-10-29 16:00:27.36
112	15	\N	4	2015-10-29 16:00:27.371	2015-10-29 16:00:27.371
113	16	\N	4	2015-10-29 16:00:27.378	2015-10-29 16:00:27.378
114	17	\N	4	2015-10-29 16:00:27.388	2015-10-29 16:00:27.388
115	18	\N	4	2015-10-29 16:00:27.397	2015-10-29 16:00:27.397
116	19	\N	4	2015-10-29 16:00:27.411	2015-10-29 16:00:27.411
117	20	\N	4	2015-10-29 16:00:27.421	2015-10-29 16:00:27.421
118	21	\N	4	2015-10-29 16:00:27.428	2015-10-29 16:00:27.428
119	22	\N	4	2015-10-29 16:00:27.436	2015-10-29 16:00:27.436
120	23	\N	4	2015-10-29 16:00:27.445	2015-10-29 16:00:27.445
97	0	6	4	2015-10-29 16:00:27.223	2015-10-29 16:00:49.355
121	0	\N	5	2015-10-30 02:18:24.901	2015-10-30 02:18:24.901
122	1	\N	5	2015-10-30 02:18:24.91	2015-10-30 02:18:24.91
124	3	\N	5	2015-10-30 02:18:24.961	2015-10-30 02:18:24.961
125	4	\N	5	2015-10-30 02:18:24.971	2015-10-30 02:18:24.971
126	5	\N	5	2015-10-30 02:18:24.997	2015-10-30 02:18:24.997
127	6	\N	5	2015-10-30 02:18:25.007	2015-10-30 02:18:25.007
128	7	\N	5	2015-10-30 02:18:25.014	2015-10-30 02:18:25.014
129	8	\N	5	2015-10-30 02:18:25.031	2015-10-30 02:18:25.031
130	9	\N	5	2015-10-30 02:18:25.044	2015-10-30 02:18:25.044
131	10	\N	5	2015-10-30 02:18:25.051	2015-10-30 02:18:25.051
132	11	\N	5	2015-10-30 02:18:25.06	2015-10-30 02:18:25.06
133	12	\N	5	2015-10-30 02:18:25.068	2015-10-30 02:18:25.068
134	13	\N	5	2015-10-30 02:18:25.075	2015-10-30 02:18:25.075
123	2	7	5	2015-10-30 02:18:24.945	2015-10-30 02:19:40.62
135	14	\N	5	2015-10-30 02:18:25.083	2015-10-30 02:18:25.083
136	15	\N	5	2015-10-30 02:18:25.095	2015-10-30 02:18:25.095
137	16	\N	5	2015-10-30 02:18:25.105	2015-10-30 02:18:25.105
138	17	\N	5	2015-10-30 02:18:25.114	2015-10-30 02:18:25.114
139	18	\N	5	2015-10-30 02:18:25.123	2015-10-30 02:18:25.123
140	19	\N	5	2015-10-30 02:18:25.136	2015-10-30 02:18:25.136
141	20	\N	5	2015-10-30 02:18:25.144	2015-10-30 02:18:25.144
142	21	\N	5	2015-10-30 02:18:25.153	2015-10-30 02:18:25.153
143	22	\N	5	2015-10-30 02:18:25.161	2015-10-30 02:18:25.161
144	23	\N	5	2015-10-30 02:18:25.168	2015-10-30 02:18:25.168
145	24	\N	5	2015-10-30 02:18:25.175	2015-10-30 02:18:25.175
146	25	\N	5	2015-10-30 02:18:25.181	2015-10-30 02:18:25.181
147	26	\N	5	2015-10-30 02:18:25.189	2015-10-30 02:18:25.189
148	27	\N	5	2015-10-30 02:18:25.194	2015-10-30 02:18:25.194
149	28	\N	5	2015-10-30 02:18:25.201	2015-10-30 02:18:25.201
150	29	\N	5	2015-10-30 02:18:25.207	2015-10-30 02:18:25.207
151	30	\N	5	2015-10-30 02:18:25.212	2015-10-30 02:18:25.212
152	31	\N	5	2015-10-30 02:18:25.221	2015-10-30 02:18:25.221
153	32	\N	5	2015-10-30 02:18:25.228	2015-10-30 02:18:25.228
154	33	\N	5	2015-10-30 02:18:25.24	2015-10-30 02:18:25.24
155	34	\N	5	2015-10-30 02:18:25.246	2015-10-30 02:18:25.246
156	35	\N	5	2015-10-30 02:18:25.257	2015-10-30 02:18:25.257
157	36	\N	5	2015-10-30 02:18:25.265	2015-10-30 02:18:25.265
158	37	\N	5	2015-10-30 02:18:25.274	2015-10-30 02:18:25.274
159	38	\N	5	2015-10-30 02:18:25.282	2015-10-30 02:18:25.282
160	39	\N	5	2015-10-30 02:18:25.297	2015-10-30 02:18:25.297
161	40	\N	5	2015-10-30 02:18:25.306	2015-10-30 02:18:25.306
162	41	\N	5	2015-10-30 02:18:25.321	2015-10-30 02:18:25.321
163	42	\N	5	2015-10-30 02:18:25.329	2015-10-30 02:18:25.329
164	43	\N	5	2015-10-30 02:18:25.343	2015-10-30 02:18:25.343
165	44	\N	5	2015-10-30 02:18:25.353	2015-10-30 02:18:25.353
166	45	\N	5	2015-10-30 02:18:25.362	2015-10-30 02:18:25.362
167	46	\N	5	2015-10-30 02:18:25.373	2015-10-30 02:18:25.373
168	47	\N	5	2015-10-30 02:18:25.388	2015-10-30 02:18:25.388
169	48	\N	5	2015-10-30 02:18:25.397	2015-10-30 02:18:25.397
170	49	\N	5	2015-10-30 02:18:25.409	2015-10-30 02:18:25.409
171	50	\N	5	2015-10-30 02:18:25.532	2015-10-30 02:18:25.532
172	51	\N	5	2015-10-30 02:18:25.608	2015-10-30 02:18:25.608
173	52	\N	5	2015-10-30 02:18:25.619	2015-10-30 02:18:25.619
174	53	\N	5	2015-10-30 02:18:25.627	2015-10-30 02:18:25.627
175	54	\N	5	2015-10-30 02:18:25.637	2015-10-30 02:18:25.637
176	55	\N	5	2015-10-30 02:18:25.644	2015-10-30 02:18:25.644
177	56	\N	5	2015-10-30 02:18:25.65	2015-10-30 02:18:25.65
178	57	\N	5	2015-10-30 02:18:25.657	2015-10-30 02:18:25.657
179	58	\N	5	2015-10-30 02:18:25.663	2015-10-30 02:18:25.663
180	59	\N	5	2015-10-30 02:18:25.67	2015-10-30 02:18:25.67
181	60	\N	5	2015-10-30 02:18:25.676	2015-10-30 02:18:25.676
182	61	\N	5	2015-10-30 02:18:25.681	2015-10-30 02:18:25.681
183	62	\N	5	2015-10-30 02:18:25.688	2015-10-30 02:18:25.688
184	0	\N	6	2015-11-04 02:18:59.559	2015-11-04 02:18:59.559
185	1	\N	6	2015-11-04 02:18:59.573	2015-11-04 02:18:59.573
187	3	\N	6	2015-11-04 02:18:59.596	2015-11-04 02:18:59.596
188	4	\N	6	2015-11-04 02:18:59.607	2015-11-04 02:18:59.607
189	5	\N	6	2015-11-04 02:18:59.618	2015-11-04 02:18:59.618
190	6	\N	6	2015-11-04 02:18:59.626	2015-11-04 02:18:59.626
191	7	\N	6	2015-11-04 02:18:59.633	2015-11-04 02:18:59.633
192	8	\N	6	2015-11-04 02:18:59.647	2015-11-04 02:18:59.647
193	9	\N	6	2015-11-04 02:18:59.66	2015-11-04 02:18:59.66
194	10	\N	6	2015-11-04 02:18:59.672	2015-11-04 02:18:59.672
195	11	\N	6	2015-11-04 02:18:59.683	2015-11-04 02:18:59.683
196	12	\N	6	2015-11-04 02:18:59.694	2015-11-04 02:18:59.694
197	13	\N	6	2015-11-04 02:18:59.702	2015-11-04 02:18:59.702
198	14	\N	6	2015-11-04 02:18:59.711	2015-11-04 02:18:59.711
199	15	\N	6	2015-11-04 02:18:59.72	2015-11-04 02:18:59.72
200	16	\N	6	2015-11-04 02:18:59.728	2015-11-04 02:18:59.728
201	17	\N	6	2015-11-04 02:18:59.738	2015-11-04 02:18:59.738
202	18	\N	6	2015-11-04 02:18:59.749	2015-11-04 02:18:59.749
203	19	\N	6	2015-11-04 02:18:59.762	2015-11-04 02:18:59.762
186	2	8	6	2015-11-04 02:18:59.587	2015-11-04 02:24:00.121
209	5	\N	7	2015-11-04 05:45:10.229	2015-11-04 05:45:10.229
210	6	\N	7	2015-11-04 05:45:10.235	2015-11-04 05:45:10.235
211	7	\N	7	2015-11-04 05:45:10.241	2015-11-04 05:45:10.241
212	8	\N	7	2015-11-04 05:45:10.249	2015-11-04 05:45:10.249
213	9	\N	7	2015-11-04 05:45:10.255	2015-11-04 05:45:10.255
214	10	\N	7	2015-11-04 05:45:10.261	2015-11-04 05:45:10.261
215	11	\N	7	2015-11-04 05:45:10.266	2015-11-04 05:45:10.266
216	12	\N	7	2015-11-04 05:45:10.272	2015-11-04 05:45:10.272
217	13	\N	7	2015-11-04 05:45:10.279	2015-11-04 05:45:10.279
218	14	\N	7	2015-11-04 05:45:10.284	2015-11-04 05:45:10.284
219	15	\N	7	2015-11-04 05:45:10.289	2015-11-04 05:45:10.289
220	16	\N	7	2015-11-04 05:45:10.297	2015-11-04 05:45:10.297
221	17	\N	7	2015-11-04 05:45:10.302	2015-11-04 05:45:10.302
222	18	\N	7	2015-11-04 05:45:10.308	2015-11-04 05:45:10.308
223	19	\N	7	2015-11-04 05:45:10.313	2015-11-04 05:45:10.313
224	20	\N	7	2015-11-04 05:45:10.318	2015-11-04 05:45:10.318
225	21	\N	7	2015-11-04 05:45:10.324	2015-11-04 05:45:10.324
226	22	\N	7	2015-11-04 05:45:10.33	2015-11-04 05:45:10.33
227	23	\N	7	2015-11-04 05:45:10.335	2015-11-04 05:45:10.335
228	24	\N	7	2015-11-04 05:45:10.339	2015-11-04 05:45:10.339
229	25	\N	7	2015-11-04 05:45:10.346	2015-11-04 05:45:10.346
230	26	\N	7	2015-11-04 05:45:10.353	2015-11-04 05:45:10.353
231	27	\N	7	2015-11-04 05:45:10.363	2015-11-04 05:45:10.363
232	28	\N	7	2015-11-04 05:45:10.383	2015-11-04 05:45:10.383
233	29	\N	7	2015-11-04 05:45:10.39	2015-11-04 05:45:10.39
234	30	\N	7	2015-11-04 05:45:10.402	2015-11-04 05:45:10.402
235	31	\N	7	2015-11-04 05:45:10.412	2015-11-04 05:45:10.412
236	32	\N	7	2015-11-04 05:45:10.427	2015-11-04 05:45:10.427
237	33	\N	7	2015-11-04 05:45:10.435	2015-11-04 05:45:10.435
238	34	\N	7	2015-11-04 05:45:10.44	2015-11-04 05:45:10.44
239	35	\N	7	2015-11-04 05:45:10.447	2015-11-04 05:45:10.447
240	36	\N	7	2015-11-04 05:45:10.453	2015-11-04 05:45:10.453
241	37	\N	7	2015-11-04 05:45:10.459	2015-11-04 05:45:10.459
242	38	\N	7	2015-11-04 05:45:10.467	2015-11-04 05:45:10.467
243	39	\N	7	2015-11-04 05:45:10.472	2015-11-04 05:45:10.472
244	40	\N	7	2015-11-04 05:45:10.478	2015-11-04 05:45:10.478
245	41	\N	7	2015-11-04 05:45:10.484	2015-11-04 05:45:10.484
246	42	\N	7	2015-11-04 05:45:10.489	2015-11-04 05:45:10.489
247	43	\N	7	2015-11-04 05:45:10.496	2015-11-04 05:45:10.496
248	44	\N	7	2015-11-04 05:45:10.501	2015-11-04 05:45:10.501
204	0	9	7	2015-11-04 05:45:10.174	2015-11-04 05:45:39.897
205	1	10	7	2015-11-04 05:45:10.205	2015-11-04 08:41:48.512
206	2	11	7	2015-11-04 05:45:10.212	2015-11-04 08:43:53.186
207	3	12	7	2015-11-04 05:45:10.217	2015-11-04 08:44:32.503
208	4	13	7	2015-11-04 05:45:10.223	2015-11-04 08:45:38.485
250	1	\N	8	2015-11-13 06:55:08.103	2015-11-13 06:55:08.103
251	2	\N	8	2015-11-13 06:55:08.135	2015-11-13 06:55:08.135
252	3	\N	8	2015-11-13 06:55:08.146	2015-11-13 06:55:08.146
253	4	\N	8	2015-11-13 06:55:08.294	2015-11-13 06:55:08.294
254	5	\N	8	2015-11-13 06:55:08.328	2015-11-13 06:55:08.328
255	6	\N	8	2015-11-13 06:55:08.336	2015-11-13 06:55:08.336
256	7	\N	8	2015-11-13 06:55:08.377	2015-11-13 06:55:08.377
257	8	\N	8	2015-11-13 06:55:08.386	2015-11-13 06:55:08.386
258	9	\N	8	2015-11-13 06:55:08.396	2015-11-13 06:55:08.396
259	10	\N	8	2015-11-13 06:55:08.404	2015-11-13 06:55:08.404
260	11	\N	8	2015-11-13 06:55:08.412	2015-11-13 06:55:08.412
261	12	\N	8	2015-11-13 06:55:08.43	2015-11-13 06:55:08.43
262	13	\N	8	2015-11-13 06:55:08.441	2015-11-13 06:55:08.441
263	14	\N	8	2015-11-13 06:55:08.452	2015-11-13 06:55:08.452
264	15	\N	8	2015-11-13 06:55:08.485	2015-11-13 06:55:08.485
249	0	14	8	2015-11-13 06:55:08.073	2015-11-13 07:31:01.189
265	16	\N	8	2015-11-13 06:55:08.552	2015-11-13 06:55:08.552
266	17	\N	8	2015-11-13 06:55:08.607	2015-11-13 06:55:08.607
267	18	\N	8	2015-11-13 06:55:08.66	2015-11-13 06:55:08.66
268	19	\N	8	2015-11-13 06:55:08.686	2015-11-13 06:55:08.686
269	20	\N	8	2015-11-13 06:55:08.735	2015-11-13 06:55:08.735
270	21	\N	8	2015-11-13 06:55:08.743	2015-11-13 06:55:08.743
271	22	\N	8	2015-11-13 06:55:08.752	2015-11-13 06:55:08.752
272	23	\N	8	2015-11-13 06:55:08.772	2015-11-13 06:55:08.772
273	24	\N	8	2015-11-13 06:55:08.779	2015-11-13 06:55:08.779
274	25	\N	8	2015-11-13 06:55:08.788	2015-11-13 06:55:08.788
275	26	\N	8	2015-11-13 06:55:08.812	2015-11-13 06:55:08.812
276	27	\N	8	2015-11-13 06:55:08.82	2015-11-13 06:55:08.82
277	28	\N	8	2015-11-13 06:55:08.831	2015-11-13 06:55:08.831
278	29	\N	8	2015-11-13 06:55:08.844	2015-11-13 06:55:08.844
279	30	\N	8	2015-11-13 06:55:08.866	2015-11-13 06:55:08.866
280	31	\N	8	2015-11-13 06:55:08.888	2015-11-13 06:55:08.888
281	32	\N	8	2015-11-13 06:55:08.898	2015-11-13 06:55:08.898
282	33	\N	8	2015-11-13 06:55:08.906	2015-11-13 06:55:08.906
283	34	\N	8	2015-11-13 06:55:08.914	2015-11-13 06:55:08.914
284	35	\N	8	2015-11-13 06:55:08.921	2015-11-13 06:55:08.921
285	36	\N	8	2015-11-13 06:55:08.931	2015-11-13 06:55:08.931
286	37	\N	8	2015-11-13 06:55:08.945	2015-11-13 06:55:08.945
287	38	\N	8	2015-11-13 06:55:08.953	2015-11-13 06:55:08.953
288	39	\N	8	2015-11-13 06:55:08.962	2015-11-13 06:55:08.962
289	40	\N	8	2015-11-13 06:55:08.97	2015-11-13 06:55:08.97
290	41	\N	8	2015-11-13 06:55:08.981	2015-11-13 06:55:08.981
291	42	\N	8	2015-11-13 06:55:08.991	2015-11-13 06:55:08.991
292	43	\N	8	2015-11-13 06:55:08.999	2015-11-13 06:55:08.999
293	44	\N	8	2015-11-13 06:55:09.008	2015-11-13 06:55:09.008
294	0	\N	9	2015-11-13 08:33:03.103	2015-11-13 08:33:03.103
295	1	\N	9	2015-11-13 08:33:03.112	2015-11-13 08:33:03.112
296	2	\N	9	2015-11-13 08:33:03.119	2015-11-13 08:33:03.119
297	3	\N	9	2015-11-13 08:33:03.128	2015-11-13 08:33:03.128
298	4	\N	9	2015-11-13 08:33:03.137	2015-11-13 08:33:03.137
299	5	\N	9	2015-11-13 08:33:03.145	2015-11-13 08:33:03.145
\.


--
-- Name: frame_storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('frame_storages_id_seq', 299, true);


--
-- Data for Name: frames; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY frames (id, frame_seq, frame_name, frame_type, code_order, horizontal_direction, vertiacal_direction, frame_rows, frame_columns, created_at, updated_at) FROM stdin;
1	4000	 架子1		\N	\N	\N	5	5	2015-10-28 11:17:45.832903	2015-10-28 11:17:45.832903
2	40001	冻存架2		\N	\N	\N	5	5	2015-10-28 14:16:29.591681	2015-10-28 14:16:29.591681
3	4000	冻存架3		\N	\N	\N	9	5	2015-10-28 14:41:07.068692	2015-10-28 14:41:07.068692
4	40002			\N	\N	\N	3	5	2015-10-29 04:07:14.000635	2015-10-29 04:07:14.000635
5		架子5		\N	\N	\N	5	6	2015-10-29 15:57:00.438	2015-10-29 15:57:00.438
6		冻存架6		\N	\N	\N	5	5	2015-10-29 16:00:49.337	2015-10-29 16:00:49.337
7	400005	冻存架26		\N	\N	\N	5	5	2015-10-30 02:19:40.609	2015-10-30 02:19:40.609
8		冻存架t		\N	\N	\N	3	5	2015-11-04 02:24:00.009	2015-11-04 02:24:00.009
9		冻存架tt		\N	\N	\N	3	5	2015-11-04 05:45:39.887	2015-11-04 05:45:39.887
10		冻存架t2		\N	\N	\N	5	6	2015-11-04 08:41:48.416	2015-11-04 08:41:48.416
11				\N	\N	\N	5	5	2015-11-04 08:43:53.178	2015-11-04 08:43:53.178
12				\N	\N	\N	8	8	2015-11-04 08:44:32.484	2015-11-04 08:44:32.484
13				\N	\N	\N	3	2	2015-11-04 08:45:38.479	2015-11-04 08:45:38.479
14	1121212	卧式		\N	\N	\N	5	1	2015-11-13 07:31:01.129	2015-11-13 07:31:01.129
\.


--
-- Name: frames_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('frames_id_seq', 14, true);


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
1	10000	1	2015-09-18 01:58:47.145198	2015-09-18 01:58:47.145198
2	1-10001	1	2015-09-21 01:55:37.460815	2015-09-21 01:55:37.460815
4		1	2015-10-08 09:43:53.229968	2015-10-08 09:43:53.229968
5		1	2015-10-08 09:44:33.246521	2015-10-08 09:44:33.246521
6	1-1004	1	2015-10-28 07:28:53.387424	2015-10-28 07:28:53.387424
7	100005-1	4	2015-10-29 17:51:49.052	2015-10-29 17:51:49.052
8	100005-2	4	2015-10-30 01:34:16.854	2015-10-30 01:34:16.854
9	100005-122	3	2015-11-04 05:54:21.08	2015-11-04 06:00:01.924
10	1-10002	3	2015-11-07 03:06:41.449	2015-11-07 03:06:41.449
\.


--
-- Name: patient_cases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patient_cases_id_seq', 10, true);


--
-- Data for Name: patient_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patient_infos (id, patient_id, patient_name, gender, birthday, cell_phone, home_phone, other_phone, zip_code, address, company_name, company_phone, company_zip, company_address, relationship_first, relative_name_first, relative_phone1_first, relative_phone2_first, relationship_second, relative_name_second, relative_phone1_second, relative_phone2_second, relationship_third, relative_name_third, relative_phone1_third, relative_phone2_third, created_at, updated_at) FROM stdin;
1	001	 张三	男	2015-09-14																						2015-09-14 06:39:58.755269	2015-09-14 06:39:58.755269
2	002	李四	女	2015-09-14																						2015-09-14 06:42:53.000249	2015-09-14 06:42:53.000249
3	001	errwer		2015-09-18																						2015-09-18 01:08:12.568755	2015-09-18 01:08:12.568755
4	100005	王磊	男	2015-10-29	13923432345												\N				\N					2015-10-29 17:46:38.053	2015-10-29 17:46:38.053
5	100006	马龙	男	2015-11-05	13923432348												\N				\N					2015-11-05 05:54:02.693	2015-11-05 05:54:02.693
6	100007	李四	男	2010-11-06	13923432349												\N				\N					2015-11-06 05:46:04.132	2015-11-06 05:46:04.132
\.


--
-- Name: patient_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patient_infos_id_seq', 6, true);


--
-- Data for Name: sample_out_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sample_out_logs (id, sample_id, sample_preout_log_id, out_status, remark, created_at, updated_at) FROM stdin;
1	28	12	完成	\N	2015-10-30 01:41:08.857	2015-10-30 01:41:08.857
2	34	13	完成	\N	2015-10-30 02:26:13.072	2015-10-30 02:26:13.072
\.


--
-- Name: sample_out_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sample_out_logs_id_seq', 2, true);


--
-- Data for Name: sample_preout_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sample_preout_logs (id, operator_name, user_name, status, sample_ids, created_at, updated_at, num, proportpion, sys_user_id, use_for) FROM stdin;
4	\N		出库	2	2015-10-29 12:45:37.487	2015-10-29 15:30:41.773	1	10	1	
3	\N	张磊	出库	1	2015-10-29 04:13:57.511108	2015-10-29 15:41:57.074	1	20	1	
1	\N	张三	出库	5,6	2015-10-26 08:52:51.485367	2015-10-29 17:44:35.241	2	50	1	科研
2	\N	张磊	出库	7	2015-10-26 10:00:03.034543	2015-10-29 17:44:45.841	1	30	1	科研
5	\N	刘亮	预出库	20,21	2015-10-29 18:06:55.742	2015-10-29 18:06:55.742	2	20	1	
6	\N	马六	出库	24	2015-10-29 18:40:00.445	2015-10-29 18:40:00.445	1	100	1	
7	\N	张三	出库	23	2015-10-29 18:47:16.741	2015-10-29 18:47:16.741	1	100	1	
8	\N	张三	出库	22	2015-10-29 18:49:25.414	2015-10-29 18:49:25.414	1	100	1	
9	\N	刘亮	出库	26,25	2015-10-29 19:02:48.071	2015-10-29 19:02:48.071	2	100	1	
10	\N	刘亮	出库	27	2015-10-29 19:05:20.457	2015-10-29 19:05:20.457	1	100	1	
11	\N	张三	预出库	4	2015-10-30 01:31:48.476	2015-10-30 01:31:48.476	1	10	1	
12	\N	马六	出库	28	2015-10-30 01:38:30.496	2015-10-30 01:41:08.906	1	10	1	
13	\N	王震	出库	34	2015-10-30 02:25:18.16	2015-10-30 02:26:13.082	1	100	1	
\.


--
-- Name: sample_preout_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sample_preout_logs_id_seq', 13, true);


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
1	0	5	\N	2015-10-28 15:51:33.832545	2015-10-28 15:51:33.832545
3	2	5	\N	2015-10-28 15:51:33.865004	2015-10-28 15:51:33.865004
4	3	5	\N	2015-10-28 15:51:33.866955	2015-10-28 15:51:33.866955
6	5	5	\N	2015-10-28 15:51:33.871291	2015-10-28 15:51:33.871291
7	6	5	\N	2015-10-28 15:51:33.873274	2015-10-28 15:51:33.873274
8	7	5	\N	2015-10-28 15:51:33.875147	2015-10-28 15:51:33.875147
9	8	5	\N	2015-10-28 15:51:33.877184	2015-10-28 15:51:33.877184
10	9	5	\N	2015-10-28 15:51:33.879188	2015-10-28 15:51:33.879188
11	10	5	\N	2015-10-28 15:51:33.880708	2015-10-28 15:51:33.880708
12	11	5	\N	2015-10-28 15:51:33.882062	2015-10-28 15:51:33.882062
14	13	5	\N	2015-10-28 15:51:33.886083	2015-10-28 15:51:33.886083
15	14	5	\N	2015-10-28 15:51:33.888626	2015-10-28 15:51:33.888626
16	15	5	\N	2015-10-28 15:51:33.890646	2015-10-28 15:51:33.890646
17	16	5	\N	2015-10-28 15:51:33.892433	2015-10-28 15:51:33.892433
18	17	5	\N	2015-10-28 15:51:33.894325	2015-10-28 15:51:33.894325
19	18	5	\N	2015-10-28 15:51:33.895917	2015-10-28 15:51:33.895917
20	19	5	\N	2015-10-28 15:51:33.897687	2015-10-28 15:51:33.897687
21	20	5	\N	2015-10-28 15:51:33.899008	2015-10-28 15:51:33.899008
22	21	5	\N	2015-10-28 15:51:33.900568	2015-10-28 15:51:33.900568
23	22	5	\N	2015-10-28 15:51:33.903551	2015-10-28 15:51:33.903551
24	23	5	\N	2015-10-28 15:51:33.905781	2015-10-28 15:51:33.905781
25	24	5	\N	2015-10-28 15:51:33.907712	2015-10-28 15:51:33.907712
26	25	5	\N	2015-10-28 15:51:33.909204	2015-10-28 15:51:33.909204
27	26	5	\N	2015-10-28 15:51:33.910797	2015-10-28 15:51:33.910797
28	27	5	\N	2015-10-28 15:51:33.912163	2015-10-28 15:51:33.912163
29	28	5	\N	2015-10-28 15:51:33.913744	2015-10-28 15:51:33.913744
30	29	5	\N	2015-10-28 15:51:33.915361	2015-10-28 15:51:33.915361
31	30	5	\N	2015-10-28 15:51:33.916821	2015-10-28 15:51:33.916821
32	31	5	\N	2015-10-28 15:51:33.919369	2015-10-28 15:51:33.919369
33	32	5	\N	2015-10-28 15:51:33.92162	2015-10-28 15:51:33.92162
34	33	5	\N	2015-10-28 15:51:33.923693	2015-10-28 15:51:33.923693
35	34	5	\N	2015-10-28 15:51:33.925611	2015-10-28 15:51:33.925611
36	35	5	\N	2015-10-28 15:51:33.927384	2015-10-28 15:51:33.927384
37	36	5	\N	2015-10-28 15:51:33.929143	2015-10-28 15:51:33.929143
38	37	5	\N	2015-10-28 15:51:33.930805	2015-10-28 15:51:33.930805
39	38	5	\N	2015-10-28 15:51:33.93221	2015-10-28 15:51:33.93221
40	39	5	\N	2015-10-28 15:51:33.934056	2015-10-28 15:51:33.934056
41	40	5	\N	2015-10-28 15:51:33.936701	2015-10-28 15:51:33.936701
42	41	5	\N	2015-10-28 15:51:33.939245	2015-10-28 15:51:33.939245
43	42	5	\N	2015-10-28 15:51:33.942488	2015-10-28 15:51:33.942488
44	43	5	\N	2015-10-28 15:51:33.943968	2015-10-28 15:51:33.943968
45	44	5	\N	2015-10-28 15:51:33.945231	2015-10-28 15:51:33.945231
46	45	5	\N	2015-10-28 15:51:33.946585	2015-10-28 15:51:33.946585
47	46	5	\N	2015-10-28 15:51:33.947998	2015-10-28 15:51:33.947998
48	47	5	\N	2015-10-28 15:51:33.949345	2015-10-28 15:51:33.949345
49	48	5	\N	2015-10-28 15:51:33.951144	2015-10-28 15:51:33.951144
50	49	5	\N	2015-10-28 15:51:33.954143	2015-10-28 15:51:33.954143
51	50	5	\N	2015-10-28 15:51:33.956707	2015-10-28 15:51:33.956707
52	51	5	\N	2015-10-28 15:51:33.958729	2015-10-28 15:51:33.958729
53	52	5	\N	2015-10-28 15:51:33.960409	2015-10-28 15:51:33.960409
54	53	5	\N	2015-10-28 15:51:33.962147	2015-10-28 15:51:33.962147
55	54	5	\N	2015-10-28 15:51:33.963754	2015-10-28 15:51:33.963754
56	55	5	\N	2015-10-28 15:51:33.965091	2015-10-28 15:51:33.965091
57	56	5	\N	2015-10-28 15:51:33.966726	2015-10-28 15:51:33.966726
58	57	5	\N	2015-10-28 15:51:33.968577	2015-10-28 15:51:33.968577
59	58	5	\N	2015-10-28 15:51:33.970335	2015-10-28 15:51:33.970335
60	59	5	\N	2015-10-28 15:51:33.971847	2015-10-28 15:51:33.971847
61	60	5	\N	2015-10-28 15:51:33.973063	2015-10-28 15:51:33.973063
62	61	5	\N	2015-10-28 15:51:33.974393	2015-10-28 15:51:33.974393
63	62	5	\N	2015-10-28 15:51:33.975639	2015-10-28 15:51:33.975639
64	63	5	\N	2015-10-28 15:51:33.977165	2015-10-28 15:51:33.977165
65	64	5	\N	2015-10-28 15:51:33.978783	2015-10-28 15:51:33.978783
66	65	5	\N	2015-10-28 15:51:33.980295	2015-10-28 15:51:33.980295
67	66	5	\N	2015-10-28 15:51:33.981921	2015-10-28 15:51:33.981921
68	67	5	\N	2015-10-28 15:51:33.984057	2015-10-28 15:51:33.984057
69	68	5	\N	2015-10-28 15:51:33.98696	2015-10-28 15:51:33.98696
70	69	5	\N	2015-10-28 15:51:33.988775	2015-10-28 15:51:33.988775
71	70	5	\N	2015-10-28 15:51:33.990653	2015-10-28 15:51:33.990653
72	71	5	\N	2015-10-28 15:51:34.002231	2015-10-28 15:51:34.002231
73	72	5	\N	2015-10-28 15:51:34.004958	2015-10-28 15:51:34.004958
74	73	5	\N	2015-10-28 15:51:34.00712	2015-10-28 15:51:34.00712
75	74	5	\N	2015-10-28 15:51:34.008808	2015-10-28 15:51:34.008808
76	75	5	\N	2015-10-28 15:51:34.010432	2015-10-28 15:51:34.010432
77	76	5	\N	2015-10-28 15:51:34.012331	2015-10-28 15:51:34.012331
78	77	5	\N	2015-10-28 15:51:34.014087	2015-10-28 15:51:34.014087
79	78	5	\N	2015-10-28 15:51:34.015578	2015-10-28 15:51:34.015578
80	79	5	\N	2015-10-28 15:51:34.017228	2015-10-28 15:51:34.017228
81	80	5	\N	2015-10-28 15:51:34.019297	2015-10-28 15:51:34.019297
82	0	6	\N	2015-10-29 04:07:43.515171	2015-10-29 04:07:43.515171
83	1	6	\N	2015-10-29 04:07:43.517261	2015-10-29 04:07:43.517261
84	2	6	\N	2015-10-29 04:07:43.518576	2015-10-29 04:07:43.518576
85	3	6	\N	2015-10-29 04:07:43.519818	2015-10-29 04:07:43.519818
86	4	6	\N	2015-10-29 04:07:43.52104	2015-10-29 04:07:43.52104
87	5	6	\N	2015-10-29 04:07:43.522648	2015-10-29 04:07:43.522648
88	6	6	\N	2015-10-29 04:07:43.526017	2015-10-29 04:07:43.526017
89	7	6	\N	2015-10-29 04:07:43.528687	2015-10-29 04:07:43.528687
90	8	6	\N	2015-10-29 04:07:43.531334	2015-10-29 04:07:43.531334
91	9	6	\N	2015-10-29 04:07:43.533591	2015-10-29 04:07:43.533591
92	10	6	\N	2015-10-29 04:07:43.535468	2015-10-29 04:07:43.535468
93	11	6	\N	2015-10-29 04:07:43.537235	2015-10-29 04:07:43.537235
94	12	6	\N	2015-10-29 04:07:43.538715	2015-10-29 04:07:43.538715
95	13	6	\N	2015-10-29 04:07:43.540143	2015-10-29 04:07:43.540143
96	14	6	\N	2015-10-29 04:07:43.542179	2015-10-29 04:07:43.542179
97	15	6	\N	2015-10-29 04:07:43.544388	2015-10-29 04:07:43.544388
98	16	6	\N	2015-10-29 04:07:43.5464	2015-10-29 04:07:43.5464
99	17	6	\N	2015-10-29 04:07:43.548468	2015-10-29 04:07:43.548468
100	18	6	\N	2015-10-29 04:07:43.550689	2015-10-29 04:07:43.550689
101	19	6	\N	2015-10-29 04:07:43.553205	2015-10-29 04:07:43.553205
102	20	6	\N	2015-10-29 04:07:43.55472	2015-10-29 04:07:43.55472
103	21	6	\N	2015-10-29 04:07:43.556055	2015-10-29 04:07:43.556055
104	22	6	\N	2015-10-29 04:07:43.55779	2015-10-29 04:07:43.55779
105	23	6	\N	2015-10-29 04:07:43.560553	2015-10-29 04:07:43.560553
106	24	6	\N	2015-10-29 04:07:43.562407	2015-10-29 04:07:43.562407
107	25	6	\N	2015-10-29 04:07:43.564647	2015-10-29 04:07:43.564647
108	26	6	\N	2015-10-29 04:07:43.56598	2015-10-29 04:07:43.56598
109	27	6	\N	2015-10-29 04:07:43.567152	2015-10-29 04:07:43.567152
110	28	6	\N	2015-10-29 04:07:43.568488	2015-10-29 04:07:43.568488
111	29	6	\N	2015-10-29 04:07:43.569852	2015-10-29 04:07:43.569852
112	30	6	\N	2015-10-29 04:07:43.5717	2015-10-29 04:07:43.5717
113	31	6	\N	2015-10-29 04:07:43.573303	2015-10-29 04:07:43.573303
114	32	6	\N	2015-10-29 04:07:43.57569	2015-10-29 04:07:43.57569
115	33	6	\N	2015-10-29 04:07:43.578001	2015-10-29 04:07:43.578001
116	34	6	\N	2015-10-29 04:07:43.580314	2015-10-29 04:07:43.580314
117	35	6	\N	2015-10-29 04:07:43.581796	2015-10-29 04:07:43.581796
118	36	6	\N	2015-10-29 04:07:43.583126	2015-10-29 04:07:43.583126
119	37	6	\N	2015-10-29 04:07:43.584629	2015-10-29 04:07:43.584629
120	38	6	\N	2015-10-29 04:07:43.586141	2015-10-29 04:07:43.586141
121	39	6	\N	2015-10-29 04:07:43.587578	2015-10-29 04:07:43.587578
122	40	6	\N	2015-10-29 04:07:43.589002	2015-10-29 04:07:43.589002
123	41	6	\N	2015-10-29 04:07:43.590678	2015-10-29 04:07:43.590678
124	42	6	\N	2015-10-29 04:07:43.593142	2015-10-29 04:07:43.593142
125	43	6	\N	2015-10-29 04:07:43.595532	2015-10-29 04:07:43.595532
126	44	6	\N	2015-10-29 04:07:43.59843	2015-10-29 04:07:43.59843
127	45	6	\N	2015-10-29 04:07:43.601032	2015-10-29 04:07:43.601032
128	46	6	\N	2015-10-29 04:07:43.603032	2015-10-29 04:07:43.603032
129	47	6	\N	2015-10-29 04:07:43.604557	2015-10-29 04:07:43.604557
130	48	6	\N	2015-10-29 04:07:43.605903	2015-10-29 04:07:43.605903
131	49	6	\N	2015-10-29 04:07:43.60749	2015-10-29 04:07:43.60749
132	50	6	\N	2015-10-29 04:07:43.610218	2015-10-29 04:07:43.610218
133	51	6	\N	2015-10-29 04:07:43.612102	2015-10-29 04:07:43.612102
134	52	6	\N	2015-10-29 04:07:43.613852	2015-10-29 04:07:43.613852
135	53	6	\N	2015-10-29 04:07:43.615435	2015-10-29 04:07:43.615435
136	54	6	\N	2015-10-29 04:07:43.617008	2015-10-29 04:07:43.617008
13	12	5	4	2015-10-28 15:51:33.883414	2015-10-29 17:39:21.076
5	4	5	6	2015-10-28 15:51:33.868973	2015-10-29 17:39:40.439
137	55	6	\N	2015-10-29 04:07:43.61855	2015-10-29 04:07:43.61855
138	56	6	\N	2015-10-29 04:07:43.620777	2015-10-29 04:07:43.620777
139	57	6	\N	2015-10-29 04:07:43.622593	2015-10-29 04:07:43.622593
140	58	6	\N	2015-10-29 04:07:43.624213	2015-10-29 04:07:43.624213
141	59	6	\N	2015-10-29 04:07:43.626611	2015-10-29 04:07:43.626611
142	60	6	\N	2015-10-29 04:07:43.629425	2015-10-29 04:07:43.629425
143	61	6	\N	2015-10-29 04:07:43.631296	2015-10-29 04:07:43.631296
144	62	6	\N	2015-10-29 04:07:43.632587	2015-10-29 04:07:43.632587
145	63	6	\N	2015-10-29 04:07:43.633793	2015-10-29 04:07:43.633793
146	0	7	\N	2015-10-29 04:09:26.134565	2015-10-29 04:09:26.134565
147	1	7	\N	2015-10-29 04:09:26.136837	2015-10-29 04:09:26.136837
148	2	7	\N	2015-10-29 04:09:26.138589	2015-10-29 04:09:26.138589
149	3	7	\N	2015-10-29 04:09:26.140231	2015-10-29 04:09:26.140231
150	4	7	\N	2015-10-29 04:09:26.14183	2015-10-29 04:09:26.14183
151	5	7	\N	2015-10-29 04:09:26.143421	2015-10-29 04:09:26.143421
152	6	7	\N	2015-10-29 04:09:26.147006	2015-10-29 04:09:26.147006
153	7	7	\N	2015-10-29 04:09:26.149197	2015-10-29 04:09:26.149197
154	8	7	\N	2015-10-29 04:09:26.151856	2015-10-29 04:09:26.151856
155	9	7	\N	2015-10-29 04:09:26.154002	2015-10-29 04:09:26.154002
156	10	7	\N	2015-10-29 04:09:26.155892	2015-10-29 04:09:26.155892
157	11	7	\N	2015-10-29 04:09:26.157526	2015-10-29 04:09:26.157526
158	0	8	\N	2015-10-29 16:02:07.944	2015-10-29 16:02:07.944
159	1	8	\N	2015-10-29 16:02:07.953	2015-10-29 16:02:07.953
160	2	8	\N	2015-10-29 16:02:07.959	2015-10-29 16:02:07.959
161	3	8	\N	2015-10-29 16:02:07.965	2015-10-29 16:02:07.965
162	4	8	\N	2015-10-29 16:02:07.971	2015-10-29 16:02:07.971
163	5	8	\N	2015-10-29 16:02:07.976	2015-10-29 16:02:07.976
164	6	8	\N	2015-10-29 16:02:07.98	2015-10-29 16:02:07.98
165	7	8	\N	2015-10-29 16:02:07.986	2015-10-29 16:02:07.986
166	8	8	\N	2015-10-29 16:02:07.99	2015-10-29 16:02:07.99
167	9	8	\N	2015-10-29 16:02:07.994	2015-10-29 16:02:07.994
168	10	8	\N	2015-10-29 16:02:07.999	2015-10-29 16:02:07.999
169	11	8	\N	2015-10-29 16:02:08.004	2015-10-29 16:02:08.004
170	12	8	\N	2015-10-29 16:02:08.008	2015-10-29 16:02:08.008
171	13	8	\N	2015-10-29 16:02:08.013	2015-10-29 16:02:08.013
172	14	8	\N	2015-10-29 16:02:08.018	2015-10-29 16:02:08.018
173	15	8	\N	2015-10-29 16:02:08.022	2015-10-29 16:02:08.022
174	16	8	\N	2015-10-29 16:02:08.027	2015-10-29 16:02:08.027
175	17	8	\N	2015-10-29 16:02:08.031	2015-10-29 16:02:08.031
176	18	8	\N	2015-10-29 16:02:08.036	2015-10-29 16:02:08.036
177	19	8	\N	2015-10-29 16:02:08.039	2015-10-29 16:02:08.039
178	20	8	\N	2015-10-29 16:02:08.043	2015-10-29 16:02:08.043
179	21	8	\N	2015-10-29 16:02:08.049	2015-10-29 16:02:08.049
180	22	8	\N	2015-10-29 16:02:08.055	2015-10-29 16:02:08.055
181	23	8	\N	2015-10-29 16:02:08.059	2015-10-29 16:02:08.059
182	24	8	\N	2015-10-29 16:02:08.065	2015-10-29 16:02:08.065
183	25	8	\N	2015-10-29 16:02:08.071	2015-10-29 16:02:08.071
184	26	8	\N	2015-10-29 16:02:08.076	2015-10-29 16:02:08.076
185	27	8	\N	2015-10-29 16:02:08.081	2015-10-29 16:02:08.081
186	28	8	\N	2015-10-29 16:02:08.087	2015-10-29 16:02:08.087
187	29	8	\N	2015-10-29 16:02:08.093	2015-10-29 16:02:08.093
188	30	8	\N	2015-10-29 16:02:08.098	2015-10-29 16:02:08.098
189	31	8	\N	2015-10-29 16:02:08.103	2015-10-29 16:02:08.103
190	32	8	\N	2015-10-29 16:02:08.107	2015-10-29 16:02:08.107
191	33	8	\N	2015-10-29 16:02:08.111	2015-10-29 16:02:08.111
192	34	8	\N	2015-10-29 16:02:08.117	2015-10-29 16:02:08.117
193	35	8	\N	2015-10-29 16:02:08.122	2015-10-29 16:02:08.122
194	36	8	\N	2015-10-29 16:02:08.127	2015-10-29 16:02:08.127
195	37	8	\N	2015-10-29 16:02:08.132	2015-10-29 16:02:08.132
196	38	8	\N	2015-10-29 16:02:08.137	2015-10-29 16:02:08.137
197	39	8	\N	2015-10-29 16:02:08.143	2015-10-29 16:02:08.143
198	40	8	\N	2015-10-29 16:02:08.148	2015-10-29 16:02:08.148
199	41	8	\N	2015-10-29 16:02:08.152	2015-10-29 16:02:08.152
200	42	8	\N	2015-10-29 16:02:08.157	2015-10-29 16:02:08.157
201	43	8	\N	2015-10-29 16:02:08.161	2015-10-29 16:02:08.161
202	44	8	\N	2015-10-29 16:02:08.168	2015-10-29 16:02:08.168
203	45	8	\N	2015-10-29 16:02:08.172	2015-10-29 16:02:08.172
204	46	8	\N	2015-10-29 16:02:08.177	2015-10-29 16:02:08.177
205	47	8	\N	2015-10-29 16:02:08.183	2015-10-29 16:02:08.183
206	48	8	\N	2015-10-29 16:02:08.187	2015-10-29 16:02:08.187
207	49	8	\N	2015-10-29 16:02:08.191	2015-10-29 16:02:08.191
208	50	8	\N	2015-10-29 16:02:08.195	2015-10-29 16:02:08.195
209	51	8	\N	2015-10-29 16:02:08.2	2015-10-29 16:02:08.2
210	52	8	\N	2015-10-29 16:02:08.204	2015-10-29 16:02:08.204
211	53	8	\N	2015-10-29 16:02:08.208	2015-10-29 16:02:08.208
212	54	8	\N	2015-10-29 16:02:08.212	2015-10-29 16:02:08.212
213	55	8	\N	2015-10-29 16:02:08.217	2015-10-29 16:02:08.217
214	56	8	\N	2015-10-29 16:02:08.222	2015-10-29 16:02:08.222
215	57	8	\N	2015-10-29 16:02:08.226	2015-10-29 16:02:08.226
216	58	8	\N	2015-10-29 16:02:08.23	2015-10-29 16:02:08.23
217	59	8	\N	2015-10-29 16:02:08.235	2015-10-29 16:02:08.235
218	60	8	\N	2015-10-29 16:02:08.24	2015-10-29 16:02:08.24
219	61	8	\N	2015-10-29 16:02:08.244	2015-10-29 16:02:08.244
220	62	8	\N	2015-10-29 16:02:08.25	2015-10-29 16:02:08.25
221	63	8	\N	2015-10-29 16:02:08.254	2015-10-29 16:02:08.254
222	64	8	\N	2015-10-29 16:02:08.259	2015-10-29 16:02:08.259
223	65	8	\N	2015-10-29 16:02:08.264	2015-10-29 16:02:08.264
224	66	8	\N	2015-10-29 16:02:08.269	2015-10-29 16:02:08.269
225	67	8	\N	2015-10-29 16:02:08.273	2015-10-29 16:02:08.273
226	68	8	\N	2015-10-29 16:02:08.279	2015-10-29 16:02:08.279
227	69	8	\N	2015-10-29 16:02:08.285	2015-10-29 16:02:08.285
228	70	8	\N	2015-10-29 16:02:08.291	2015-10-29 16:02:08.291
229	71	8	\N	2015-10-29 16:02:08.299	2015-10-29 16:02:08.299
230	72	8	\N	2015-10-29 16:02:08.307	2015-10-29 16:02:08.307
231	73	8	\N	2015-10-29 16:02:08.313	2015-10-29 16:02:08.313
232	74	8	\N	2015-10-29 16:02:08.319	2015-10-29 16:02:08.319
233	75	8	\N	2015-10-29 16:02:08.325	2015-10-29 16:02:08.325
234	76	8	\N	2015-10-29 16:02:08.333	2015-10-29 16:02:08.333
235	77	8	\N	2015-10-29 16:02:08.34	2015-10-29 16:02:08.34
236	78	8	\N	2015-10-29 16:02:08.344	2015-10-29 16:02:08.344
237	79	8	\N	2015-10-29 16:02:08.351	2015-10-29 16:02:08.351
238	80	8	\N	2015-10-29 16:02:08.357	2015-10-29 16:02:08.357
2	1	5	3	2015-10-28 15:51:33.863011	2015-10-29 16:09:22.134
244	5	9	\N	2015-10-29 17:59:49.506	2015-10-29 17:59:49.506
245	6	9	\N	2015-10-29 17:59:49.511	2015-10-29 17:59:49.511
246	7	9	\N	2015-10-29 17:59:49.516	2015-10-29 17:59:49.516
247	8	9	\N	2015-10-29 17:59:49.523	2015-10-29 17:59:49.523
248	9	9	\N	2015-10-29 17:59:49.53	2015-10-29 17:59:49.53
249	10	9	\N	2015-10-29 17:59:49.537	2015-10-29 17:59:49.537
255	16	9	\N	2015-10-29 17:59:49.574	2015-10-29 17:59:49.574
256	17	9	\N	2015-10-29 17:59:49.583	2015-10-29 17:59:49.583
260	21	9	\N	2015-10-29 17:59:49.617	2015-10-29 17:59:49.617
261	22	9	\N	2015-10-29 17:59:49.622	2015-10-29 17:59:49.622
262	23	9	\N	2015-10-29 17:59:49.627	2015-10-29 17:59:49.627
263	24	9	\N	2015-10-29 17:59:49.632	2015-10-29 17:59:49.632
264	25	9	\N	2015-10-29 17:59:49.636	2015-10-29 17:59:49.636
265	26	9	\N	2015-10-29 17:59:49.641	2015-10-29 17:59:49.641
266	27	9	\N	2015-10-29 17:59:49.65	2015-10-29 17:59:49.65
267	28	9	\N	2015-10-29 17:59:49.66	2015-10-29 17:59:49.66
268	29	9	\N	2015-10-29 17:59:49.672	2015-10-29 17:59:49.672
269	30	9	\N	2015-10-29 17:59:49.683	2015-10-29 17:59:49.683
270	31	9	\N	2015-10-29 17:59:49.69	2015-10-29 17:59:49.69
271	32	9	\N	2015-10-29 17:59:49.699	2015-10-29 17:59:49.699
242	3	9	21	2015-10-29 17:59:49.492	2015-10-29 18:01:12.496
259	20	9	\N	2015-10-29 17:59:49.608	2015-10-29 19:05:45.932
243	4	9	\N	2015-10-29 17:59:49.501	2015-10-29 18:49:43.79
239	0	9	\N	2015-10-29 17:59:49.471	2015-10-29 18:40:14.528
257	18	9	\N	2015-10-29 17:59:49.591	2015-10-29 19:03:11.572
250	11	9	28	2015-10-29 17:59:49.542	2015-10-30 01:34:57.317
258	19	9	\N	2015-10-29 17:59:49.602	2015-10-29 19:03:01.987
251	12	9	29	2015-10-29 17:59:49.553	2015-10-30 01:35:10.508
252	13	9	30	2015-10-29 17:59:49.559	2015-10-30 01:35:24.834
253	14	9	31	2015-10-29 17:59:49.564	2015-10-30 01:35:37.983
254	15	9	32	2015-10-29 17:59:49.569	2015-10-30 01:37:51.617
272	33	9	\N	2015-10-29 17:59:49.706	2015-10-29 17:59:49.706
273	34	9	\N	2015-10-29 17:59:49.717	2015-10-29 17:59:49.717
274	35	9	\N	2015-10-29 17:59:49.72	2015-10-29 17:59:49.72
275	36	9	\N	2015-10-29 17:59:49.738	2015-10-29 17:59:49.738
276	37	9	\N	2015-10-29 17:59:49.745	2015-10-29 17:59:49.745
277	38	9	\N	2015-10-29 17:59:49.752	2015-10-29 17:59:49.752
278	39	9	\N	2015-10-29 17:59:49.759	2015-10-29 17:59:49.759
279	40	9	\N	2015-10-29 17:59:49.767	2015-10-29 17:59:49.767
280	41	9	\N	2015-10-29 17:59:49.772	2015-10-29 17:59:49.772
281	42	9	\N	2015-10-29 17:59:49.781	2015-10-29 17:59:49.781
282	43	9	\N	2015-10-29 17:59:49.789	2015-10-29 17:59:49.789
283	44	9	\N	2015-10-29 17:59:49.798	2015-10-29 17:59:49.798
284	45	9	\N	2015-10-29 17:59:49.807	2015-10-29 17:59:49.807
285	46	9	\N	2015-10-29 17:59:49.815	2015-10-29 17:59:49.815
286	47	9	\N	2015-10-29 17:59:49.822	2015-10-29 17:59:49.822
287	48	9	\N	2015-10-29 17:59:49.832	2015-10-29 17:59:49.832
288	49	9	\N	2015-10-29 17:59:49.841	2015-10-29 17:59:49.841
289	50	9	\N	2015-10-29 17:59:49.853	2015-10-29 17:59:49.853
290	51	9	\N	2015-10-29 17:59:49.863	2015-10-29 17:59:49.863
291	52	9	\N	2015-10-29 17:59:49.87	2015-10-29 17:59:49.87
292	53	9	\N	2015-10-29 17:59:49.884	2015-10-29 17:59:49.884
293	54	9	\N	2015-10-29 17:59:49.894	2015-10-29 17:59:49.894
294	55	9	\N	2015-10-29 17:59:49.906	2015-10-29 17:59:49.906
295	56	9	\N	2015-10-29 17:59:49.915	2015-10-29 17:59:49.915
296	57	9	\N	2015-10-29 17:59:49.92	2015-10-29 17:59:49.92
297	58	9	\N	2015-10-29 17:59:49.926	2015-10-29 17:59:49.926
298	59	9	\N	2015-10-29 17:59:49.932	2015-10-29 17:59:49.932
299	60	9	\N	2015-10-29 17:59:49.936	2015-10-29 17:59:49.936
300	61	9	\N	2015-10-29 17:59:49.94	2015-10-29 17:59:49.94
301	62	9	\N	2015-10-29 17:59:49.946	2015-10-29 17:59:49.946
302	63	9	\N	2015-10-29 17:59:49.95	2015-10-29 17:59:49.95
303	64	9	\N	2015-10-29 17:59:49.954	2015-10-29 17:59:49.954
304	65	9	\N	2015-10-29 17:59:49.959	2015-10-29 17:59:49.959
305	66	9	\N	2015-10-29 17:59:49.963	2015-10-29 17:59:49.963
306	67	9	\N	2015-10-29 17:59:49.967	2015-10-29 17:59:49.967
307	68	9	\N	2015-10-29 17:59:49.97	2015-10-29 17:59:49.97
308	69	9	\N	2015-10-29 17:59:49.974	2015-10-29 17:59:49.974
309	70	9	\N	2015-10-29 17:59:49.979	2015-10-29 17:59:49.979
310	71	9	\N	2015-10-29 17:59:49.983	2015-10-29 17:59:49.983
311	72	9	\N	2015-10-29 17:59:49.988	2015-10-29 17:59:49.988
312	73	9	\N	2015-10-29 17:59:49.993	2015-10-29 17:59:49.993
313	74	9	\N	2015-10-29 17:59:49.998	2015-10-29 17:59:49.998
314	75	9	\N	2015-10-29 17:59:50.003	2015-10-29 17:59:50.003
315	76	9	\N	2015-10-29 17:59:50.009	2015-10-29 17:59:50.009
316	77	9	\N	2015-10-29 17:59:50.015	2015-10-29 17:59:50.015
317	78	9	\N	2015-10-29 17:59:50.02	2015-10-29 17:59:50.02
318	79	9	\N	2015-10-29 17:59:50.047	2015-10-29 17:59:50.047
319	80	9	\N	2015-10-29 17:59:50.058	2015-10-29 17:59:50.058
241	2	9	20	2015-10-29 17:59:49.487	2015-10-29 18:00:50.9
240	1	9	\N	2015-10-29 17:59:49.481	2015-10-29 18:47:40.697
320	0	10	\N	2015-10-30 02:20:21.932	2015-10-30 02:20:21.932
321	1	10	\N	2015-10-30 02:20:21.937	2015-10-30 02:20:21.937
325	5	10	\N	2015-10-30 02:20:21.955	2015-10-30 02:20:21.955
326	6	10	\N	2015-10-30 02:20:21.959	2015-10-30 02:20:21.959
327	7	10	\N	2015-10-30 02:20:21.963	2015-10-30 02:20:21.963
328	8	10	\N	2015-10-30 02:20:21.968	2015-10-30 02:20:21.968
329	9	10	\N	2015-10-30 02:20:21.973	2015-10-30 02:20:21.973
330	10	10	\N	2015-10-30 02:20:21.977	2015-10-30 02:20:21.977
331	11	10	\N	2015-10-30 02:20:21.982	2015-10-30 02:20:21.982
332	12	10	\N	2015-10-30 02:20:21.989	2015-10-30 02:20:21.989
333	13	10	\N	2015-10-30 02:20:21.994	2015-10-30 02:20:21.994
334	14	10	\N	2015-10-30 02:20:22.001	2015-10-30 02:20:22.001
335	15	10	\N	2015-10-30 02:20:22.006	2015-10-30 02:20:22.006
336	16	10	\N	2015-10-30 02:20:22.01	2015-10-30 02:20:22.01
337	17	10	\N	2015-10-30 02:20:22.017	2015-10-30 02:20:22.017
338	18	10	\N	2015-10-30 02:20:22.022	2015-10-30 02:20:22.022
339	19	10	\N	2015-10-30 02:20:22.028	2015-10-30 02:20:22.028
340	20	10	\N	2015-10-30 02:20:22.033	2015-10-30 02:20:22.033
341	21	10	\N	2015-10-30 02:20:22.04	2015-10-30 02:20:22.04
342	22	10	\N	2015-10-30 02:20:22.047	2015-10-30 02:20:22.047
343	23	10	\N	2015-10-30 02:20:22.054	2015-10-30 02:20:22.054
344	24	10	\N	2015-10-30 02:20:22.059	2015-10-30 02:20:22.059
345	25	10	\N	2015-10-30 02:20:22.065	2015-10-30 02:20:22.065
346	26	10	\N	2015-10-30 02:20:22.074	2015-10-30 02:20:22.074
347	27	10	\N	2015-10-30 02:20:22.08	2015-10-30 02:20:22.08
348	28	10	\N	2015-10-30 02:20:22.086	2015-10-30 02:20:22.086
349	29	10	\N	2015-10-30 02:20:22.09	2015-10-30 02:20:22.09
350	30	10	\N	2015-10-30 02:20:22.096	2015-10-30 02:20:22.096
351	31	10	\N	2015-10-30 02:20:22.104	2015-10-30 02:20:22.104
352	32	10	\N	2015-10-30 02:20:22.109	2015-10-30 02:20:22.109
353	33	10	\N	2015-10-30 02:20:22.114	2015-10-30 02:20:22.114
354	34	10	\N	2015-10-30 02:20:22.12	2015-10-30 02:20:22.12
355	35	10	\N	2015-10-30 02:20:22.124	2015-10-30 02:20:22.124
356	36	10	\N	2015-10-30 02:20:22.13	2015-10-30 02:20:22.13
357	37	10	\N	2015-10-30 02:20:22.135	2015-10-30 02:20:22.135
358	38	10	\N	2015-10-30 02:20:22.141	2015-10-30 02:20:22.141
359	39	10	\N	2015-10-30 02:20:22.148	2015-10-30 02:20:22.148
360	40	10	\N	2015-10-30 02:20:22.155	2015-10-30 02:20:22.155
361	41	10	\N	2015-10-30 02:20:22.161	2015-10-30 02:20:22.161
362	42	10	\N	2015-10-30 02:20:22.165	2015-10-30 02:20:22.165
363	43	10	\N	2015-10-30 02:20:22.171	2015-10-30 02:20:22.171
364	44	10	\N	2015-10-30 02:20:22.175	2015-10-30 02:20:22.175
365	45	10	\N	2015-10-30 02:20:22.178	2015-10-30 02:20:22.178
366	46	10	\N	2015-10-30 02:20:22.183	2015-10-30 02:20:22.183
367	47	10	\N	2015-10-30 02:20:22.188	2015-10-30 02:20:22.188
368	48	10	\N	2015-10-30 02:20:22.193	2015-10-30 02:20:22.193
369	49	10	\N	2015-10-30 02:20:22.197	2015-10-30 02:20:22.197
370	50	10	\N	2015-10-30 02:20:22.203	2015-10-30 02:20:22.203
371	51	10	\N	2015-10-30 02:20:22.208	2015-10-30 02:20:22.208
372	52	10	\N	2015-10-30 02:20:22.214	2015-10-30 02:20:22.214
373	53	10	\N	2015-10-30 02:20:22.221	2015-10-30 02:20:22.221
374	54	10	\N	2015-10-30 02:20:22.225	2015-10-30 02:20:22.225
375	55	10	\N	2015-10-30 02:20:22.23	2015-10-30 02:20:22.23
376	56	10	\N	2015-10-30 02:20:22.238	2015-10-30 02:20:22.238
377	57	10	\N	2015-10-30 02:20:22.245	2015-10-30 02:20:22.245
378	58	10	\N	2015-10-30 02:20:22.253	2015-10-30 02:20:22.253
379	59	10	\N	2015-10-30 02:20:22.26	2015-10-30 02:20:22.26
380	60	10	\N	2015-10-30 02:20:22.264	2015-10-30 02:20:22.264
381	61	10	\N	2015-10-30 02:20:22.269	2015-10-30 02:20:22.269
382	62	10	\N	2015-10-30 02:20:22.274	2015-10-30 02:20:22.274
383	63	10	\N	2015-10-30 02:20:22.28	2015-10-30 02:20:22.28
384	64	10	\N	2015-10-30 02:20:22.287	2015-10-30 02:20:22.287
385	65	10	\N	2015-10-30 02:20:22.291	2015-10-30 02:20:22.291
386	66	10	\N	2015-10-30 02:20:22.298	2015-10-30 02:20:22.298
387	67	10	\N	2015-10-30 02:20:22.304	2015-10-30 02:20:22.304
388	68	10	\N	2015-10-30 02:20:22.322	2015-10-30 02:20:22.322
389	69	10	\N	2015-10-30 02:20:22.328	2015-10-30 02:20:22.328
390	70	10	\N	2015-10-30 02:20:22.333	2015-10-30 02:20:22.333
391	71	10	\N	2015-10-30 02:20:22.339	2015-10-30 02:20:22.339
392	72	10	\N	2015-10-30 02:20:22.344	2015-10-30 02:20:22.344
393	73	10	\N	2015-10-30 02:20:22.349	2015-10-30 02:20:22.349
394	74	10	\N	2015-10-30 02:20:22.356	2015-10-30 02:20:22.356
395	75	10	\N	2015-10-30 02:20:22.36	2015-10-30 02:20:22.36
396	76	10	\N	2015-10-30 02:20:22.366	2015-10-30 02:20:22.366
397	77	10	\N	2015-10-30 02:20:22.373	2015-10-30 02:20:22.373
398	78	10	\N	2015-10-30 02:20:22.378	2015-10-30 02:20:22.378
399	79	10	\N	2015-10-30 02:20:22.383	2015-10-30 02:20:22.383
400	80	10	\N	2015-10-30 02:20:22.387	2015-10-30 02:20:22.387
322	2	10	33	2015-10-30 02:20:21.941	2015-10-30 02:21:34.223
323	3	10	33	2015-10-30 02:20:21.945	2015-10-30 02:21:55.248
401	0	11	\N	2015-11-03 10:50:59.827	2015-11-03 10:50:59.827
324	4	10	\N	2015-10-30 02:20:21.951	2015-10-30 02:26:13.051
402	1	11	\N	2015-11-03 10:50:59.863	2015-11-03 10:50:59.863
403	2	11	\N	2015-11-03 10:50:59.869	2015-11-03 10:50:59.869
404	3	11	\N	2015-11-03 10:50:59.875	2015-11-03 10:50:59.875
405	4	11	\N	2015-11-03 10:50:59.882	2015-11-03 10:50:59.882
406	5	11	\N	2015-11-03 10:50:59.889	2015-11-03 10:50:59.889
407	6	11	\N	2015-11-03 10:50:59.894	2015-11-03 10:50:59.894
408	7	11	\N	2015-11-03 10:50:59.902	2015-11-03 10:50:59.902
409	8	11	\N	2015-11-03 10:50:59.919	2015-11-03 10:50:59.919
410	9	11	\N	2015-11-03 10:50:59.925	2015-11-03 10:50:59.925
411	10	11	\N	2015-11-03 10:50:59.931	2015-11-03 10:50:59.931
412	11	11	\N	2015-11-03 10:50:59.944	2015-11-03 10:50:59.944
413	12	11	\N	2015-11-03 10:50:59.951	2015-11-03 10:50:59.951
414	13	11	\N	2015-11-03 10:50:59.961	2015-11-03 10:50:59.961
415	14	11	\N	2015-11-03 10:50:59.974	2015-11-03 10:50:59.974
416	15	11	\N	2015-11-03 10:50:59.981	2015-11-03 10:50:59.981
417	16	11	\N	2015-11-03 10:50:59.988	2015-11-03 10:50:59.988
418	17	11	\N	2015-11-03 10:50:59.994	2015-11-03 10:50:59.994
419	18	11	\N	2015-11-03 10:50:59.998	2015-11-03 10:50:59.998
420	19	11	\N	2015-11-03 10:51:00.007	2015-11-03 10:51:00.007
421	20	11	\N	2015-11-03 10:51:00.015	2015-11-03 10:51:00.015
422	21	11	\N	2015-11-03 10:51:00.03	2015-11-03 10:51:00.03
423	22	11	\N	2015-11-03 10:51:00.041	2015-11-03 10:51:00.041
424	23	11	\N	2015-11-03 10:51:00.055	2015-11-03 10:51:00.055
425	24	11	\N	2015-11-03 10:51:00.066	2015-11-03 10:51:00.066
426	25	11	\N	2015-11-03 10:51:00.073	2015-11-03 10:51:00.073
427	26	11	\N	2015-11-03 10:51:00.081	2015-11-03 10:51:00.081
428	27	11	\N	2015-11-03 10:51:00.089	2015-11-03 10:51:00.089
429	28	11	\N	2015-11-03 10:51:00.095	2015-11-03 10:51:00.095
430	29	11	\N	2015-11-03 10:51:00.103	2015-11-03 10:51:00.103
431	30	11	\N	2015-11-03 10:51:00.115	2015-11-03 10:51:00.115
432	31	11	\N	2015-11-03 10:51:00.124	2015-11-03 10:51:00.124
433	32	11	\N	2015-11-03 10:51:00.13	2015-11-03 10:51:00.13
434	33	11	\N	2015-11-03 10:51:00.141	2015-11-03 10:51:00.141
435	34	11	\N	2015-11-03 10:51:00.149	2015-11-03 10:51:00.149
436	35	11	\N	2015-11-03 10:51:00.16	2015-11-03 10:51:00.16
437	36	11	\N	2015-11-03 10:51:00.184	2015-11-03 10:51:00.184
438	37	11	\N	2015-11-03 10:51:00.196	2015-11-03 10:51:00.196
439	38	11	\N	2015-11-03 10:51:00.208	2015-11-03 10:51:00.208
440	39	11	\N	2015-11-03 10:51:00.218	2015-11-03 10:51:00.218
441	40	11	\N	2015-11-03 10:51:00.224	2015-11-03 10:51:00.224
442	41	11	\N	2015-11-03 10:51:00.231	2015-11-03 10:51:00.231
443	42	11	\N	2015-11-03 10:51:00.242	2015-11-03 10:51:00.242
444	43	11	\N	2015-11-03 10:51:00.27	2015-11-03 10:51:00.27
445	44	11	\N	2015-11-03 10:51:00.283	2015-11-03 10:51:00.283
446	45	11	\N	2015-11-03 10:51:00.292	2015-11-03 10:51:00.292
447	46	11	\N	2015-11-03 10:51:00.299	2015-11-03 10:51:00.299
448	47	11	\N	2015-11-03 10:51:00.311	2015-11-03 10:51:00.311
449	48	11	\N	2015-11-03 10:51:00.32	2015-11-03 10:51:00.32
450	49	11	\N	2015-11-03 10:51:00.347	2015-11-03 10:51:00.347
451	50	11	\N	2015-11-03 10:51:00.365	2015-11-03 10:51:00.365
452	51	11	\N	2015-11-03 10:51:00.376	2015-11-03 10:51:00.376
453	52	11	\N	2015-11-03 10:51:00.383	2015-11-03 10:51:00.383
454	53	11	\N	2015-11-03 10:51:00.401	2015-11-03 10:51:00.401
455	54	11	\N	2015-11-03 10:51:00.412	2015-11-03 10:51:00.412
456	55	11	\N	2015-11-03 10:51:00.424	2015-11-03 10:51:00.424
457	56	11	\N	2015-11-03 10:51:00.481	2015-11-03 10:51:00.481
458	57	11	\N	2015-11-03 10:51:00.511	2015-11-03 10:51:00.511
459	58	11	\N	2015-11-03 10:51:00.524	2015-11-03 10:51:00.524
460	59	11	\N	2015-11-03 10:51:00.534	2015-11-03 10:51:00.534
461	60	11	\N	2015-11-03 10:51:00.548	2015-11-03 10:51:00.548
462	61	11	\N	2015-11-03 10:51:00.562	2015-11-03 10:51:00.562
463	62	11	\N	2015-11-03 10:51:00.569	2015-11-03 10:51:00.569
464	63	11	\N	2015-11-03 10:51:00.579	2015-11-03 10:51:00.579
465	64	11	\N	2015-11-03 10:51:00.59	2015-11-03 10:51:00.59
466	65	11	\N	2015-11-03 10:51:00.6	2015-11-03 10:51:00.6
467	66	11	\N	2015-11-03 10:51:00.611	2015-11-03 10:51:00.611
468	67	11	\N	2015-11-03 10:51:00.619	2015-11-03 10:51:00.619
469	68	11	\N	2015-11-03 10:51:00.626	2015-11-03 10:51:00.626
470	69	11	\N	2015-11-03 10:51:00.637	2015-11-03 10:51:00.637
471	70	11	\N	2015-11-03 10:51:00.644	2015-11-03 10:51:00.644
472	71	11	\N	2015-11-03 10:51:00.649	2015-11-03 10:51:00.649
473	72	11	\N	2015-11-03 10:51:00.658	2015-11-03 10:51:00.658
474	73	11	\N	2015-11-03 10:51:00.664	2015-11-03 10:51:00.664
475	74	11	\N	2015-11-03 10:51:00.674	2015-11-03 10:51:00.674
476	75	11	\N	2015-11-03 10:51:00.68	2015-11-03 10:51:00.68
477	76	11	\N	2015-11-03 10:51:00.688	2015-11-03 10:51:00.688
478	77	11	\N	2015-11-03 10:51:00.702	2015-11-03 10:51:00.702
479	78	11	\N	2015-11-03 10:51:00.714	2015-11-03 10:51:00.714
480	79	11	\N	2015-11-03 10:51:00.724	2015-11-03 10:51:00.724
481	80	11	\N	2015-11-03 10:51:00.731	2015-11-03 10:51:00.731
482	0	12	\N	2015-11-04 02:24:29.056	2015-11-04 02:24:29.056
483	1	12	\N	2015-11-04 02:24:29.092	2015-11-04 02:24:29.092
484	2	12	\N	2015-11-04 02:24:29.096	2015-11-04 02:24:29.096
485	3	12	\N	2015-11-04 02:24:29.1	2015-11-04 02:24:29.1
486	4	12	\N	2015-11-04 02:24:29.105	2015-11-04 02:24:29.105
487	5	12	\N	2015-11-04 02:24:29.111	2015-11-04 02:24:29.111
488	6	12	\N	2015-11-04 02:24:29.117	2015-11-04 02:24:29.117
489	7	12	\N	2015-11-04 02:24:29.126	2015-11-04 02:24:29.126
490	8	12	\N	2015-11-04 02:24:29.135	2015-11-04 02:24:29.135
491	9	12	\N	2015-11-04 02:24:29.149	2015-11-04 02:24:29.149
492	10	12	\N	2015-11-04 02:24:29.157	2015-11-04 02:24:29.157
493	11	12	\N	2015-11-04 02:24:29.171	2015-11-04 02:24:29.171
494	12	12	\N	2015-11-04 02:24:29.184	2015-11-04 02:24:29.184
495	13	12	\N	2015-11-04 02:24:29.191	2015-11-04 02:24:29.191
496	14	12	\N	2015-11-04 02:24:29.202	2015-11-04 02:24:29.202
497	15	12	\N	2015-11-04 02:24:29.215	2015-11-04 02:24:29.215
498	16	12	\N	2015-11-04 02:24:29.228	2015-11-04 02:24:29.228
499	17	12	\N	2015-11-04 02:24:29.235	2015-11-04 02:24:29.235
500	18	12	\N	2015-11-04 02:24:29.244	2015-11-04 02:24:29.244
501	19	12	\N	2015-11-04 02:24:29.252	2015-11-04 02:24:29.252
502	20	12	\N	2015-11-04 02:24:29.285	2015-11-04 02:24:29.285
503	21	12	\N	2015-11-04 02:24:29.298	2015-11-04 02:24:29.298
504	22	12	\N	2015-11-04 02:24:29.31	2015-11-04 02:24:29.31
505	23	12	\N	2015-11-04 02:24:29.32	2015-11-04 02:24:29.32
506	24	12	\N	2015-11-04 02:24:29.332	2015-11-04 02:24:29.332
507	25	12	\N	2015-11-04 02:24:29.341	2015-11-04 02:24:29.341
508	26	12	\N	2015-11-04 02:24:29.35	2015-11-04 02:24:29.35
509	27	12	\N	2015-11-04 02:24:29.365	2015-11-04 02:24:29.365
510	28	12	\N	2015-11-04 02:24:29.385	2015-11-04 02:24:29.385
511	29	12	\N	2015-11-04 02:24:29.394	2015-11-04 02:24:29.394
512	30	12	\N	2015-11-04 02:24:29.404	2015-11-04 02:24:29.404
513	31	12	\N	2015-11-04 02:24:29.415	2015-11-04 02:24:29.415
514	32	12	\N	2015-11-04 02:24:29.422	2015-11-04 02:24:29.422
515	33	12	\N	2015-11-04 02:24:29.427	2015-11-04 02:24:29.427
516	34	12	\N	2015-11-04 02:24:29.432	2015-11-04 02:24:29.432
517	35	12	\N	2015-11-04 02:24:29.436	2015-11-04 02:24:29.436
518	36	12	\N	2015-11-04 02:24:29.441	2015-11-04 02:24:29.441
519	37	12	\N	2015-11-04 02:24:29.448	2015-11-04 02:24:29.448
520	38	12	\N	2015-11-04 02:24:29.453	2015-11-04 02:24:29.453
521	39	12	\N	2015-11-04 02:24:29.457	2015-11-04 02:24:29.457
522	40	12	\N	2015-11-04 02:24:29.464	2015-11-04 02:24:29.464
523	41	12	\N	2015-11-04 02:24:29.468	2015-11-04 02:24:29.468
524	42	12	\N	2015-11-04 02:24:29.473	2015-11-04 02:24:29.473
525	43	12	\N	2015-11-04 02:24:29.478	2015-11-04 02:24:29.478
526	44	12	\N	2015-11-04 02:24:29.483	2015-11-04 02:24:29.483
527	45	12	\N	2015-11-04 02:24:29.488	2015-11-04 02:24:29.488
528	46	12	\N	2015-11-04 02:24:29.497	2015-11-04 02:24:29.497
529	47	12	\N	2015-11-04 02:24:29.513	2015-11-04 02:24:29.513
530	48	12	\N	2015-11-04 02:24:29.519	2015-11-04 02:24:29.519
531	49	12	\N	2015-11-04 02:24:29.535	2015-11-04 02:24:29.535
532	50	12	\N	2015-11-04 02:24:29.542	2015-11-04 02:24:29.542
533	51	12	\N	2015-11-04 02:24:29.549	2015-11-04 02:24:29.549
534	52	12	\N	2015-11-04 02:24:29.555	2015-11-04 02:24:29.555
535	53	12	\N	2015-11-04 02:24:29.564	2015-11-04 02:24:29.564
536	54	12	\N	2015-11-04 02:24:29.564	2015-11-04 02:24:29.564
537	55	12	\N	2015-11-04 02:24:29.564	2015-11-04 02:24:29.564
538	56	12	\N	2015-11-04 02:24:29.579	2015-11-04 02:24:29.579
539	57	12	\N	2015-11-04 02:24:29.579	2015-11-04 02:24:29.579
540	58	12	\N	2015-11-04 02:24:29.579	2015-11-04 02:24:29.579
541	59	12	\N	2015-11-04 02:24:29.596	2015-11-04 02:24:29.596
542	60	12	\N	2015-11-04 02:24:29.601	2015-11-04 02:24:29.601
543	61	12	\N	2015-11-04 02:24:29.608	2015-11-04 02:24:29.608
544	62	12	\N	2015-11-04 02:24:29.615	2015-11-04 02:24:29.615
545	63	12	\N	2015-11-04 02:24:29.621	2015-11-04 02:24:29.621
546	64	12	\N	2015-11-04 02:24:29.632	2015-11-04 02:24:29.632
547	65	12	\N	2015-11-04 02:24:29.637	2015-11-04 02:24:29.637
548	66	12	\N	2015-11-04 02:24:29.645	2015-11-04 02:24:29.645
549	67	12	\N	2015-11-04 02:24:29.65	2015-11-04 02:24:29.65
550	68	12	\N	2015-11-04 02:24:29.654	2015-11-04 02:24:29.654
551	69	12	\N	2015-11-04 02:24:29.659	2015-11-04 02:24:29.659
552	70	12	\N	2015-11-04 02:24:29.665	2015-11-04 02:24:29.665
553	71	12	\N	2015-11-04 02:24:29.669	2015-11-04 02:24:29.669
554	72	12	\N	2015-11-04 02:24:29.674	2015-11-04 02:24:29.674
555	73	12	\N	2015-11-04 02:24:29.682	2015-11-04 02:24:29.682
556	74	12	\N	2015-11-04 02:24:29.69	2015-11-04 02:24:29.69
557	75	12	\N	2015-11-04 02:24:29.697	2015-11-04 02:24:29.697
558	76	12	\N	2015-11-04 02:24:29.704	2015-11-04 02:24:29.704
559	77	12	\N	2015-11-04 02:24:29.71	2015-11-04 02:24:29.71
560	78	12	\N	2015-11-04 02:24:29.716	2015-11-04 02:24:29.716
561	79	12	\N	2015-11-04 02:24:29.721	2015-11-04 02:24:29.721
562	80	12	\N	2015-11-04 02:24:29.73	2015-11-04 02:24:29.73
563	0	13	\N	2015-11-04 05:46:16.398	2015-11-04 05:46:16.398
564	1	13	\N	2015-11-04 05:46:16.404	2015-11-04 05:46:16.404
565	2	13	\N	2015-11-04 05:46:16.411	2015-11-04 05:46:16.411
566	3	13	\N	2015-11-04 05:46:16.416	2015-11-04 05:46:16.416
567	4	13	\N	2015-11-04 05:46:16.42	2015-11-04 05:46:16.42
568	5	13	\N	2015-11-04 05:46:16.427	2015-11-04 05:46:16.427
569	6	13	\N	2015-11-04 05:46:16.434	2015-11-04 05:46:16.434
570	7	13	\N	2015-11-04 05:46:16.442	2015-11-04 05:46:16.442
571	8	13	\N	2015-11-04 05:46:16.447	2015-11-04 05:46:16.447
572	9	13	\N	2015-11-04 05:46:16.452	2015-11-04 05:46:16.452
573	10	13	\N	2015-11-04 05:46:16.457	2015-11-04 05:46:16.457
574	11	13	\N	2015-11-04 05:46:16.462	2015-11-04 05:46:16.462
575	12	13	\N	2015-11-04 05:46:16.466	2015-11-04 05:46:16.466
576	13	13	\N	2015-11-04 05:46:16.471	2015-11-04 05:46:16.471
577	14	13	\N	2015-11-04 05:46:16.481	2015-11-04 05:46:16.481
578	15	13	\N	2015-11-04 05:46:16.486	2015-11-04 05:46:16.486
579	16	13	\N	2015-11-04 05:46:16.492	2015-11-04 05:46:16.492
580	17	13	\N	2015-11-04 05:46:16.496	2015-11-04 05:46:16.496
581	18	13	\N	2015-11-04 05:46:16.501	2015-11-04 05:46:16.501
582	19	13	\N	2015-11-04 05:46:16.506	2015-11-04 05:46:16.506
583	20	13	\N	2015-11-04 05:46:16.51	2015-11-04 05:46:16.51
584	21	13	\N	2015-11-04 05:46:16.514	2015-11-04 05:46:16.514
585	22	13	\N	2015-11-04 05:46:16.518	2015-11-04 05:46:16.518
586	23	13	\N	2015-11-04 05:46:16.524	2015-11-04 05:46:16.524
587	24	13	\N	2015-11-04 05:46:16.528	2015-11-04 05:46:16.528
588	25	13	\N	2015-11-04 05:46:16.532	2015-11-04 05:46:16.532
589	26	13	\N	2015-11-04 05:46:16.536	2015-11-04 05:46:16.536
590	27	13	\N	2015-11-04 05:46:16.542	2015-11-04 05:46:16.542
591	28	13	\N	2015-11-04 05:46:16.545	2015-11-04 05:46:16.545
592	29	13	\N	2015-11-04 05:46:16.551	2015-11-04 05:46:16.551
593	30	13	\N	2015-11-04 05:46:16.559	2015-11-04 05:46:16.559
594	31	13	\N	2015-11-04 05:46:16.564	2015-11-04 05:46:16.564
595	32	13	\N	2015-11-04 05:46:16.569	2015-11-04 05:46:16.569
596	33	13	\N	2015-11-04 05:46:16.575	2015-11-04 05:46:16.575
597	34	13	\N	2015-11-04 05:46:16.58	2015-11-04 05:46:16.58
598	35	13	\N	2015-11-04 05:46:16.585	2015-11-04 05:46:16.585
599	36	13	\N	2015-11-04 05:46:16.592	2015-11-04 05:46:16.592
600	37	13	\N	2015-11-04 05:46:16.598	2015-11-04 05:46:16.598
601	38	13	\N	2015-11-04 05:46:16.602	2015-11-04 05:46:16.602
602	39	13	\N	2015-11-04 05:46:16.609	2015-11-04 05:46:16.609
603	40	13	\N	2015-11-04 05:46:16.614	2015-11-04 05:46:16.614
604	41	13	\N	2015-11-04 05:46:16.619	2015-11-04 05:46:16.619
605	42	13	\N	2015-11-04 05:46:16.624	2015-11-04 05:46:16.624
606	43	13	\N	2015-11-04 05:46:16.63	2015-11-04 05:46:16.63
607	44	13	\N	2015-11-04 05:46:16.636	2015-11-04 05:46:16.636
608	45	13	\N	2015-11-04 05:46:16.648	2015-11-04 05:46:16.648
609	46	13	\N	2015-11-04 05:46:16.652	2015-11-04 05:46:16.652
610	47	13	\N	2015-11-04 05:46:16.657	2015-11-04 05:46:16.657
611	48	13	\N	2015-11-04 05:46:16.662	2015-11-04 05:46:16.662
612	49	13	\N	2015-11-04 05:46:16.666	2015-11-04 05:46:16.666
613	50	13	\N	2015-11-04 05:46:16.671	2015-11-04 05:46:16.671
614	51	13	\N	2015-11-04 05:46:16.675	2015-11-04 05:46:16.675
615	52	13	\N	2015-11-04 05:46:16.675	2015-11-04 05:46:16.675
616	53	13	\N	2015-11-04 05:46:16.675	2015-11-04 05:46:16.675
617	54	13	\N	2015-11-04 05:46:16.675	2015-11-04 05:46:16.675
618	55	13	\N	2015-11-04 05:46:16.694	2015-11-04 05:46:16.694
619	56	13	\N	2015-11-04 05:46:16.699	2015-11-04 05:46:16.699
620	57	13	\N	2015-11-04 05:46:16.703	2015-11-04 05:46:16.703
621	58	13	\N	2015-11-04 05:46:16.708	2015-11-04 05:46:16.708
622	59	13	\N	2015-11-04 05:46:16.712	2015-11-04 05:46:16.712
623	60	13	\N	2015-11-04 05:46:16.718	2015-11-04 05:46:16.718
624	61	13	\N	2015-11-04 05:46:16.726	2015-11-04 05:46:16.726
625	62	13	\N	2015-11-04 05:46:16.733	2015-11-04 05:46:16.733
626	63	13	\N	2015-11-04 05:46:16.737	2015-11-04 05:46:16.737
627	64	13	\N	2015-11-04 05:46:16.744	2015-11-04 05:46:16.744
628	65	13	\N	2015-11-04 05:46:16.751	2015-11-04 05:46:16.751
629	66	13	\N	2015-11-04 05:46:16.757	2015-11-04 05:46:16.757
630	67	13	\N	2015-11-04 05:46:16.762	2015-11-04 05:46:16.762
631	68	13	\N	2015-11-04 05:46:16.769	2015-11-04 05:46:16.769
632	69	13	\N	2015-11-04 05:46:16.776	2015-11-04 05:46:16.776
633	70	13	\N	2015-11-04 05:46:16.781	2015-11-04 05:46:16.781
634	71	13	\N	2015-11-04 05:46:16.787	2015-11-04 05:46:16.787
635	72	13	\N	2015-11-04 05:46:16.793	2015-11-04 05:46:16.793
636	73	13	\N	2015-11-04 05:46:16.8	2015-11-04 05:46:16.8
637	74	13	\N	2015-11-04 05:46:16.805	2015-11-04 05:46:16.805
638	75	13	\N	2015-11-04 05:46:16.811	2015-11-04 05:46:16.811
639	76	13	\N	2015-11-04 05:46:16.816	2015-11-04 05:46:16.816
640	77	13	\N	2015-11-04 05:46:16.822	2015-11-04 05:46:16.822
641	78	13	\N	2015-11-04 05:46:16.83	2015-11-04 05:46:16.83
642	79	13	\N	2015-11-04 05:46:16.835	2015-11-04 05:46:16.835
643	80	13	\N	2015-11-04 05:46:16.844	2015-11-04 05:46:16.844
644	0	14	\N	2015-11-05 15:05:59.591	2015-11-05 15:05:59.591
645	1	14	\N	2015-11-05 15:05:59.63	2015-11-05 15:05:59.63
646	2	14	\N	2015-11-05 15:05:59.639	2015-11-05 15:05:59.639
647	3	14	\N	2015-11-05 15:05:59.646	2015-11-05 15:05:59.646
648	4	14	\N	2015-11-05 15:05:59.676	2015-11-05 15:05:59.676
649	5	14	\N	2015-11-05 15:05:59.683	2015-11-05 15:05:59.683
650	6	14	\N	2015-11-05 15:05:59.69	2015-11-05 15:05:59.69
651	7	14	\N	2015-11-05 15:05:59.698	2015-11-05 15:05:59.698
652	8	14	\N	2015-11-05 15:05:59.705	2015-11-05 15:05:59.705
653	9	14	\N	2015-11-05 15:05:59.714	2015-11-05 15:05:59.714
654	10	14	\N	2015-11-05 15:05:59.726	2015-11-05 15:05:59.726
655	11	14	\N	2015-11-05 15:05:59.734	2015-11-05 15:05:59.734
656	12	14	\N	2015-11-05 15:05:59.741	2015-11-05 15:05:59.741
657	13	14	\N	2015-11-05 15:05:59.748	2015-11-05 15:05:59.748
658	14	14	\N	2015-11-05 15:05:59.754	2015-11-05 15:05:59.754
659	15	14	\N	2015-11-05 15:05:59.761	2015-11-05 15:05:59.761
660	16	14	\N	2015-11-05 15:05:59.767	2015-11-05 15:05:59.767
661	17	14	\N	2015-11-05 15:05:59.773	2015-11-05 15:05:59.773
662	18	14	\N	2015-11-05 15:05:59.779	2015-11-05 15:05:59.779
663	19	14	\N	2015-11-05 15:05:59.786	2015-11-05 15:05:59.786
664	20	14	\N	2015-11-05 15:05:59.792	2015-11-05 15:05:59.792
665	21	14	\N	2015-11-05 15:05:59.799	2015-11-05 15:05:59.799
666	22	14	\N	2015-11-05 15:05:59.806	2015-11-05 15:05:59.806
667	23	14	\N	2015-11-05 15:05:59.813	2015-11-05 15:05:59.813
668	24	14	\N	2015-11-05 15:05:59.82	2015-11-05 15:05:59.82
669	25	14	\N	2015-11-05 15:05:59.827	2015-11-05 15:05:59.827
670	26	14	\N	2015-11-05 15:05:59.835	2015-11-05 15:05:59.835
671	27	14	\N	2015-11-05 15:05:59.844	2015-11-05 15:05:59.844
672	28	14	\N	2015-11-05 15:05:59.856	2015-11-05 15:05:59.856
673	29	14	\N	2015-11-05 15:05:59.867	2015-11-05 15:05:59.867
674	30	14	\N	2015-11-05 15:05:59.877	2015-11-05 15:05:59.877
675	31	14	\N	2015-11-05 15:05:59.889	2015-11-05 15:05:59.889
676	32	14	\N	2015-11-05 15:05:59.899	2015-11-05 15:05:59.899
677	33	14	\N	2015-11-05 15:05:59.909	2015-11-05 15:05:59.909
678	34	14	\N	2015-11-05 15:05:59.919	2015-11-05 15:05:59.919
679	35	14	\N	2015-11-05 15:05:59.932	2015-11-05 15:05:59.932
680	36	14	\N	2015-11-05 15:05:59.94	2015-11-05 15:05:59.94
681	37	14	\N	2015-11-05 15:05:59.95	2015-11-05 15:05:59.95
682	38	14	\N	2015-11-05 15:05:59.958	2015-11-05 15:05:59.958
683	39	14	\N	2015-11-05 15:05:59.974	2015-11-05 15:05:59.974
684	40	14	\N	2015-11-05 15:05:59.985	2015-11-05 15:05:59.985
685	41	14	\N	2015-11-05 15:05:59.994	2015-11-05 15:05:59.994
686	42	14	\N	2015-11-05 15:06:00.006	2015-11-05 15:06:00.006
687	43	14	\N	2015-11-05 15:06:00.021	2015-11-05 15:06:00.021
688	44	14	\N	2015-11-05 15:06:00.034	2015-11-05 15:06:00.034
689	45	14	\N	2015-11-05 15:06:00.041	2015-11-05 15:06:00.041
690	46	14	\N	2015-11-05 15:06:00.054	2015-11-05 15:06:00.054
691	47	14	\N	2015-11-05 15:06:00.066	2015-11-05 15:06:00.066
692	48	14	\N	2015-11-05 15:06:00.08	2015-11-05 15:06:00.08
693	49	14	\N	2015-11-05 15:06:00.086	2015-11-05 15:06:00.086
694	50	14	\N	2015-11-05 15:06:00.094	2015-11-05 15:06:00.094
695	51	14	\N	2015-11-05 15:06:00.102	2015-11-05 15:06:00.102
696	52	14	\N	2015-11-05 15:06:00.11	2015-11-05 15:06:00.11
697	53	14	\N	2015-11-05 15:06:00.119	2015-11-05 15:06:00.119
698	54	14	\N	2015-11-05 15:06:00.129	2015-11-05 15:06:00.129
699	55	14	\N	2015-11-05 15:06:00.137	2015-11-05 15:06:00.137
700	56	14	\N	2015-11-05 15:06:00.144	2015-11-05 15:06:00.144
701	57	14	\N	2015-11-05 15:06:00.155	2015-11-05 15:06:00.155
702	58	14	\N	2015-11-05 15:06:00.165	2015-11-05 15:06:00.165
703	59	14	\N	2015-11-05 15:06:00.172	2015-11-05 15:06:00.172
704	60	14	\N	2015-11-05 15:06:00.181	2015-11-05 15:06:00.181
705	61	14	\N	2015-11-05 15:06:00.19	2015-11-05 15:06:00.19
706	62	14	\N	2015-11-05 15:06:00.201	2015-11-05 15:06:00.201
707	63	14	\N	2015-11-05 15:06:00.217	2015-11-05 15:06:00.217
708	0	15	\N	2015-11-05 15:06:41.893	2015-11-05 15:06:41.893
709	1	15	\N	2015-11-05 15:06:41.904	2015-11-05 15:06:41.904
710	2	15	\N	2015-11-05 15:06:41.91	2015-11-05 15:06:41.91
711	3	15	\N	2015-11-05 15:06:41.921	2015-11-05 15:06:41.921
712	4	15	\N	2015-11-05 15:06:41.929	2015-11-05 15:06:41.929
713	5	15	\N	2015-11-05 15:06:41.936	2015-11-05 15:06:41.936
714	6	15	\N	2015-11-05 15:06:41.941	2015-11-05 15:06:41.941
715	7	15	\N	2015-11-05 15:06:41.948	2015-11-05 15:06:41.948
716	8	15	\N	2015-11-05 15:06:41.954	2015-11-05 15:06:41.954
717	9	15	\N	2015-11-05 15:06:41.959	2015-11-05 15:06:41.959
718	10	15	\N	2015-11-05 15:06:41.967	2015-11-05 15:06:41.967
719	11	15	\N	2015-11-05 15:06:41.973	2015-11-05 15:06:41.973
720	12	15	\N	2015-11-05 15:06:41.979	2015-11-05 15:06:41.979
721	13	15	\N	2015-11-05 15:06:41.986	2015-11-05 15:06:41.986
722	14	15	\N	2015-11-05 15:06:41.993	2015-11-05 15:06:41.993
723	15	15	\N	2015-11-05 15:06:42	2015-11-05 15:06:42
724	16	15	\N	2015-11-05 15:06:42.006	2015-11-05 15:06:42.006
725	17	15	\N	2015-11-05 15:06:42.011	2015-11-05 15:06:42.011
726	18	15	\N	2015-11-05 15:06:42.017	2015-11-05 15:06:42.017
727	19	15	\N	2015-11-05 15:06:42.026	2015-11-05 15:06:42.026
728	20	15	\N	2015-11-05 15:06:42.033	2015-11-05 15:06:42.033
729	21	15	\N	2015-11-05 15:06:42.041	2015-11-05 15:06:42.041
730	22	15	\N	2015-11-05 15:06:42.048	2015-11-05 15:06:42.048
731	23	15	\N	2015-11-05 15:06:42.054	2015-11-05 15:06:42.054
732	24	15	\N	2015-11-05 15:06:42.06	2015-11-05 15:06:42.06
733	25	15	\N	2015-11-05 15:06:42.066	2015-11-05 15:06:42.066
734	26	15	\N	2015-11-05 15:06:42.071	2015-11-05 15:06:42.071
735	27	15	\N	2015-11-05 15:06:42.075	2015-11-05 15:06:42.075
736	28	15	\N	2015-11-05 15:06:42.079	2015-11-05 15:06:42.079
737	29	15	\N	2015-11-05 15:06:42.085	2015-11-05 15:06:42.085
738	30	15	\N	2015-11-05 15:06:42.096	2015-11-05 15:06:42.096
739	31	15	\N	2015-11-05 15:06:42.103	2015-11-05 15:06:42.103
740	32	15	\N	2015-11-05 15:06:42.109	2015-11-05 15:06:42.109
741	33	15	\N	2015-11-05 15:06:42.115	2015-11-05 15:06:42.115
742	34	15	\N	2015-11-05 15:06:42.123	2015-11-05 15:06:42.123
743	35	15	\N	2015-11-05 15:06:42.133	2015-11-05 15:06:42.133
744	36	15	\N	2015-11-05 15:06:42.139	2015-11-05 15:06:42.139
745	37	15	\N	2015-11-05 15:06:42.146	2015-11-05 15:06:42.146
746	38	15	\N	2015-11-05 15:06:42.151	2015-11-05 15:06:42.151
747	39	15	\N	2015-11-05 15:06:42.158	2015-11-05 15:06:42.158
748	40	15	\N	2015-11-05 15:06:42.165	2015-11-05 15:06:42.165
749	41	15	\N	2015-11-05 15:06:42.173	2015-11-05 15:06:42.173
750	42	15	\N	2015-11-05 15:06:42.182	2015-11-05 15:06:42.182
751	43	15	\N	2015-11-05 15:06:42.192	2015-11-05 15:06:42.192
752	44	15	\N	2015-11-05 15:06:42.2	2015-11-05 15:06:42.2
753	45	15	\N	2015-11-05 15:06:42.206	2015-11-05 15:06:42.206
754	46	15	\N	2015-11-05 15:06:42.216	2015-11-05 15:06:42.216
755	47	15	\N	2015-11-05 15:06:42.232	2015-11-05 15:06:42.232
756	48	15	\N	2015-11-05 15:06:42.25	2015-11-05 15:06:42.25
757	49	15	\N	2015-11-05 15:06:42.256	2015-11-05 15:06:42.256
758	50	15	\N	2015-11-05 15:06:42.261	2015-11-05 15:06:42.261
759	51	15	\N	2015-11-05 15:06:42.269	2015-11-05 15:06:42.269
760	52	15	\N	2015-11-05 15:06:42.28	2015-11-05 15:06:42.28
761	53	15	\N	2015-11-05 15:06:42.286	2015-11-05 15:06:42.286
762	54	15	\N	2015-11-05 15:06:42.292	2015-11-05 15:06:42.292
763	55	15	\N	2015-11-05 15:06:42.303	2015-11-05 15:06:42.303
764	56	15	\N	2015-11-05 15:06:42.313	2015-11-05 15:06:42.313
765	57	15	\N	2015-11-05 15:06:42.32	2015-11-05 15:06:42.32
766	58	15	\N	2015-11-05 15:06:42.325	2015-11-05 15:06:42.325
767	59	15	\N	2015-11-05 15:06:42.331	2015-11-05 15:06:42.331
768	60	15	\N	2015-11-05 15:06:42.341	2015-11-05 15:06:42.341
769	61	15	\N	2015-11-05 15:06:42.35	2015-11-05 15:06:42.35
770	62	15	\N	2015-11-05 15:06:42.358	2015-11-05 15:06:42.358
771	63	15	\N	2015-11-05 15:06:42.367	2015-11-05 15:06:42.367
772	64	15	\N	2015-11-05 15:06:42.377	2015-11-05 15:06:42.377
773	65	15	\N	2015-11-05 15:06:42.385	2015-11-05 15:06:42.385
774	66	15	\N	2015-11-05 15:06:42.39	2015-11-05 15:06:42.39
775	67	15	\N	2015-11-05 15:06:42.397	2015-11-05 15:06:42.397
776	68	15	\N	2015-11-05 15:06:42.415	2015-11-05 15:06:42.415
777	69	15	\N	2015-11-05 15:06:42.421	2015-11-05 15:06:42.421
778	70	15	\N	2015-11-05 15:06:42.427	2015-11-05 15:06:42.427
779	71	15	\N	2015-11-05 15:06:42.433	2015-11-05 15:06:42.433
780	72	15	\N	2015-11-05 15:06:42.439	2015-11-05 15:06:42.439
781	73	15	\N	2015-11-05 15:06:42.445	2015-11-05 15:06:42.445
782	74	15	\N	2015-11-05 15:06:42.467	2015-11-05 15:06:42.467
783	75	15	\N	2015-11-05 15:06:42.475	2015-11-05 15:06:42.475
784	76	15	\N	2015-11-05 15:06:42.483	2015-11-05 15:06:42.483
785	77	15	\N	2015-11-05 15:06:42.49	2015-11-05 15:06:42.49
786	78	15	\N	2015-11-05 15:06:42.494	2015-11-05 15:06:42.494
787	79	15	\N	2015-11-05 15:06:42.499	2015-11-05 15:06:42.499
788	80	15	\N	2015-11-05 15:06:42.504	2015-11-05 15:06:42.504
\.


--
-- Name: sample_storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sample_storages_id_seq', 788, true);


--
-- Data for Name: samples; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY samples (id, sample_no, sample_seq, user_id, storage_status, freezing_thawing_times, created_at, updated_at, sample_storage_id, initial_sample_volume, current_sample_volume, patient_case_id) FROM stdin;
3	10000-3	000003	\N	在库	3	2015-09-18 01:58:47.24859	2015-10-26 05:31:14.28862	\N	5	5	1
2	10000-2	000002	\N	出库	3	2015-09-18 01:58:47.24343	2015-10-29 15:30:41.723	\N	5	4.9000000000000004	1
1	10000-1	000001	\N	出库	3	2015-09-18 01:58:47.218346	2015-10-29 15:41:57.041	\N	5	4.7999999999999998	1
5	10000-5	000005	\N	出库	3	2015-09-18 01:58:47.256789	2015-10-29 15:42:18.753	\N	5	4.5	1
44	1-10002-6	000044	\N		\N	2015-11-07 03:13:26.668	2015-11-07 03:13:26.693	\N	30	30	10
45	1-10002-7	000045	\N		\N	2015-11-07 03:13:26.701	2015-11-07 03:13:26.712	\N	30	30	10
8	1-10001-3	000008	\N		\N	2015-09-21 01:55:37.494247	2015-10-26 05:34:59.472704	\N	10	10	2
9	1-10001-4	000009	\N		\N	2015-09-21 01:55:37.498784	2015-10-22 05:29:10.246476	\N	10	10	2
11	1-10001-6	000011	\N		\N	2015-09-21 01:55:37.506574	2015-10-22 08:09:26.602596	\N	10	10	2
10	1-10001-5	000010	\N		\N	2015-09-21 01:55:37.50278	2015-10-22 07:45:45.145144	\N	10	10	2
12	1-10001-7	000012	\N		\N	2015-09-21 01:55:37.510339	2015-10-23 09:33:34.978152	\N	10	10	2
14	1-10001-9	000014	\N		\N	2015-09-21 01:55:37.517589	2015-10-23 11:09:31.824052	\N	10	10	2
13	1-10001-8	000013	\N		\N	2015-09-21 01:55:37.513985	2015-10-23 09:34:34.769992	\N	10	10	2
15	1-10001-10	000015	\N		\N	2015-09-21 01:55:37.522022	2015-10-23 11:08:57.124457	\N	10	10	2
16	-1	000016	\N		\N	2015-10-08 09:44:58.897482	2015-10-22 08:53:47.593201	\N	10	10	5
17	1-1004-1	000017	\N		\N	2015-10-28 07:28:53.469176	2015-10-28 07:28:53.521415	\N	10	10	6
18	1-1004-2	000018	\N		\N	2015-10-28 07:28:53.525658	2015-10-28 07:28:53.530167	\N	10	10	6
19	1-1004-3	000019	\N		\N	2015-10-28 07:28:53.533097	2015-10-28 07:28:53.536075	\N	10	10	6
21	100005-1-2	000021	\N	预出库	\N	2015-10-29 17:53:29.603	2015-10-29 18:06:55.736	\N	15	15	7
20	100005-1-1	000020	\N	出库	\N	2015-10-29 17:53:29.58	2015-10-29 18:08:31.888	\N	15	14.800000000000001	7
29	100005-2-2	000029	\N	在库	3	2015-10-30 01:34:16.963	2015-10-30 01:35:10.514	\N	20	20	8
24	100005-1-5	000024	\N	出库	\N	2015-10-29 17:53:29.674	2015-10-29 18:40:14.529	\N	15	0	7
30	100005-2-3	000030	\N	在库	3	2015-10-30 01:34:16.985	2015-10-30 01:35:24.84	\N	20	20	8
31	100005-2-4	000031	\N	在库	3	2015-10-30 01:34:17.017	2015-10-30 01:35:37.992	\N	20	20	8
32	100005-2-5	000032	\N	在库	3	2015-10-30 01:34:17.046	2015-10-30 01:37:51.623	\N	20	20	8
23	100005-1-4	000023	\N	出库	\N	2015-10-29 17:53:29.654	2015-10-29 18:47:40.704	\N	15	0	7
6	1-10001-1	000006	\N	出库	\N	2015-09-21 01:55:37.482856	2015-10-29 17:44:35.311	\N	10	9	2
7	1-10001-2	000007	\N	出库	\N	2015-09-21 01:55:37.490049	2015-10-29 17:44:45.828	\N	10	9.6999999999999993	2
28	100005-2-1	000028	\N	预出库	3	2015-10-30 01:34:16.931	2015-10-30 01:41:08.82	\N	20	19.899999999999999	8
35	100005-2-8	000035	\N		3	2015-10-30 02:14:35.918	2015-10-30 02:14:35.929	\N	20	20	8
33	100005-2-6	000033	\N	在库	3	2015-10-30 02:14:35.878	2015-10-30 02:21:34.24	\N	20	20	8
34	100005-2-7	000034	\N	出库	3	2015-10-30 02:14:35.898	2015-10-30 02:26:13.059	\N	20	0	8
36	100005-122-1	000036	\N		3	2015-11-04 06:00:01.957	2015-11-04 06:00:02.01	\N	20	20	9
37	100005-122-2	000037	\N		3	2015-11-04 06:00:02.016	2015-11-04 06:00:02.022	\N	20	20	9
22	100005-1-3	000022	\N	出库	\N	2015-10-29 17:53:29.631	2015-10-29 18:49:43.797	\N	15	0	7
38	100005-122-3	000038	\N		3	2015-11-04 06:00:02.027	2015-11-04 06:00:02.033	\N	20	20	9
39	1-10002-1	000039	\N		\N	2015-11-07 03:06:41.594	2015-11-07 03:06:41.656	\N	20	20	10
40	1-10002-2	000040	\N		\N	2015-11-07 03:06:41.671	2015-11-07 03:06:41.703	\N	20	20	10
41	1-10002-3	000041	\N		\N	2015-11-07 03:06:41.714	2015-11-07 03:06:41.744	\N	20	20	10
25	100005-1-6	000025	\N	出库	\N	2015-10-29 18:59:39.414	2015-10-29 19:03:01.996	\N	10	0	7
26	100005-1-7	000026	\N	出库	\N	2015-10-29 18:59:39.434	2015-10-29 19:03:11.578	\N	10	0	7
27	100005-1-8	000027	\N	出库	\N	2015-10-29 18:59:39.45	2015-10-29 19:05:45.941	\N	10	0	7
4	10000-4	000004	\N	预出库	3	2015-09-18 01:58:47.252862	2015-10-30 01:31:48.461	\N	5	5	1
42	1-10002-4	000042	\N		\N	2015-11-07 03:06:41.77	2015-11-07 03:06:41.79	\N	20	20	10
43	1-10002-5	000043	\N		\N	2015-11-07 03:06:41.807	2015-11-07 03:06:41.831	\N	20	20	10
\.


--
-- Name: samples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('samples_id_seq', 45, true);


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
20151021121513
20151026081829
20151026085006
20151027090651
20151029085254
20151030005808
\.


--
-- Data for Name: sys_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sys_roles (id, name, remark, created_at, updated_at) FROM stdin;
1	超级管理员		2015-09-11 02:40:59.004136	2015-09-11 02:40:59.004136
\.


--
-- Name: sys_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_roles_id_seq', 1, true);


--
-- Data for Name: sys_table_columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sys_table_columns (id, tname_zn, tname_en, cname_zn, cname_en, order_no, created_at, updated_at) FROM stdin;
1	\N	boxer_storage	\N	position_index	\N	2015-10-29 09:55:51.086	2015-10-29 09:55:51.086
2	\N	boxer_storage	\N	boxer_id	\N	2015-10-29 09:55:51.13	2015-10-29 09:55:51.13
3	\N	boxer_storage	\N	frame_id	\N	2015-10-29 09:55:51.144	2015-10-29 09:55:51.144
4	\N	boxer	\N	box_name	\N	2015-10-29 09:55:51.161	2015-10-29 09:55:51.161
5	\N	boxer	\N	box_seq	\N	2015-10-29 09:55:51.171	2015-10-29 09:55:51.171
6	\N	boxer	\N	box_row	\N	2015-10-29 09:55:51.181	2015-10-29 09:55:51.181
7	\N	boxer	\N	box_column	\N	2015-10-29 09:55:51.191	2015-10-29 09:55:51.191
8	\N	boxer	\N	remark	\N	2015-10-29 09:55:51.201	2015-10-29 09:55:51.201
9	\N	container_type	\N	container_catalog	\N	2015-10-29 09:55:51.22	2015-10-29 09:55:51.22
10	\N	container_type	\N	container_icon	\N	2015-10-29 09:55:51.23	2015-10-29 09:55:51.23
11	\N	container_type	\N	alia_name	\N	2015-10-29 09:55:51.241	2015-10-29 09:55:51.241
12	\N	container_type	\N	add_link_url	\N	2015-10-29 09:55:51.252	2015-10-29 09:55:51.252
13	\N	container	\N	container_name	\N	2015-10-29 09:55:51.27	2015-10-29 09:55:51.27
14	\N	container	\N	container_type_id	\N	2015-10-29 09:55:51.283	2015-10-29 09:55:51.283
15	\N	container	\N	code_style	\N	2015-10-29 09:55:51.293	2015-10-29 09:55:51.293
16	\N	container	\N	frame_num	\N	2015-10-29 09:55:51.306	2015-10-29 09:55:51.306
17	\N	container	\N	container_rows	\N	2015-10-29 09:55:51.317	2015-10-29 09:55:51.317
18	\N	container	\N	container_columns	\N	2015-10-29 09:55:51.328	2015-10-29 09:55:51.328
19	\N	container	\N	container_seq	\N	2015-10-29 09:55:51.344	2015-10-29 09:55:51.344
20	\N	frame_storage	\N	position_index	\N	2015-10-29 09:55:51.354	2015-10-29 09:55:51.354
21	\N	frame_storage	\N	frame_id	\N	2015-10-29 09:55:51.365	2015-10-29 09:55:51.365
22	\N	frame_storage	\N	container_id	\N	2015-10-29 09:55:51.374	2015-10-29 09:55:51.374
23	\N	frame	\N	frame_seq	\N	2015-10-29 09:55:51.389	2015-10-29 09:55:51.389
24	\N	frame	\N	frame_name	\N	2015-10-29 09:55:51.399	2015-10-29 09:55:51.399
25	\N	frame	\N	frame_type	\N	2015-10-29 09:55:51.412	2015-10-29 09:55:51.412
26	\N	frame	\N	code_order	\N	2015-10-29 09:55:51.421	2015-10-29 09:55:51.421
27	\N	frame	\N	horizontal_direction	\N	2015-10-29 09:55:51.43	2015-10-29 09:55:51.43
28	\N	frame	\N	vertiacal_direction	\N	2015-10-29 09:55:51.44	2015-10-29 09:55:51.44
29	\N	frame	\N	frame_rows	\N	2015-10-29 09:55:51.45	2015-10-29 09:55:51.45
30	\N	frame	\N	frame_columns	\N	2015-10-29 09:55:51.462	2015-10-29 09:55:51.462
31	\N	hospital	\N	name	\N	2015-10-29 09:55:51.478	2015-10-29 09:55:51.478
32	\N	hospital	\N	province_id	\N	2015-10-29 09:55:51.488	2015-10-29 09:55:51.488
33	\N	menu_lib	\N	name_zh	\N	2015-10-29 09:55:51.506	2015-10-29 09:55:51.506
34	\N	menu_lib	\N	menu_lib_id	\N	2015-10-29 09:55:51.517	2015-10-29 09:55:51.517
35	\N	menu_lib	\N	link	\N	2015-10-29 09:55:51.528	2015-10-29 09:55:51.528
36	\N	menu_lib	\N	seq	\N	2015-10-29 09:55:51.538	2015-10-29 09:55:51.538
37	\N	menu_lib	\N	icon_class	\N	2015-10-29 09:55:51.552	2015-10-29 09:55:51.552
38	\N	patient_case	\N	case_number	\N	2015-10-29 09:55:51.562	2015-10-29 09:55:51.562
39	\N	patient_case	\N	patient_info_id	\N	2015-10-29 09:55:51.571	2015-10-29 09:55:51.571
40	\N	patient_info	\N	patient_id	\N	2015-10-29 09:55:51.587	2015-10-29 09:55:51.587
41	\N	patient_info	\N	patient_name	\N	2015-10-29 09:55:51.597	2015-10-29 09:55:51.597
42	\N	sample_preout_log	\N	operator_name	\N	2015-10-29 09:55:51.607	2015-10-29 09:55:51.607
43	\N	sample_preout_log	\N	user_name	\N	2015-10-29 09:55:51.617	2015-10-29 09:55:51.617
44	\N	sample_preout_log	\N	status	\N	2015-10-29 09:55:51.626	2015-10-29 09:55:51.626
45	\N	sample_preout_log	\N	sample_ids	\N	2015-10-29 09:55:51.637	2015-10-29 09:55:51.637
46	\N	sample_preout_log	\N	num	\N	2015-10-29 09:55:51.655	2015-10-29 09:55:51.655
47	\N	sample_preout_log	\N	proportpion	\N	2015-10-29 09:55:51.664	2015-10-29 09:55:51.664
48	\N	sample_preout_log	\N	sys_user_id	\N	2015-10-29 09:55:51.673	2015-10-29 09:55:51.673
49	\N	sample_preout_log	\N	use_for	\N	2015-10-29 09:55:51.684	2015-10-29 09:55:51.684
50	\N	sample_storage_log	\N	sample_id	\N	2015-10-29 09:55:51.693	2015-10-29 09:55:51.693
51	\N	sample_storage_log	\N	user_name	\N	2015-10-29 09:55:51.703	2015-10-29 09:55:51.703
52	\N	sample_storage_log	\N	out_percent	\N	2015-10-29 09:55:51.715	2015-10-29 09:55:51.715
53	\N	sample_storage_log	\N	left_volume	\N	2015-10-29 09:55:51.728	2015-10-29 09:55:51.728
54	\N	sample_storage_log	\N	out_use_for	\N	2015-10-29 09:55:51.738	2015-10-29 09:55:51.738
55	\N	sample_storage	\N	position_index	\N	2015-10-29 09:55:51.753	2015-10-29 09:55:51.753
56	\N	sample_storage	\N	boxer_id	\N	2015-10-29 09:55:51.762	2015-10-29 09:55:51.762
57	\N	sample_storage	\N	sample_id	\N	2015-10-29 09:55:51.771	2015-10-29 09:55:51.771
58	\N	sample	\N	sample_no	\N	2015-10-29 09:55:52.266	2015-10-29 09:55:52.266
59	\N	sample	\N	sample_seq	\N	2015-10-29 09:55:52.279	2015-10-29 09:55:52.279
60	\N	sample	\N	user_id	\N	2015-10-29 09:55:52.297	2015-10-29 09:55:52.297
61	\N	sample	\N	storage_status	\N	2015-10-29 09:55:52.305	2015-10-29 09:55:52.305
62	\N	sample	\N	freezing_thawing_times	\N	2015-10-29 09:55:52.314	2015-10-29 09:55:52.314
63	\N	sample	\N	sample_storage_id	\N	2015-10-29 09:55:52.33	2015-10-29 09:55:52.33
64	\N	sample	\N	initial_sample_volume	\N	2015-10-29 09:55:52.339	2015-10-29 09:55:52.339
65	\N	sample	\N	current_sample_volume	\N	2015-10-29 09:55:52.348	2015-10-29 09:55:52.348
66	\N	sample	\N	patient_case_id	\N	2015-10-29 09:55:52.359	2015-10-29 09:55:52.359
67	\N	sys_role	\N	name	\N	2015-10-29 09:55:52.37	2015-10-29 09:55:52.37
68	\N	sys_role	\N	remark	\N	2015-10-29 09:55:52.443	2015-10-29 09:55:52.443
69	\N	sys_table_column	\N	tname_zn	\N	2015-10-29 09:55:52.457	2015-10-29 09:55:52.457
70	\N	sys_table_column	\N	tname_en	\N	2015-10-29 09:55:52.466	2015-10-29 09:55:52.466
71	\N	sys_table_column	\N	cname_zn	\N	2015-10-29 09:55:52.475	2015-10-29 09:55:52.475
72	\N	sys_table_column	\N	cname_en	\N	2015-10-29 09:55:52.486	2015-10-29 09:55:52.486
73	\N	sys_table_column	\N	order_no	\N	2015-10-29 09:55:52.495	2015-10-29 09:55:52.495
74	\N	sys_user	\N	username	\N	2015-10-29 09:55:52.51	2015-10-29 09:55:52.51
75	\N	sys_user	\N	password	\N	2015-10-29 09:55:52.52	2015-10-29 09:55:52.52
\.


--
-- Name: sys_table_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_table_columns_id_seq', 75, true);


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
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

