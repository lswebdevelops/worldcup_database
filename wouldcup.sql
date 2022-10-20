--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    round character varying(180) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(180) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (449, 2018, 'Final', 974, 976, 4, 2);
INSERT INTO public.games VALUES (450, 2018, 'Third Place', 975, 977, 2, 0);
INSERT INTO public.games VALUES (451, 2018, 'Semi-Final', 976, 977, 2, 1);
INSERT INTO public.games VALUES (452, 2018, 'Semi-Final', 974, 975, 1, 0);
INSERT INTO public.games VALUES (453, 2018, 'Quarter-Final', 976, 980, 3, 2);
INSERT INTO public.games VALUES (454, 2018, 'Quarter-Final', 977, 978, 2, 0);
INSERT INTO public.games VALUES (455, 2018, 'Quarter-Final', 975, 979, 2, 1);
INSERT INTO public.games VALUES (456, 2018, 'Quarter-Final', 974, 981, 2, 0);
INSERT INTO public.games VALUES (457, 2018, 'Eighth-Final', 977, 985, 2, 1);
INSERT INTO public.games VALUES (458, 2018, 'Eighth-Final', 978, 987, 1, 0);
INSERT INTO public.games VALUES (459, 2018, 'Eighth-Final', 975, 988, 3, 2);
INSERT INTO public.games VALUES (460, 2018, 'Eighth-Final', 979, 989, 2, 0);
INSERT INTO public.games VALUES (461, 2018, 'Eighth-Final', 976, 990, 2, 1);
INSERT INTO public.games VALUES (462, 2018, 'Eighth-Final', 980, 991, 2, 1);
INSERT INTO public.games VALUES (463, 2018, 'Eighth-Final', 981, 992, 2, 1);
INSERT INTO public.games VALUES (464, 2018, 'Eighth-Final', 974, 984, 4, 3);
INSERT INTO public.games VALUES (465, 2014, 'Final', 982, 984, 1, 0);
INSERT INTO public.games VALUES (466, 2014, 'Third Place', 983, 979, 3, 0);
INSERT INTO public.games VALUES (467, 2014, 'Semi-Final', 984, 983, 1, 0);
INSERT INTO public.games VALUES (468, 2014, 'Semi-Final', 982, 979, 7, 1);
INSERT INTO public.games VALUES (469, 2014, 'Quarter-Final', 983, 986, 1, 0);
INSERT INTO public.games VALUES (470, 2014, 'Quarter-Final', 984, 975, 1, 0);
INSERT INTO public.games VALUES (471, 2014, 'Quarter-Final', 979, 985, 2, 1);
INSERT INTO public.games VALUES (472, 2014, 'Quarter-Final', 982, 974, 1, 0);
INSERT INTO public.games VALUES (473, 2014, 'Eighth-Final', 979, 993, 2, 1);
INSERT INTO public.games VALUES (474, 2014, 'Eighth-Final', 985, 981, 2, 0);
INSERT INTO public.games VALUES (475, 2014, 'Eighth-Final', 974, 994, 2, 0);
INSERT INTO public.games VALUES (476, 2014, 'Eighth-Final', 982, 995, 2, 1);
INSERT INTO public.games VALUES (477, 2014, 'Eighth-Final', 983, 989, 2, 1);
INSERT INTO public.games VALUES (478, 2014, 'Eighth-Final', 986, 996, 2, 1);
INSERT INTO public.games VALUES (479, 2014, 'Eighth-Final', 984, 987, 1, 0);
INSERT INTO public.games VALUES (480, 2014, 'Eighth-Final', 975, 997, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (974, 'France');
INSERT INTO public.teams VALUES (975, 'Belgium');
INSERT INTO public.teams VALUES (976, 'Croatia');
INSERT INTO public.teams VALUES (977, 'England');
INSERT INTO public.teams VALUES (978, 'Sweden');
INSERT INTO public.teams VALUES (979, 'Brazil');
INSERT INTO public.teams VALUES (980, 'Russia');
INSERT INTO public.teams VALUES (981, 'Uruguay');
INSERT INTO public.teams VALUES (982, 'Germany');
INSERT INTO public.teams VALUES (983, 'Netherlands');
INSERT INTO public.teams VALUES (984, 'Argentina');
INSERT INTO public.teams VALUES (985, 'Colombia');
INSERT INTO public.teams VALUES (986, 'Costa Rica');
INSERT INTO public.teams VALUES (987, 'Switzerland');
INSERT INTO public.teams VALUES (988, 'Japan');
INSERT INTO public.teams VALUES (989, 'Mexico');
INSERT INTO public.teams VALUES (990, 'Denmark');
INSERT INTO public.teams VALUES (991, 'Spain');
INSERT INTO public.teams VALUES (992, 'Portugal');
INSERT INTO public.teams VALUES (993, 'Chile');
INSERT INTO public.teams VALUES (994, 'Nigeria');
INSERT INTO public.teams VALUES (995, 'Algeria');
INSERT INTO public.teams VALUES (996, 'Greece');
INSERT INTO public.teams VALUES (997, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 480, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 320, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 320, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 997, true);


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

