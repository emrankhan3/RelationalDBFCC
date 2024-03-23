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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_records; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_records (
    name character varying(22) NOT NULL,
    attempts integer NOT NULL
);


ALTER TABLE public.game_records OWNER TO freecodecamp;

--
-- Data for Name: game_records; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_records VALUES ('xg', 53);
INSERT INTO public.game_records VALUES ('xg', 43);
INSERT INTO public.game_records VALUES ('xg', 23);
INSERT INTO public.game_records VALUES ('ml', 23);
INSERT INTO public.game_records VALUES ('ml', 12);
INSERT INTO public.game_records VALUES ('emran', 4);
INSERT INTO public.game_records VALUES ('emran', 11);
INSERT INTO public.game_records VALUES ('emran', 14);
INSERT INTO public.game_records VALUES ('user_1711201069127', 305);
INSERT INTO public.game_records VALUES ('user_1711201069127', 882);
INSERT INTO public.game_records VALUES ('user_1711201069126', 596);
INSERT INTO public.game_records VALUES ('user_1711201069126', 619);
INSERT INTO public.game_records VALUES ('user_1711201069127', 253);
INSERT INTO public.game_records VALUES ('user_1711201069127', 240);
INSERT INTO public.game_records VALUES ('user_1711201069127', 706);
INSERT INTO public.game_records VALUES ('user_1711201243530', 876);
INSERT INTO public.game_records VALUES ('user_1711201243530', 473);
INSERT INTO public.game_records VALUES ('user_1711201243529', 850);
INSERT INTO public.game_records VALUES ('user_1711201243529', 444);
INSERT INTO public.game_records VALUES ('user_1711201243530', 681);
INSERT INTO public.game_records VALUES ('user_1711201243530', 809);
INSERT INTO public.game_records VALUES ('user_1711201243530', 278);


--
-- PostgreSQL database dump complete
--

