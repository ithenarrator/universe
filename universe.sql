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
    size_in_lightyears integer NOT NULL,
    age_in_billions_of_years numeric(4,2),
    name character varying(40) NOT NULL,
    bigger_than_milky_way boolean
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
    size integer,
    fictional boolean,
    planet_id integer NOT NULL,
    name character varying(40)
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
-- Name: people; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.people (
    people_id integer NOT NULL,
    description text,
    residence character varying(40),
    name character varying(40) NOT NULL
);


ALTER TABLE public.people OWNER TO freecodecamp;

--
-- Name: people_person_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.people_person_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_person_seq OWNER TO freecodecamp;

--
-- Name: people_person_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.people_person_seq OWNED BY public.people.people_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    diameter_in_thousand_km integer,
    has_water boolean,
    star_id integer NOT NULL
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
    name character varying(30),
    bigger_than_sun boolean,
    galaxy_id integer NOT NULL,
    diameter_in_million_km numeric(10,2)
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: people people_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people ALTER COLUMN people_id SET DEFAULT nextval('public.people_person_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 52850, 13.61, 'Milky Way', NULL);
INSERT INTO public.galaxy VALUES (2, 110000, 10.01, 'Andromeda Galaxy', true);
INSERT INTO public.galaxy VALUES (3, 90000, 13.31, 'Messier 81', true);
INSERT INTO public.galaxy VALUES (4, 7000, 1.10, 'Large Magellanic Cloud', false);
INSERT INTO public.galaxy VALUES (5, 3500, 1.00, 'Small Magellanic Cloud', false);
INSERT INTO public.galaxy VALUES (6, 25000, 13.25, 'Sombrero Galaxy', true);
INSERT INTO public.galaxy VALUES (7, 26481, 13.28, 'Black Eye Galaxy', false);
INSERT INTO public.galaxy VALUES (8, 60500, 12.75, 'Hoags Object', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 20, true, 2, 'Depth');
INSERT INTO public.moon VALUES (2, 30, false, 3, 'The Moon');
INSERT INTO public.moon VALUES (3, 35, false, 4, 'Phobos');
INSERT INTO public.moon VALUES (4, 67, false, 4, 'Deimos');
INSERT INTO public.moon VALUES (5, 456, false, 5, 'Europa');
INSERT INTO public.moon VALUES (6, 534, false, 5, 'Ganymede');
INSERT INTO public.moon VALUES (7, 243, false, 5, 'Io');
INSERT INTO public.moon VALUES (8, 434, false, 5, 'Callisto');
INSERT INTO public.moon VALUES (9, 343, false, 5, 'Cyllene');
INSERT INTO public.moon VALUES (10, 574, true, 5, 'Ghesta');
INSERT INTO public.moon VALUES (11, 675, false, 6, 'Titan');
INSERT INTO public.moon VALUES (12, 46, false, 6, 'Mimas');
INSERT INTO public.moon VALUES (13, 3478, true, 7, 'gsh');
INSERT INTO public.moon VALUES (14, 324, false, 7, 'Triton');
INSERT INTO public.moon VALUES (15, 234, true, 7, 'wferfw');
INSERT INTO public.moon VALUES (16, 345, false, 8, 'Titania');
INSERT INTO public.moon VALUES (17, 3567, false, 8, 'Oberon');
INSERT INTO public.moon VALUES (18, 1234, false, 8, 'Puck');
INSERT INTO public.moon VALUES (19, 8849, false, 8, 'ARIEL');
INSERT INTO public.moon VALUES (20, 63, true, 10, 'asudh');
INSERT INTO public.moon VALUES (21, 623, true, 12, 'The');
INSERT INTO public.moon VALUES (22, 456, true, 14, 'hiuahdi');


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.people VALUES (1, NULL, NULL, 'Jerry');
INSERT INTO public.people VALUES (2, NULL, NULL, 'Janice');
INSERT INTO public.people VALUES (3, NULL, NULL, 'FRED');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 5, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 13, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 7, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 140, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 117, false, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 50, true, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 51, true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', NULL, false, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri d', NULL, false, 2);
INSERT INTO public.planet VALUES (11, 'Gaia', 23, true, 3);
INSERT INTO public.planet VALUES (12, 'The Man', 450, false, 4);
INSERT INTO public.planet VALUES (13, 'Inception', 3, true, 5);
INSERT INTO public.planet VALUES (14, 'Hey There Delilah', 673, false, 7);
INSERT INTO public.planet VALUES (15, 'Black Betty', 999, true, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', NULL, 1, 1.39);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', false, 1, 4.22);
INSERT INTO public.star VALUES (3, 'UY Scuti', true, 1, 9459.00);
INSERT INTO public.star VALUES (4, 'GN-AND', true, 2, 20200000.50);
INSERT INTO public.star VALUES (5, 'r136a1', true, 4, 157000.00);
INSERT INTO public.star VALUES (7, 'HV-11423', true, 5, 200000.00);
INSERT INTO public.star VALUES (8, 'Bloody Loads', NULL, 6, 20000000.00);
INSERT INTO public.star VALUES (9, 'Big Betty', true, 7, 30000.00);
INSERT INTO public.star VALUES (10, 'Do not have a cow', false, 8, 4572938.00);
INSERT INTO public.star VALUES (6, 'Unavailable at this time', NULL, 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: people_person_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.people_person_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_name_of_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_of_galaxy_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: people people_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_key UNIQUE (name);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (people_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
