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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying NOT NULL,
    text text
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_type text,
    galaxy_distance numeric,
    galaxy_diameter integer,
    planets_number integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    moon_type character varying,
    has_life boolean,
    distance_from_earth integer,
    moon_size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    is_spherical boolean,
    age_in_millions_years integer,
    planet_size integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    size integer,
    has_life boolean,
    distance_from_earth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'planets', NULL);
INSERT INTO public.description VALUES (2, 'stars', NULL);
INSERT INTO public.description VALUES (3, 'galaxies', NULL);
INSERT INTO public.description VALUES (4, 'moons', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Voie lactee', 'SBbc', 0.0265, 100000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Grand Chien', 'Irr', 0.025, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sagittaire', 'dSph', 0.081, 10000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Magellan', 'SBsm', 0.163, 14000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Petite Ourse', 'dE4', 0.206, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Dragon', 'dE0', 0.258, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'Spiral', 0, 100000, 100000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth Moon', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Ariel', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Belinda', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Bianca', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Caliban', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Cordelia', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Cressida', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Cupida', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Desdemona', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Ferdinand', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Francisco', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Juliet', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Mab', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Margaret', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Miranda', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Portia', NULL, false, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Puck', NULL, false, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 88, 35323, NULL);
INSERT INTO public.planet VALUES (2, 'Jupiter', false, 12, 462056, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', true, 225, 67019, NULL);
INSERT INTO public.planet VALUES (4, 'Saturn', false, 30, 917799, NULL);
INSERT INTO public.planet VALUES (5, 'Earth', true, 365, 94388, NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', false, 84, 1849401, NULL);
INSERT INTO public.planet VALUES (7, 'Mars', true, 2, 129320, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 164, 2780548, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', true, 248, 3213776, NULL);
INSERT INTO public.planet VALUES (10, 'Haumea', false, 1, 18498561, NULL);
INSERT INTO public.planet VALUES (11, 'Ceres', true, 5, 239721, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', false, 557, 278163, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Wolf', 359, true, NULL);
INSERT INTO public.star VALUES (2, 'Sun', 696, false, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 2400, false, NULL);
INSERT INTO public.star VALUES (4, 'Acturus', 17671, false, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 1643, false, NULL);
INSERT INTO public.star VALUES (6, 'Antares', 473, false, NULL);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
