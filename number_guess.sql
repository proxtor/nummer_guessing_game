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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 325, 5);
INSERT INTO public.games VALUES (2, 686, 5);
INSERT INTO public.games VALUES (3, 421, 6);
INSERT INTO public.games VALUES (4, 311, 6);
INSERT INTO public.games VALUES (5, 553, 5);
INSERT INTO public.games VALUES (6, 985, 5);
INSERT INTO public.games VALUES (7, 261, 5);
INSERT INTO public.games VALUES (8, 18, 1);
INSERT INTO public.games VALUES (9, 542, 7);
INSERT INTO public.games VALUES (10, 93, 7);
INSERT INTO public.games VALUES (11, 751, 8);
INSERT INTO public.games VALUES (12, 858, 8);
INSERT INTO public.games VALUES (13, 735, 7);
INSERT INTO public.games VALUES (14, 848, 7);
INSERT INTO public.games VALUES (15, 562, 7);
INSERT INTO public.games VALUES (16, 655, 9);
INSERT INTO public.games VALUES (17, 690, 9);
INSERT INTO public.games VALUES (18, 952, 10);
INSERT INTO public.games VALUES (19, 785, 10);
INSERT INTO public.games VALUES (20, 114, 9);
INSERT INTO public.games VALUES (21, 260, 9);
INSERT INTO public.games VALUES (22, 289, 9);
INSERT INTO public.games VALUES (23, 12, 1);
INSERT INTO public.games VALUES (24, 91, 11);
INSERT INTO public.games VALUES (25, 952, 11);
INSERT INTO public.games VALUES (26, 875, 12);
INSERT INTO public.games VALUES (27, 895, 12);
INSERT INTO public.games VALUES (28, 427, 11);
INSERT INTO public.games VALUES (29, 462, 11);
INSERT INTO public.games VALUES (30, 922, 11);
INSERT INTO public.games VALUES (31, 11, 13);
INSERT INTO public.games VALUES (32, 823, 14);
INSERT INTO public.games VALUES (33, 861, 14);
INSERT INTO public.games VALUES (34, 720, 15);
INSERT INTO public.games VALUES (35, 493, 15);
INSERT INTO public.games VALUES (36, 367, 14);
INSERT INTO public.games VALUES (37, 748, 14);
INSERT INTO public.games VALUES (38, 892, 14);
INSERT INTO public.games VALUES (39, 329, 16);
INSERT INTO public.games VALUES (40, 701, 16);
INSERT INTO public.games VALUES (41, 864, 17);
INSERT INTO public.games VALUES (42, 405, 17);
INSERT INTO public.games VALUES (43, 628, 16);
INSERT INTO public.games VALUES (44, 691, 16);
INSERT INTO public.games VALUES (45, 747, 16);
INSERT INTO public.games VALUES (46, 11, 18);
INSERT INTO public.games VALUES (47, 783, 19);
INSERT INTO public.games VALUES (48, 81, 19);
INSERT INTO public.games VALUES (49, 335, 20);
INSERT INTO public.games VALUES (50, 113, 20);
INSERT INTO public.games VALUES (51, 716, 19);
INSERT INTO public.games VALUES (52, 194, 19);
INSERT INTO public.games VALUES (53, 891, 19);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Wi');
INSERT INTO public.users VALUES (2, 'w');
INSERT INTO public.users VALUES (3, 'user_1723148328412');
INSERT INTO public.users VALUES (4, 'user_1723148328411');
INSERT INTO public.users VALUES (5, 'user_1723149660240');
INSERT INTO public.users VALUES (6, 'user_1723149660239');
INSERT INTO public.users VALUES (7, 'user_1723149769748');
INSERT INTO public.users VALUES (8, 'user_1723149769747');
INSERT INTO public.users VALUES (9, 'user_1723149786449');
INSERT INTO public.users VALUES (10, 'user_1723149786448');
INSERT INTO public.users VALUES (11, 'user_1723149870367');
INSERT INTO public.users VALUES (12, 'user_1723149870366');
INSERT INTO public.users VALUES (13, 'Witali');
INSERT INTO public.users VALUES (14, 'user_1723150191396');
INSERT INTO public.users VALUES (15, 'user_1723150191395');
INSERT INTO public.users VALUES (16, 'user_1723150389214');
INSERT INTO public.users VALUES (17, 'user_1723150389213');
INSERT INTO public.users VALUES (18, 'W');
INSERT INTO public.users VALUES (19, 'user_1723150602062');
INSERT INTO public.users VALUES (20, 'user_1723150602061');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 53, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

