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
    round character varying(225) NOT NULL
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
    name character varying(225) NOT NULL
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

INSERT INTO public.games VALUES (97, 2018, 129, 130, 4, 2, 'Final');
INSERT INTO public.games VALUES (98, 2018, 131, 132, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (99, 2018, 130, 132, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (100, 2018, 129, 131, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (101, 2018, 130, 133, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (102, 2018, 132, 134, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (103, 2018, 131, 135, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (104, 2018, 129, 136, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (105, 2018, 132, 137, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (106, 2018, 134, 138, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (107, 2018, 131, 139, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (108, 2018, 135, 140, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (109, 2018, 130, 141, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (110, 2018, 133, 142, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (111, 2018, 136, 143, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (112, 2018, 129, 144, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (113, 2014, 145, 144, 1, 0, 'Final');
INSERT INTO public.games VALUES (114, 2014, 146, 135, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (115, 2014, 144, 146, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (116, 2014, 145, 135, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (117, 2014, 146, 147, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (118, 2014, 144, 131, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (119, 2014, 135, 137, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (120, 2014, 145, 129, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (121, 2014, 135, 148, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (122, 2014, 137, 136, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (123, 2014, 129, 149, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (124, 2014, 145, 150, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (125, 2014, 146, 140, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (126, 2014, 147, 151, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (127, 2014, 144, 138, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (128, 2014, 131, 152, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (129, 'France');
INSERT INTO public.teams VALUES (130, 'Croatia');
INSERT INTO public.teams VALUES (131, 'Belgium');
INSERT INTO public.teams VALUES (132, 'England');
INSERT INTO public.teams VALUES (133, 'Russia');
INSERT INTO public.teams VALUES (134, 'Sweden');
INSERT INTO public.teams VALUES (135, 'Brazil');
INSERT INTO public.teams VALUES (136, 'Uruguay');
INSERT INTO public.teams VALUES (137, 'Colombia');
INSERT INTO public.teams VALUES (138, 'Switzerland');
INSERT INTO public.teams VALUES (139, 'Japan');
INSERT INTO public.teams VALUES (140, 'Mexico');
INSERT INTO public.teams VALUES (141, 'Denmark');
INSERT INTO public.teams VALUES (142, 'Spain');
INSERT INTO public.teams VALUES (143, 'Portugal');
INSERT INTO public.teams VALUES (144, 'Argentina');
INSERT INTO public.teams VALUES (145, 'Germany');
INSERT INTO public.teams VALUES (146, 'Netherlands');
INSERT INTO public.teams VALUES (147, 'Costa Rica');
INSERT INTO public.teams VALUES (148, 'Chile');
INSERT INTO public.teams VALUES (149, 'Nigeria');
INSERT INTO public.teams VALUES (150, 'Algeria');
INSERT INTO public.teams VALUES (151, 'Greece');
INSERT INTO public.teams VALUES (152, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 152, true);


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
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

