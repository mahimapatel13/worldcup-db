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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(20) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (17, 2018, 131, 132, 4, 2, 'Final');
INSERT INTO public.games VALUES (18, 2018, 133, 134, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (19, 2018, 132, 134, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (20, 2018, 131, 133, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (21, 2018, 132, 135, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 2018, 134, 136, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 2018, 133, 137, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 2018, 131, 138, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 2018, 134, 139, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 2018, 136, 140, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 2018, 133, 141, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 2018, 137, 142, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 2018, 132, 143, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 2018, 135, 144, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 2018, 138, 145, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 2018, 131, 146, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (33, 2014, 147, 146, 1, 0, 'Final');
INSERT INTO public.games VALUES (34, 2014, 148, 137, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (35, 2014, 146, 148, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (36, 2014, 147, 137, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (37, 2014, 148, 149, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (38, 2014, 146, 133, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (39, 2014, 137, 139, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (40, 2014, 147, 131, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (41, 2014, 137, 150, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (42, 2014, 139, 138, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (43, 2014, 131, 151, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (44, 2014, 147, 152, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (45, 2014, 148, 142, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (46, 2014, 149, 153, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (47, 2014, 146, 140, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (48, 2014, 133, 154, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (131, 'France');
INSERT INTO public.teams VALUES (132, 'Croatia');
INSERT INTO public.teams VALUES (133, 'Belgium');
INSERT INTO public.teams VALUES (134, 'England');
INSERT INTO public.teams VALUES (135, 'Russia');
INSERT INTO public.teams VALUES (136, 'Sweden');
INSERT INTO public.teams VALUES (137, 'Brazil');
INSERT INTO public.teams VALUES (138, 'Uruguay');
INSERT INTO public.teams VALUES (139, 'Colombia');
INSERT INTO public.teams VALUES (140, 'Switzerland');
INSERT INTO public.teams VALUES (141, 'Japan');
INSERT INTO public.teams VALUES (142, 'Mexico');
INSERT INTO public.teams VALUES (143, 'Denmark');
INSERT INTO public.teams VALUES (144, 'Spain');
INSERT INTO public.teams VALUES (145, 'Portugal');
INSERT INTO public.teams VALUES (146, 'Argentina');
INSERT INTO public.teams VALUES (147, 'Germany');
INSERT INTO public.teams VALUES (148, 'Netherlands');
INSERT INTO public.teams VALUES (149, 'Costa Rica');
INSERT INTO public.teams VALUES (150, 'Chile');
INSERT INTO public.teams VALUES (151, 'Nigeria');
INSERT INTO public.teams VALUES (152, 'Algeria');
INSERT INTO public.teams VALUES (153, 'Greece');
INSERT INTO public.teams VALUES (154, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 48, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 154, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

