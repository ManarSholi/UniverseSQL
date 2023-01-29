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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    serial_number integer,
    year integer,
    sold_times numeric,
    description text,
    is_paid boolean,
    is_work boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_stars (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    columnname character varying(30),
    name character varying(30) NOT NULL,
    galaxy_stars_id integer NOT NULL
);


ALTER TABLE public.galaxy_stars OWNER TO freecodecamp;

--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_stars_galaxy_stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_stars_galaxy_stars_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_stars_galaxy_stars_id_seq OWNED BY public.galaxy_stars.galaxy_stars_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    serial_number integer,
    year integer,
    visit_times numeric,
    description text,
    is_visited boolean,
    has_water boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    serial_number integer,
    year integer,
    seen_times numeric,
    description text,
    has_water boolean,
    is_visited boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    serial_number integer,
    year integer,
    seen_times numeric,
    description text,
    is_exist boolean,
    his_new boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy_stars galaxy_stars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars ALTER COLUMN galaxy_stars_id SET DEFAULT nextval('public.galaxy_stars_galaxy_stars_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1', 123523, 1999, 2, 'description', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', 25643, 2022, 3, 'description', true, false);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', 516546, 1998, 5, 'description', false, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', 54513, 2021, 88, 'description', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', 51562, 2010, 65, 'description', true, false);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', 51489, 1952, 26, 'description', true, false);


--
-- Data for Name: galaxy_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_stars VALUES (1, 1, NULL, 'name_1', 1);
INSERT INTO public.galaxy_stars VALUES (2, 2, NULL, 'name_2', 2);
INSERT INTO public.galaxy_stars VALUES (3, 3, NULL, 'name_3', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'star_1', 123523, 1999, 2, 'description', true, true, 1);
INSERT INTO public.moon VALUES (2, 'star_2', 25643, 2022, 3, 'description', false, true, 2);
INSERT INTO public.moon VALUES (3, 'star_3', 516546, 1998, 5, 'description', true, false, 3);
INSERT INTO public.moon VALUES (4, 'star_4', 54513, 2021, 88, 'description', true, true, 4);
INSERT INTO public.moon VALUES (5, 'star_5', 51562, 2010, 65, 'description', false, true, 5);
INSERT INTO public.moon VALUES (6, 'star_6', 51489, 1952, 26, 'description', false, true, 6);
INSERT INTO public.moon VALUES (7, 'star_1', 123523, 1999, 2, 'description', true, true, 12);
INSERT INTO public.moon VALUES (8, 'star_2', 25643, 2022, 3, 'description', false, true, 11);
INSERT INTO public.moon VALUES (9, 'star_3', 516546, 1998, 5, 'description', true, false, 10);
INSERT INTO public.moon VALUES (10, 'star_4', 54513, 2021, 88, 'description', true, true, 9);
INSERT INTO public.moon VALUES (11, 'star_5', 51562, 2010, 65, 'description', false, true, 8);
INSERT INTO public.moon VALUES (12, 'star_6', 51489, 1952, 26, 'description', false, true, 7);
INSERT INTO public.moon VALUES (13, 'star_1', 123523, 1999, 2, 'description', true, true, 12);
INSERT INTO public.moon VALUES (14, 'star_2', 25643, 2022, 3, 'description', false, true, 11);
INSERT INTO public.moon VALUES (15, 'star_3', 516546, 1998, 5, 'description', true, false, 10);
INSERT INTO public.moon VALUES (16, 'star_4', 54513, 2021, 88, 'description', true, true, 9);
INSERT INTO public.moon VALUES (17, 'star_5', 51562, 2010, 65, 'description', false, true, 8);
INSERT INTO public.moon VALUES (18, 'star_6', 51489, 1952, 26, 'description', false, true, 7);
INSERT INTO public.moon VALUES (19, 'star_1', 123523, 1999, 2, 'description', true, true, 1);
INSERT INTO public.moon VALUES (20, 'star_2', 25643, 2022, 3, 'description', false, true, 2);
INSERT INTO public.moon VALUES (21, 'star_3', 516546, 1998, 5, 'description', true, false, 3);
INSERT INTO public.moon VALUES (22, 'star_4', 54513, 2021, 88, 'description', true, true, 4);
INSERT INTO public.moon VALUES (23, 'star_5', 51562, 2010, 65, 'description', false, true, 5);
INSERT INTO public.moon VALUES (24, 'star_6', 51489, 1952, 26, 'description', false, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'star_1', 123523, 1999, 2, 'description', true, true, 1);
INSERT INTO public.planet VALUES (2, 'star_2', 25643, 2022, 3, 'description', true, false, 2);
INSERT INTO public.planet VALUES (3, 'star_3', 516546, 1998, 5, 'description', false, true, 3);
INSERT INTO public.planet VALUES (4, 'star_4', 54513, 2021, 88, 'description', true, true, 4);
INSERT INTO public.planet VALUES (5, 'star_5', 51562, 2010, 65, 'description', true, false, 5);
INSERT INTO public.planet VALUES (6, 'star_6', 51489, 1952, 26, 'description', true, false, 6);
INSERT INTO public.planet VALUES (7, 'star_1', 123523, 1999, 2, 'description', true, true, 1);
INSERT INTO public.planet VALUES (8, 'star_2', 25643, 2022, 3, 'description', true, false, 2);
INSERT INTO public.planet VALUES (9, 'star_3', 516546, 1998, 5, 'description', false, true, 3);
INSERT INTO public.planet VALUES (10, 'star_4', 54513, 2021, 88, 'description', true, true, 4);
INSERT INTO public.planet VALUES (11, 'star_5', 51562, 2010, 65, 'description', true, false, 5);
INSERT INTO public.planet VALUES (12, 'star_6', 51489, 1952, 26, 'description', true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', 123523, 1999, 2, 'description', true, true, 1);
INSERT INTO public.star VALUES (2, 'star_2', 25643, 2022, 3, 'description', true, false, 2);
INSERT INTO public.star VALUES (3, 'star_3', 516546, 1998, 5, 'description', false, true, 3);
INSERT INTO public.star VALUES (4, 'star_4', 54513, 2021, 88, 'description', true, true, 4);
INSERT INTO public.star VALUES (5, 'star_5', 51562, 2010, 65, 'description', true, false, 5);
INSERT INTO public.star VALUES (6, 'star_6', 51489, 1952, 26, 'description', true, false, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_stars_galaxy_stars_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_stars galaxy_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_pkey PRIMARY KEY (galaxy_stars_id);


--
-- Name: galaxy_stars galaxy_stars_star_id_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_star_id_galaxy_id_key UNIQUE (star_id, galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_stars galaxy_stars_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_stars galaxy_stars_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


