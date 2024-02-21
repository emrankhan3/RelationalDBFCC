--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (38, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (39, 'Web Programming');
INSERT INTO public.courses VALUES (40, 'Database Systems');
INSERT INTO public.courses VALUES (41, 'Computer Networks');
INSERT INTO public.courses VALUES (42, 'SQL');
INSERT INTO public.courses VALUES (43, 'Machine Learning');
INSERT INTO public.courses VALUES (44, 'Computer Systems');
INSERT INTO public.courses VALUES (45, 'Web Applications');
INSERT INTO public.courses VALUES (46, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (47, 'Python');
INSERT INTO public.courses VALUES (48, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (49, 'Calculus');
INSERT INTO public.courses VALUES (50, 'Game Architecture');
INSERT INTO public.courses VALUES (51, 'Algorithms');
INSERT INTO public.courses VALUES (52, 'UNIX');
INSERT INTO public.courses VALUES (53, 'Server Administration');
INSERT INTO public.courses VALUES (54, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (51, 'Database Administration');
INSERT INTO public.majors VALUES (52, 'Web Development');
INSERT INTO public.majors VALUES (53, 'Data Science');
INSERT INTO public.majors VALUES (54, 'Network Engineering');
INSERT INTO public.majors VALUES (55, 'Computer Programming');
INSERT INTO public.majors VALUES (56, 'Game Design');
INSERT INTO public.majors VALUES (57, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (51, 38);
INSERT INTO public.majors_courses VALUES (52, 39);
INSERT INTO public.majors_courses VALUES (51, 40);
INSERT INTO public.majors_courses VALUES (53, 38);
INSERT INTO public.majors_courses VALUES (54, 41);
INSERT INTO public.majors_courses VALUES (51, 42);
INSERT INTO public.majors_courses VALUES (53, 43);
INSERT INTO public.majors_courses VALUES (54, 44);
INSERT INTO public.majors_courses VALUES (55, 41);
INSERT INTO public.majors_courses VALUES (51, 45);
INSERT INTO public.majors_courses VALUES (56, 46);
INSERT INTO public.majors_courses VALUES (53, 47);
INSERT INTO public.majors_courses VALUES (55, 48);
INSERT INTO public.majors_courses VALUES (57, 44);
INSERT INTO public.majors_courses VALUES (56, 49);
INSERT INTO public.majors_courses VALUES (52, 38);
INSERT INTO public.majors_courses VALUES (53, 49);
INSERT INTO public.majors_courses VALUES (52, 48);
INSERT INTO public.majors_courses VALUES (56, 50);
INSERT INTO public.majors_courses VALUES (57, 41);
INSERT INTO public.majors_courses VALUES (56, 51);
INSERT INTO public.majors_courses VALUES (57, 52);
INSERT INTO public.majors_courses VALUES (57, 53);
INSERT INTO public.majors_courses VALUES (55, 44);
INSERT INTO public.majors_courses VALUES (55, 47);
INSERT INTO public.majors_courses VALUES (54, 54);
INSERT INTO public.majors_courses VALUES (52, 45);
INSERT INTO public.majors_courses VALUES (54, 51);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (6, 'Rhea', 'Kellems', 51, 2.5);
INSERT INTO public.students VALUES (7, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (8, 'Kimberly', 'Whitley', 52, 3.8);
INSERT INTO public.students VALUES (9, 'Jimmy', 'Felipe', 51, 3.7);
INSERT INTO public.students VALUES (10, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (11, 'Casares', 'Hijo', 56, 4.0);
INSERT INTO public.students VALUES (12, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (13, 'Sterling', 'Boss', 56, 3.9);
INSERT INTO public.students VALUES (14, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (15, 'Kaija', 'Uronen', 56, 3.7);
INSERT INTO public.students VALUES (16, 'Faye', 'Conn', 56, 2.1);
INSERT INTO public.students VALUES (17, 'Efren', 'Reilly', 52, 3.9);
INSERT INTO public.students VALUES (18, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (19, 'Maxine', 'Hagenes', 51, 2.9);
INSERT INTO public.students VALUES (20, 'Larry', 'Saunders', 53, 2.2);
INSERT INTO public.students VALUES (21, 'Karl', 'Kuhar', 52, NULL);
INSERT INTO public.students VALUES (22, 'Lieke', 'Hazenveld', 56, 3.5);
INSERT INTO public.students VALUES (23, 'Obie', 'Hilpert', 52, NULL);
INSERT INTO public.students VALUES (24, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (25, 'Nathan', 'Turner', 51, 3.3);
INSERT INTO public.students VALUES (26, 'Gerald', 'Osiki', 53, 2.2);
INSERT INTO public.students VALUES (27, 'Vanya', 'Hassanah', 56, 4.0);
INSERT INTO public.students VALUES (28, 'Roxelana', 'Florescu', 51, 3.2);
INSERT INTO public.students VALUES (29, 'Helene', 'Parker', 53, 3.4);
INSERT INTO public.students VALUES (30, 'Mariana', 'Russel', 52, 1.8);
INSERT INTO public.students VALUES (31, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (32, 'Mehdi', 'Vandenberghe', 51, 1.9);
INSERT INTO public.students VALUES (33, 'Dejon', 'Howell', 52, 4.0);
INSERT INTO public.students VALUES (34, 'Aliya', 'Gulgowski', 57, 2.6);
INSERT INTO public.students VALUES (35, 'Ana', 'Tupajic', 53, 3.1);
INSERT INTO public.students VALUES (36, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 54, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 57, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 36, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

