--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- Name: auditors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auditors (
    audit_id integer NOT NULL,
    audit_num integer NOT NULL
);


ALTER TABLE public.auditors OWNER TO postgres;

--
-- Name: auditors_audit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auditors_audit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auditors_audit_id_seq OWNER TO postgres;

--
-- Name: auditors_audit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auditors_audit_id_seq OWNED BY public.auditors.audit_id;


--
-- Name: disciplines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplines (
    discip_id integer NOT NULL,
    discip_name character varying(60) NOT NULL
);


ALTER TABLE public.disciplines OWNER TO postgres;

--
-- Name: disciplines_discip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.disciplines_discip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disciplines_discip_id_seq OWNER TO postgres;

--
-- Name: disciplines_discip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.disciplines_discip_id_seq OWNED BY public.disciplines.discip_id;


--
-- Name: even_week; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.even_week (
    type_week_id integer NOT NULL,
    type_week character varying(8)
);


ALTER TABLE public.even_week OWNER TO postgres;

--
-- Name: even_week_type_week_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.even_week_type_week_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.even_week_type_week_id_seq OWNER TO postgres;

--
-- Name: even_week_type_week_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.even_week_type_week_id_seq OWNED BY public.even_week.type_week_id;


--
-- Name: lesson_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson_type (
    less_id integer NOT NULL,
    less_type character varying(20)
);


ALTER TABLE public.lesson_type OWNER TO postgres;

--
-- Name: lesson_type_less_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_type_less_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_type_less_id_seq OWNER TO postgres;

--
-- Name: lesson_type_less_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_type_less_id_seq OWNED BY public.lesson_type.less_id;


--
-- Name: schedule_stud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule_stud (
    schedule_id integer NOT NULL,
    group_id integer,
    type_week_id integer,
    day_id integer,
    lesson_num_id integer,
    discip_id integer,
    less_id integer,
    audit_id integer,
    teach_id integer
);


ALTER TABLE public.schedule_stud OWNER TO postgres;

--
-- Name: schedule_stud_schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schedule_stud_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedule_stud_schedule_id_seq OWNER TO postgres;

--
-- Name: schedule_stud_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schedule_stud_schedule_id_seq OWNED BY public.schedule_stud.schedule_id;


--
-- Name: stud_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stud_groups (
    group_id integer NOT NULL,
    faculty character varying(50),
    spec character varying(50),
    gr_name character varying(8)
);


ALTER TABLE public.stud_groups OWNER TO postgres;

--
-- Name: stud_groups_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stud_groups_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stud_groups_group_id_seq OWNER TO postgres;

--
-- Name: stud_groups_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stud_groups_group_id_seq OWNED BY public.stud_groups.group_id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    teach_id integer NOT NULL,
    l_name character varying(30) NOT NULL,
    f_name character varying(30) NOT NULL,
    m_name character varying(30),
    fio character varying(36)
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachers_id_seq OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.teach_id;


--
-- Name: time_schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_schedule (
    lesson_id integer NOT NULL,
    start_time time without time zone,
    end_time time without time zone
);


ALTER TABLE public.time_schedule OWNER TO postgres;

--
-- Name: time_schedule_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.time_schedule_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.time_schedule_lesson_id_seq OWNER TO postgres;

--
-- Name: time_schedule_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.time_schedule_lesson_id_seq OWNED BY public.time_schedule.lesson_id;


--
-- Name: week_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.week_day (
    day_id integer NOT NULL,
    day_name character varying(12) NOT NULL
);


ALTER TABLE public.week_day OWNER TO postgres;

--
-- Name: week_day_day_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.week_day_day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.week_day_day_id_seq OWNER TO postgres;

--
-- Name: week_day_day_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.week_day_day_id_seq OWNED BY public.week_day.day_id;


--
-- Name: auditors audit_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auditors ALTER COLUMN audit_id SET DEFAULT nextval('public.auditors_audit_id_seq'::regclass);


--
-- Name: disciplines discip_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines ALTER COLUMN discip_id SET DEFAULT nextval('public.disciplines_discip_id_seq'::regclass);


--
-- Name: even_week type_week_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.even_week ALTER COLUMN type_week_id SET DEFAULT nextval('public.even_week_type_week_id_seq'::regclass);


--
-- Name: lesson_type less_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_type ALTER COLUMN less_id SET DEFAULT nextval('public.lesson_type_less_id_seq'::regclass);


--
-- Name: schedule_stud schedule_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud ALTER COLUMN schedule_id SET DEFAULT nextval('public.schedule_stud_schedule_id_seq'::regclass);


--
-- Name: stud_groups group_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stud_groups ALTER COLUMN group_id SET DEFAULT nextval('public.stud_groups_group_id_seq'::regclass);


--
-- Name: teachers teach_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN teach_id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Name: time_schedule lesson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_schedule ALTER COLUMN lesson_id SET DEFAULT nextval('public.time_schedule_lesson_id_seq'::regclass);


--
-- Name: week_day day_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.week_day ALTER COLUMN day_id SET DEFAULT nextval('public.week_day_day_id_seq'::regclass);


--
-- Data for Name: auditors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auditors (audit_id, audit_num) FROM stdin;
1	301
2	302
3	303
4	304
5	307
6	308
7	309
8	310
9	311
10	312
11	313
12	314
13	315
14	316
15	317
16	212
\.


--
-- Data for Name: disciplines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disciplines (discip_id, discip_name) FROM stdin;
1	Физика
2	Менеджмент
3	Программирование
4	Основы ИБ
\.


--
-- Data for Name: even_week; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.even_week (type_week_id, type_week) FROM stdin;
1	Нечётная
2	Чётная
\.


--
-- Data for Name: lesson_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson_type (less_id, less_type) FROM stdin;
1	Лекция
2	Практика
3	Лабораторная работа
4	Экзамен
5	Зачет
\.


--
-- Data for Name: schedule_stud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schedule_stud (schedule_id, group_id, type_week_id, day_id, lesson_num_id, discip_id, less_id, audit_id, teach_id) FROM stdin;
16	1	1	1	1	1	1	1	1
17	2	2	2	2	2	2	2	2
18	1	1	2	2	2	2	4	5
19	1	1	1	2	2	1	4	5
20	4	2	1	4	3	1	3	3
21	4	1	4	4	2	3	14	5
22	4	1	1	1	3	1	5	4
23	4	1	2	4	1	2	3	4
24	5	2	5	4	2	1	9	2
25	5	1	2	4	4	3	8	5
26	5	2	2	5	1	3	15	2
27	4	2	2	2	2	1	2	3
28	5	1	3	4	4	1	16	4
29	4	2	6	1	2	2	13	2
30	5	1	1	4	2	2	12	3
31	5	1	3	1	3	2	6	2
32	3	2	3	5	3	1	6	4
33	4	1	2	5	4	3	5	3
34	5	2	4	5	2	1	16	4
35	1	1	2	4	1	2	16	5
36	5	1	6	1	4	2	9	5
37	1	2	2	1	3	3	14	5
38	1	1	6	3	3	2	12	4
39	2	2	1	4	1	3	3	3
40	2	1	1	1	2	1	3	4
41	5	1	1	3	4	3	14	2
42	1	1	3	4	4	1	3	5
43	5	2	5	3	3	1	8	2
44	5	2	4	4	4	3	4	1
45	5	1	6	2	1	1	11	4
46	1	1	2	5	4	3	7	2
47	2	2	4	3	2	1	7	2
48	3	1	1	3	4	3	3	5
49	1	2	3	5	2	1	13	2
\.


--
-- Data for Name: stud_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stud_groups (group_id, faculty, spec, gr_name) FROM stdin;
1	КТиИБ	Бизнес информатика	БИН-311
2	КТиИБ	Информационная безопасность	ИБ-311
3	КТиИБ	Программная инженерия	ПРИ-311
4	КТиИБ	Прикладная информатика	ПИ-311
5	КТиИБ	Информационные системы и технологии	ИСТ-311
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (teach_id, l_name, f_name, m_name, fio) FROM stdin;
1	Тищенко	Евгений	Николаевич	Тищенко Е. Н.
2	Мисиченко	Надежда	Юрьевна	Мисиченко Н. Ю.
3	Прохоров	Антон	Игоревич	Прохоров А. И.
4	Долженко	Алексей	Иванович	Долженко А. И.
5	Щербаков	Сергей	Михайлович	Щербаков С. М.
\.


--
-- Data for Name: time_schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.time_schedule (lesson_id, start_time, end_time) FROM stdin;
1	08:30:00	10:00:00
2	10:10:00	11:40:00
3	11:50:00	13:20:00
4	13:50:00	15:20:00
5	15:30:00	17:00:00
\.


--
-- Data for Name: week_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.week_day (day_id, day_name) FROM stdin;
1	Понедельник
2	Вторник
3	Среда
4	Четверг
5	Пятница
6	Суббота
\.


--
-- Name: auditors_audit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auditors_audit_id_seq', 16, true);


--
-- Name: disciplines_discip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.disciplines_discip_id_seq', 4, true);


--
-- Name: even_week_type_week_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.even_week_type_week_id_seq', 2, true);


--
-- Name: lesson_type_less_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_type_less_id_seq', 5, true);


--
-- Name: schedule_stud_schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_stud_schedule_id_seq', 49, true);


--
-- Name: stud_groups_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stud_groups_group_id_seq', 5, true);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_id_seq', 5, true);


--
-- Name: time_schedule_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.time_schedule_lesson_id_seq', 5, true);


--
-- Name: week_day_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.week_day_day_id_seq', 6, true);


--
-- Name: auditors auditors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auditors
    ADD CONSTRAINT auditors_pkey PRIMARY KEY (audit_id);


--
-- Name: disciplines disciplines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_pkey PRIMARY KEY (discip_id);


--
-- Name: even_week even_week_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.even_week
    ADD CONSTRAINT even_week_pkey PRIMARY KEY (type_week_id);


--
-- Name: lesson_type lesson_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_type
    ADD CONSTRAINT lesson_type_pkey PRIMARY KEY (less_id);


--
-- Name: schedule_stud schedule_stud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_pkey PRIMARY KEY (schedule_id);


--
-- Name: stud_groups stud_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stud_groups
    ADD CONSTRAINT stud_groups_pkey PRIMARY KEY (group_id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (teach_id);


--
-- Name: time_schedule time_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_schedule
    ADD CONSTRAINT time_schedule_pkey PRIMARY KEY (lesson_id);


--
-- Name: week_day week_day_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.week_day
    ADD CONSTRAINT week_day_pkey PRIMARY KEY (day_id);


--
-- Name: schedule_stud schedule_stud_audit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_audit_id_fkey FOREIGN KEY (audit_id) REFERENCES public.auditors(audit_id);


--
-- Name: schedule_stud schedule_stud_day_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_day_id_fkey FOREIGN KEY (day_id) REFERENCES public.week_day(day_id);


--
-- Name: schedule_stud schedule_stud_discip_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_discip_id_fkey FOREIGN KEY (discip_id) REFERENCES public.disciplines(discip_id);


--
-- Name: schedule_stud schedule_stud_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.stud_groups(group_id);


--
-- Name: schedule_stud schedule_stud_less_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_less_id_fkey FOREIGN KEY (less_id) REFERENCES public.lesson_type(less_id);


--
-- Name: schedule_stud schedule_stud_lesson_num_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_lesson_num_id_fkey FOREIGN KEY (lesson_num_id) REFERENCES public.time_schedule(lesson_id);


--
-- Name: schedule_stud schedule_stud_teach_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_teach_id_fkey FOREIGN KEY (teach_id) REFERENCES public.teachers(teach_id);


--
-- Name: schedule_stud schedule_stud_type_week_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_stud
    ADD CONSTRAINT schedule_stud_type_week_id_fkey FOREIGN KEY (type_week_id) REFERENCES public.even_week(type_week_id);


--
-- PostgreSQL database dump complete
--

